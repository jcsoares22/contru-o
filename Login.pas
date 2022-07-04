unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DMDados, Principal,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TfrmLogin = class(TForm)
    btn_Cancelar: TButton;
    btnClickLogin: TButton;
    edtLogin: TEdit;
    edtSenha: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure btnClickLoginClick(Sender: TObject);
    procedure btn_CancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure lerRegistro;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses Preferencia, Criptografia, ConfigBanco, Registry;

procedure TfrmLogin.btnClickLoginClick(Sender: TObject);

begin
  DM_Dados.FDQueryUsuario.Close;
  DM_Dados.FDQueryUsuario.Params.Clear;
  DM_Dados.FDQueryUsuario.SQL.Add('');
  DM_Dados.FDQueryUsuario.SQL.Clear;
  DM_Dados.FDQueryUsuario.SQL.Add('select * from USUARIO');
  DM_Dados.FDQueryUsuario.SQL.Add
    ('WHERE USU_LOGIN =:nome and  USU_SENHA =:senha');
  DM_Dados.FDQueryUsuario.ParamByName('nome').AsString := edtLogin.Text;
  DM_Dados.FDQueryUsuario.ParamByName('senha').AsString := edtSenha.Text;

  {
    DM_Dados.FDQueryUsuario.First;
    while not DM_Dados.FDQueryUsuario.eof do
    begin
    if edtSenha = Criptografia('D', DM_Dados.FDQueryUsuario.FieldByName('USU_SENHA').AsAnsiString) then
    begin
    Break
    end;
    DM_Dados.FDQueryUsuario.next;
    end; }
  DM_Dados.FDQueryUsuario.Open;
  DM_Dados.FDQueryPreferencia.Open();
  if (DM_Dados.FDQueryUsuario.recordCount > 0) then
  begin
    frmPrincipal.StatusBar1.Panels[0].Text := 'Empresa: ' +
      DM_Dados.FDQueryPreferenciaNOME.AsString; //
    frmPrincipal.StatusBar1.Panels[1].Text :=
      DM_Dados.FDQueryUsuarioUSU_NOME.AsString;
    // TODO  verificar como colocar o nome da empresa
  end
  else
  begin
    ModalResult := mrNone; // colocando para pode entrar no sistema
    showmessage('Senha ou login incorreto');
  end;

end;

procedure TfrmLogin.btn_CancelarClick(Sender: TObject);
begin

  Application.Terminate;

end;

procedure TfrmLogin.FormCreate(Sender: TObject);
var
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    Reg.RootKey := HKEY_CURRENT_USER;
    if Reg.KeyExists('SYSTEC\Conexao') then
    begin
      Reg.OpenKey('SYSTEC\Conexao', false);
      if Reg.ValueExists('Dados') then
      begin
        frmConfiguraBanco.edtConfiguraBanco.Text := Reg.ReadString('Dados');
        // ShowMessage(frmConfiguraBanco.edtConfiguraBanco.Text);
       // lerRegistro;
      end;
    end
    else
    begin
      if frmConfiguraBanco.edtConfiguraBanco.Text = '' then
      begin
        frmConfiguraBanco := TFrmConfiguraBanco.Create(self);
        try
          frmConfiguraBanco.showModal;
        finally
          FreeAndNil(frmConfiguraBanco);
        end;
      end;
      // FreeAndNil(frmConfiguraBanco);

    end;
  finally
    FreeAndNil(frmConfiguraBanco);

  end;
end;

procedure TfrmLogin.lerRegistro;
var
  Reg: TRegistry;
  Caminho: String;
begin
  // cria o objeto TRegistry
  Reg := TRegistry.Create;
  Reg.Access := KEY_READ;
  // conecta ao root diferente do padr�o
  Reg.RootKey := HKEY_LOCAL_MACHINE;
  try
    // se o path nao existir chama o form que configura o path  "Config_DB"
    if not Reg.KeyExists('SYSTEC\Conexao') then
    begin

      // le o caminho
      Reg.OpenkeyReadOnly('SYSTEC\Conexao');
      Caminho := Reg.ReadString('Dados');
      Reg.closekey;

      // informa ao DB dentro do DataModule o caminho

      // DM_Dados.DADOS.AllowStreamedConnected := false;
      DM_Dados.DADOS.connected := false;
      DM_Dados.DADOS.Params.Database := Caminho;
      DM_Dados.DADOS.Params.Add('User_Name=SYSDBA');
      DM_Dados.DADOS.Params.Add('Password=pmpsyfwr');
      DM_Dados.DADOS.connected := true;

    end;
  finally
    Reg.Free;

    { DM_Dados.DADOS.Active          := true;
      DM_Dados.DADOS.Active         := true;
    }
  end;
end;

end.
