unit loginVendasDesc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, LoginMenu, Vcl.StdCtrls;

type
  TfrmLoginDescVenda = class(TfrmLoginMenu)
    procedure btnClickLoginClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    descontoUsuario: Currency end;

  var
    frmLoginDescVenda: TfrmLoginDescVenda;

implementation

{$R *.dfm}

uses DMDados, Preferencia, CadastroVendas, DMVendas;

procedure TfrmLoginDescVenda.btnClickLoginClick(Sender: TObject);
var
  desconto: Currency;
  soma: Currency;
  percentoVenda: Currency;
begin
  // inherited;
  try
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
      if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue >
        DM_Dados.FDQueryUsuarioDESCONTO_VENDA_USU.CurValue then
      begin
        ShowMessage('Limte utrapassou o Percentual de desconto do usuario, de '
          + FloatToStr(DM_Dados.FDQueryUsuarioDESCONTO_VENDA_USU.Value) + '%');
        CadastroVendas.frmCadastroVendas.DBE_Desconto.Clear;
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
        CadastroVendas.frmCadastroVendas.DBE_Desconto.SetFocus;

      end
      else
      begin
        desconto := DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue;
        DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value :=
          (CadastroVendas.frmCadastroVendas.soma -
          (CadastroVendas.frmCadastroVendas.soma * desconto) / 100);
        descontoUsuario := DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value;

      end;
    end
    else
    begin
      ModalResult := mrNone; // colocando para pode entrar no sistema
      ShowMessage('Usuário sem permissão para dar deconto em venda!');
      CadastroVendas.frmCadastroVendas.DBE_Desconto.Clear;
      DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
    end;
  Except
    on E: Exception do
    begin
      ShowMessage('Limte utrapassou o Percentual de desconto do usuario, de ' +
        FloatToStr(DM_Dados.FDQueryUsuarioDESCONTO_VENDA_USU.Value) + '%');
      // ShowMessage('Algum item sem quantidade ou sem valor na venda'+ E);
    end;

  end;
end;

end.
