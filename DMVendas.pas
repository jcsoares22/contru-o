
unit DMVendas;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Dialogs, System.Types, math;

type
  TDM_Vendas = class(TDataModule)
    FDQuerySaida_Venda: TFDQuery;
    DT_Saida_Venda: TDataSource;
    FDTransaction2: TFDTransaction;
    FDQueryOrcamento: TFDQuery;
    DtOrcamento: TDataSource;
    FDQueryOrcamentoCODIGO: TFDAutoIncField;
    FDQueryOrcamentoCODCLIENTE: TIntegerField;
    FDQueryOrcamentoDATAVENDA: TSQLTimeStampField;
    FDQueryOrcamentoVALORTOTAL: TBCDField;
    FDQueryOrcamentoOBS: TStringField;
    FDQueryOrcamentoNOME: TStringField;
    FDQueryOrcamentoFRETE: TBCDField;
    FDQueryOrcamentoCOND_PAGAMENTO: TStringField;
    FDQueryOrcamentoID_CONTA: TIntegerField;
    FDQueryOrcamentoID_SUBCONTA: TIntegerField;
    FDQueryOrcamentoID_TIPO_PGTO: TIntegerField;
    FDQueryOrcamentoDESCONTO: TBCDField;
    FDQueryOrcamentoTIPO_DESC: TStringField;
    FDQueryOrcamentoSITUACAO: TStringField;
    FDQueryOrcamentoDATA_FATURAMENTO: TSQLTimeStampField;
    FDQueryOrcamentoDATA_CANCELAMENTO: TSQLTimeStampField;
    FDQueryOrcamentoDATA_ORCAMENTO: TSQLTimeStampField;
    FDQuerySaida_VendaCODIGO: TFDAutoIncField;
    FDQuerySaida_VendaCODCLIENTE: TIntegerField;
    FDQuerySaida_VendaDATAVENDA: TSQLTimeStampField;
    FDQuerySaida_VendaVALORTOTAL: TBCDField;
    FDQuerySaida_VendaOBS: TStringField;
    FDQuerySaida_VendaNOME: TStringField;
    FDQuerySaida_VendaFRETE: TBCDField;
    FDQuerySaida_VendaCOND_PAGAMENTO: TStringField;
    FDQuerySaida_VendaID_CONTA: TIntegerField;
    FDQuerySaida_VendaID_SUBCONTA: TIntegerField;
    FDQuerySaida_VendaID_TIPO_PGTO: TIntegerField;
    FDQuerySaida_VendaDESCONTO: TBCDField;
    FDQuerySaida_VendaTIPO_DESC: TStringField;
    FDQuerySaida_VendaSITUACAO: TStringField;
    FDQuerySaida_VendaDATA_FATURAMENTO: TSQLTimeStampField;
    FDQuerySaida_VendaDATA_CANCELAMENTO: TSQLTimeStampField;
    FDQuerySaida_VendaDATA_ORCAMENTO: TSQLTimeStampField;
    FDQuerySaida_VendaUSU_NOME: TStringField;
    FDQuerySaidaProduto: TFDQuery;
    DTProduto: TDataSource;
    FDQuerySaidaProdutoCODIGO: TIntegerField;
    FDQuerySaidaProdutoQUANTIDADE: TIntegerField;
    FDQuerySaidaProdutoVALORTOTAL: TBCDField;
    FDQuerySaidaProdutoNOME_PRODUTO: TStringField;
    FDQuerySaidaProdutoCODPRODUTO: TIntegerField;
    FDQuerySaidaProdutoQTE_ESTOQUE: TFloatField;
    FDQuerySaida_VendaPARCELA: TIntegerField;
    FDQuerySaida_VendaDIAS_ENTRE_PARCELAS: TIntegerField;
    FDQuerySaidaProdutoVALORPRODUTO: TBCDField;
    FDQuerySaida_VendaVALOR_PERC_DESCONTO: TFMTBCDField;
    procedure FDQuerySaidaProdutoAfterPost(DataSet: TDataSet);
    procedure FDQuerySaidaProdutoCODPRODUTOValidate(Sender: TField);
    procedure FDQuerySaidaProdutoQUANTIDADESetText(Sender: TField;
      const Text: string);
    procedure FDQuerySaidaProdutoAfterDelete(DataSet: TDataSet);
    procedure FDQuerySaida_VendaBeforePost(DataSet: TDataSet);
    procedure FDQuerySaidaProdutoQUANTIDADEValidate(Sender: TField);

    procedure FDQuerySaidaProdutoVALORPRODUTOValidate(Sender: TField);
    procedure FDQuerySaidaProdutoAfterScroll(DataSet: TDataSet);
    procedure FDQuerySaidaProdutoBeforePost(DataSet: TDataSet);
    procedure FDQuerySaidaProdutoNewRecord(DataSet: TDataSet);
    procedure FDQuerySaida_VendaVALORTOTALChange(Sender: TField);
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

USES DMDados, DMCadastrO, CadastroVendas, DMFinanceiro;

procedure TDM_Vendas.FDQuerySaidaProdutoAfterDelete(DataSet: TDataSet);
begin
  { DM_Cadastro.FDQueryProduto.Open();
    DM_Cadastro.FDQueryProduto.Edit;
    DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value :=
    (DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value +
    DM_Vendas.FDQuerySaidaProdutoQUANTIDADE.Value); }
end;

procedure TDM_Vendas.FDQuerySaidaProdutoAfterPost(DataSet: TDataSet);
begin
  // depois que salva ele a da baixa no estoque

end;

procedure TDM_Vendas.FDQuerySaidaProdutoAfterScroll(DataSet: TDataSet);
begin
  FDQuerySaidaProduto.close;
  FDQuerySaidaProduto.Params.Clear;
  FDQuerySaidaProduto.SQL.Add('');
  FDQuerySaidaProduto.SQL.Add('select * from SAIDA_PRODUTO');
  FDQuerySaidaProduto.SQL.Add('where SAIDA_PRODUTO.CODIGO = :CODIGO');
  FDQuerySaidaProduto.Open();
end;

procedure TDM_Vendas.FDQuerySaidaProdutoBeforePost(DataSet: TDataSet);
begin
  DM_Cadastro.FDQueryProduto.Open();
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value :=
    (DM_Cadastro.FDQueryProdutoQUANTIDADE_ATUAL.Value -
    DM_Vendas.FDQuerySaidaProdutoQUANTIDADE.Value);
end;

procedure TDM_Vendas.FDQuerySaidaProdutoCODPRODUTOValidate(Sender: TField);
begin
  { DM_Vendas.FDQuerySaidaProdutoVALORPRODUTO :=
    DM_Cadastro.FDQueryProdutoPRECO_VENDA; }
end;

procedure TDM_Vendas.FDQuerySaidaProdutoNewRecord(DataSet: TDataSet);
begin
  FDQuerySaidaProdutoCODIGO.Value := FDQuerySaida_VendaCODIGO.Value;
end;

procedure TDM_Vendas.FDQuerySaidaProdutoQUANTIDADESetText(Sender: TField;
  const Text: string);
begin
  { FDQuerySaidaProdutoVALORTOTAL.Value := FDQuerySaidaProdutoQUANTIDADE.Value *
    FDQuerySaidaProdutoVALORPRODUTO.Value; }
end;

procedure TDM_Vendas.FDQuerySaidaProdutoQUANTIDADEValidate(Sender: TField);
begin
  while FDQuerySaidaProdutoQUANTIDADE.Value < 1 do
  begin
    ShowMessage
      ('Quantidade negativa informe um valor Valido, sera adiconado a quantia de 1');
    FDQuerySaidaProdutoQUANTIDADE.Value := 1;
  end;
  FDQuerySaidaProdutoVALORTOTAL.AsFloat :=
      FDQuerySaidaProdutoVALORPRODUTO.AsFloat *
          FDQuerySaidaProdutoQUANTIDADE.AsFloat;

end;

procedure TDM_Vendas.FDQuerySaidaProdutoVALORPRODUTOValidate(Sender: TField);
begin // verificar uma validação para procurar o preço de acordo com o tipo avista ou a prazo
  { if  FDQuerySaida_VendaCOND_PAGAMENTO.IsNull then
    begin
    ShowMessage('Informe a condição de pagamento')
    end;
    if  FDQuerySaida_VendaCOND_PAGAMENTO.Value = FDQuerySaida_Venda.Fields[0].AsString then
    begin
    FDQuerySaida_VendaCOND_PAGAMENTO.LookupDataSet. := 'DM_Cadastro.FDQueryProduto';
    FDQuerySaida_VendaCOND_PAGAMENTO.LookupKeyFields :=  'codigo';
    FDQuerySaida_VendaCOND_PAGAMENTO.LookupResultField := 'PRECO_VENDA';
    FDQuerySaida_VendaCOND_PAGAMENTO.KeyFields :=  'VALORPRODUTO';
    FDQuerySaida_VendaCOND_PAGAMENTO.FieldKind := fkLookup;
    end; }

end;

procedure TDM_Vendas.FDQuerySaida_VendaBeforePost(DataSet: TDataSet);
begin // validação do tipo de pagamento
  if FDQuerySaida_VendaDATA_FATURAMENTO.IsNull and
    (FDQuerySaida_VendaSITUACAO.AsAnsiString = 'FATURADO') then
  begin
    FDQuerySaida_VendaDATA_FATURAMENTO.AsDateTime := date;
    FDQuerySaida_VendaDATA_CANCELAMENTO.Clear;
  end;
  if FDQuerySaida_VendaDATA_CANCELAMENTO.IsNull and
    (FDQuerySaida_VendaSITUACAO.AsAnsiString = 'CANCELADO') then
  begin
    FDQuerySaida_VendaDATA_CANCELAMENTO.AsDateTime := date;
    FDQuerySaida_VendaDATA_FATURAMENTO.Clear;
  end;
  if FDQuerySaida_VendaDATA_ORCAMENTO.IsNull and
    (FDQuerySaida_VendaSITUACAO.AsAnsiString = 'ORCAMENTO') then
  begin
    FDQuerySaida_VendaDATA_FATURAMENTO.Clear;
    FDQuerySaida_VendaDATA_CANCELAMENTO.Clear;
    FDQuerySaida_VendaDATA_ORCAMENTO.AsDateTime := date;

  end;

end;

procedure TDM_Vendas.FDQuerySaida_VendaVALORTOTALChange(Sender: TField);
Var
  k: Integer;
  wData: TDate;
  wValorTotal: Double;
begin
  wData := date;
  wValorTotal := FDQuerySaida_VendaVALORTOTAL.Value;
  if (FDQuerySaida_VendaPARCELA.Value > 0) and
    (FDQuerySaida_VendaVALORTOTAL.Value > 0) and
    (FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value > 0) then
  begin
    for k := 1 to FDQuerySaida_VendaPARCELA.Value do
    begin
      if not DM_Finaceiro.FDQueryFinanceiro.Locate('SEQ_PARCELA', k, []) then
      begin
        DM_Finaceiro.FDQueryFinanceiro.Append;
        DM_Finaceiro.FDQueryFinanceiro.FieldByName('SEQ_PARCELA')
          .AsInteger := k;
      end
      else
        DM_Finaceiro.FDQueryFinanceiro.Edit;
      wData := wData + FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value;
      DM_Finaceiro.FDQueryFinanceiroDATA_VENC.AsDateTime := wData;
      DM_Finaceiro.FDQueryFinanceiroVLR_PARC.AsCurrency :=
        FDQuerySaida_VendaVALORTOTAL.Value /
        FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value;
      DM_Finaceiro.FDQueryFinanceiro.Post;

      wValorTotal := wValorTotal - DM_Finaceiro.FDQueryFinanceiroVLR_PARC.Value;
    end;

    DM_Finaceiro.FDQueryFinanceiro.Last;
    while DM_Finaceiro.FDQueryFinanceiroSEQ_PARCELA.AsInteger >
      FDQuerySaida_VendaPARCELA.Value do
      DM_Finaceiro.FDQueryFinanceiro.Delete;
    if CompareValue(wValorTotal, 0.00, 0.001) <> EqualsValue then
    begin
      DM_Finaceiro.FDQueryFinanceiro.Edit;
      DM_Finaceiro.FDQueryFinanceiroVLR_PARC.AsCurrency :=
        DM_Finaceiro.FDQueryFinanceiroVLR_PARC.AsCurrency + wValorTotal;
      DM_Finaceiro.FDQueryFinanceiro.Post;
    end;
    DM_Finaceiro.FDQueryFinanceiro.First;
  end;
end;

end.
