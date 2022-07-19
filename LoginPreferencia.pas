unit LoginPreferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLoginPreferencia = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtSenha: TEdit;
    edtLogin: TEdit;
    btnLogin: TButton;
    btnCancelar: TButton;
    ListBox1: TListBox;
    procedure btnLoginClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginPreferencia: TfrmLoginPreferencia;

implementation

{$R *.dfm}

uses DMDados, Preferencia, CadastroUsuarios;

procedure TfrmLoginPreferencia.btnLoginClick(Sender: TObject);

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
  if (DM_Dados.FDQueryUsuario.recordCount > 0) and
    (DM_Dados.FDQueryUsuarioPREFERENCIA.Value = 'T') then
  begin
    frmPreferencia := TFrmPreferencia.Create(self);
    try
      frmPreferencia.showModal;
    finally
      FreeAndNil(frmPreferencia);
    end;
  end
else
begin
  ModalResult := mrNone; // colocando para pode entrar no sistema
  showmessage('Usuário sem permissão de editar preferencias!');
end;
end;

procedure TfrmLoginPreferencia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //frmLoginPreferencia.CloseModal;
end;

end.
