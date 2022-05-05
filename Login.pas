unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, DMDados;

type
  TfrmLogin = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtLogin: TEdit;
    edtSenha: TEdit;
    btnClickLogin: TButton;
    btn_Cancelar: TButton;
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
  DM_Dados.FDQueryUsuario.Open;
  if (DM_Dados.FDQueryUsuario.recordCount > 0) then
  begin
    {showmessage('acesso liberado');}//validação temporaria
  end
  else
  begin
    ModalResult := mrNone; // colocando para pode entrar no sistema
    showmessage('senha ou login incorreto');
  end;
end;

procedure TfrmLogin.btn_CancelarClick(Sender: TObject);
begin
  if MessageDlg('Desja sair do sistema ?', TMsgDlgType.mtConfirmation,
    [mbok, mbNo], 0) = mrok then
  begin
    Application.Terminate;
  end;
  Abort;
end;

end.
