unit LoginMenu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmLoginMenu = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    edtSenha: TEdit;
    edtLogin: TEdit;
    btnClickLogin: TButton;
    btn_Cancelar: TButton;
    procedure btnClickLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginMenu: TfrmLoginMenu;

implementation

{$R *.dfm}

USES DMDADOS, CadastroUsuarios;

procedure TfrmLoginMenu.btnClickLoginClick(Sender: TObject);
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
    (DM_Dados.FDQueryUsuarioCAD_USU.Value <> 'F') then
  begin
    DM_Dados.FDQueryUsuario.Close;
    frmCadastroUsuario := TFrmCadastroUsuario.Create(self);
    try
      frmCadastroUsuario.ShowModal;
    finally
      FreeAndNil(frmCadastroUsuario);

    end
  end
  else
  begin
    ModalResult := mrNone; // colocando para pode entrar no sistema
    showmessage('Você precisa de permissão para editar o cadastro de usuário!');
  end;
end;

end.
