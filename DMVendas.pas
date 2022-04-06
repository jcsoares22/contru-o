unit DMVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs;

type
  TDM_Vendas = class(TDataModule)
    FDQuerySaida_Venda: TFDQuery;
    FDQuerySaida_VendaCODIGO: TIntegerField;
    FDQuerySaida_VendaCODCLIENTE: TIntegerField;
    FDQuerySaida_VendaDATAVENDA: TSQLTimeStampField;
    FDQuerySaida_VendaVALORTOTAL: TFMTBCDField;
    FDQuerySaida_VendaOBS: TStringField;
    FDQuerySaida_VendaNOME: TStringField;
    FDQuerySaida_VendaFRETE: TFMTBCDField;
    FDQuerySaida_VendaCOND_PAGAMENTO: TStringField;
    FDQuerySaidaProduto: TFDQuery;
    FDQuerySaidaProdutoCODIGO: TIntegerField;
    FDQuerySaidaProdutoCODPRODUTO: TIntegerField;
    FDQuerySaidaProdutoNOME_PRODUTO: TStringField;
    FDQuerySaidaProdutoVALORTOTAL: TFMTBCDField;
    DT_Saida_Venda: TDataSource;
    DT_SaidaProduto: TDataSource;
    FDQuerySaidaProdutoVALORPRODUTO: TFMTBCDField;
    FDQuerySaida_VendaID_CONTA: TIntegerField;
    FDQuerySaida_VendaID_SUBCONTA: TIntegerField;
    FDQuerySaidaProdutoQTE_ESTOQUE: TFloatField;
    FDQuerySaida_VendaID_TIPO_PGTO: TIntegerField;
    FDQuerySaidaProdutoQUANTIDADE: TIntegerField;
    FDQuerySaida_VendaDESCONTO: TFMTBCDField;
    FDQuerySaida_VendaTIPO_DESC: TStringField;
    procedure FDQuerySaidaProdutoAfterPost(DataSet: TDataSet);
    procedure FDQuerySaidaProdutoCODPRODUTOValidate(Sender: TField);
    procedure FDQuerySaidaProdutoQUANTIDADEValidate(Sender: TField);
    procedure FDQuerySaidaProdutoQUANTIDADESetText(Sender: TField;
      const Text: string);
    procedure FDQuerySaidaProdutoQUANTIDADEChange(Sender: TField);
    procedure FDQuerySaidaProdutoAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Vendas: TDM_Vendas;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

USES DMDados, DMCadastrO, CadastroVendas;

procedure TDM_Vendas.FDQuerySaidaProdutoAfterDelete(DataSet: TDataSet);
begin
  DM_Cadastro.FDQueryProduto.Open();
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value :=
    (DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value +
    DM_Vendas.FDQuerySaidaProdutoQUANTIDADE.Value);
end;

procedure TDM_Vendas.FDQuerySaidaProdutoAfterPost(DataSet: TDataSet);
begin
  // depois que salva ele a da baixa no estoque
  DM_Cadastro.FDQueryProduto.Open();
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value :=
    (DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value -
    DM_Vendas.FDQuerySaidaProdutoQUANTIDADE.Value);
end;

procedure TDM_Vendas.FDQuerySaidaProdutoCODPRODUTOValidate(Sender: TField);
begin
  DM_Vendas.FDQuerySaidaProdutoVALORPRODUTO :=
    DM_Cadastro.FDQueryProdutoPRECO_VENDA;
end;

procedure TDM_Vendas.FDQuerySaidaProdutoQUANTIDADEChange(Sender: TField);
begin
  if FDQuerySaidaProdutoQUANTIDADE.Value < 1 then
  begin
    ShowMessage
      ('Quantidade inferior ao permitido, sera adiconado a quantidade de 1 no produto o minimo permitido');
    FDQuerySaidaProdutoQUANTIDADE.Value := 1;
  end
  else
  FDQuerySaidaProdutoVALORTOTAL.Value := FDQuerySaidaProdutoVALORPRODUTO.Value *
    FDQuerySaidaProdutoQUANTIDADE.Value;

end;

procedure TDM_Vendas.FDQuerySaidaProdutoQUANTIDADESetText(Sender: TField;
  const Text: string);
begin
  FDQuerySaidaProdutoVALORTOTAL.Value := FDQuerySaidaProdutoQUANTIDADE.Value *
    FDQuerySaidaProdutoVALORPRODUTO.Value;
end;

procedure TDM_Vendas.FDQuerySaidaProdutoQUANTIDADEValidate(Sender: TField);
var
  nun: Integer;
begin
  nun := 1;
  if FDQuerySaidaProdutoQUANTIDADE.Value < 1 then
  begin
    ShowMessage('Quantidade negativa, coloque um valor valido');
  end
  else
    FDQuerySaidaProduto.Edit;
  FDQuerySaida_Venda.Edit;
  { FDQuerySaidaProdutoVALORTOTAL.Value := FDQuerySaidaProdutoQUANTIDADE.Value *
    FDQuerySaidaProdutoVALORPRODUTO.Value; }
  FDQuerySaidaProdutoVALORTOTAL.Value := FDQuerySaidaProdutoQUANTIDADE.Value *
    FDQuerySaidaProdutoVALORPRODUTO.Value;
end;

end.
