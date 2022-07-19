unit loginVendasDesc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LoginMenu, Vcl.StdCtrls;

type
  TfrmLoginDescVenda = class(TfrmLoginMenu)
    procedure btnClickLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoginDescVenda: TfrmLoginDescVenda;

implementation

{$R *.dfm}

uses DMDados, Preferencia, CadastroVendas;

procedure TfrmLoginDescVenda.btnClickLoginClick(Sender: TObject);
begin
 // inherited;
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
    (DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Value = 'T') then
  begin
    CadastroVendas.frmCadastroVendas.percento := strtocurr(CadastroVendas.frmCadastroVendas.DBE_Desconto.Text);
  end
  else

begin
  ModalResult := mrNone; // colocando para pode entrar no sistema
  showmessage('Usuário sem permissão para dar desconto maior do que o perminitodo nas preferencisas.');
end;
end;

end.
