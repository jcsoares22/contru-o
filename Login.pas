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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

uses Preferencia, Criptografia;

procedure TfrmLogin.btnClickLoginClick(Sender: TObject);
var
  nomeEmpres: string;
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
  DM_Dados.FDQueryUsuario.Open;
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

  if (DM_Dados.FDQueryUsuario.recordCount > 0) then
  begin
    frmPrincipal.StatusBar1.Panels[0].Text := 'Emp ' + nomeEmpres; //
    frmPrincipal.StatusBar1.Panels[1].Text :=
      DM_Dados.FDQueryUsuarioUSU_NOME.AsString;
    // TODO  verificar como colocar o nome da empresa
  end
  else
  begin
    ModalResult := mrNone; // colocando para pode entrar no sistema
    showmessage('senha ou login incorreto');
  end;
end;

procedure TfrmLogin.btn_CancelarClick(Sender: TObject);
begin

  Application.Terminate;

end;

end.
