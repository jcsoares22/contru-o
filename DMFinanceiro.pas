unit DMFinanceiro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Finaceiro = class(TDataModule)
    FDQueryFinanceiro: TFDQuery;
    DT_Financeiro: TDataSource;
    FDQueryFinanceiroCODIGO: TIntegerField;
    FDQueryFinanceiroSEQ_PARCELA: TIntegerField;
    FDQueryFinanceiroVLR_PARC: TBCDField;
    FDQueryFinanceiroDATA_VENC: TSQLTimeStampField;
    FDQueryFinanceiroDATA_PGTO: TSQLTimeStampField;
    FDQueryFinanceiroVLR_PGTO: TBCDField;
    FDQueryFinanceiroTIPO: TStringField;
    procedure FDQueryFinanceiroNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Finaceiro: TDM_Finaceiro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

USES DMDados, DMCadastrO, DMVendas;

procedure TDM_Finaceiro.FDQueryFinanceiroNewRecord(DataSet: TDataSet);
begin
  DM_Vendas.FDQuerySaida_Venda.Open();
  FDQueryFinanceiroCODIGO.Value := DM_Vendas.FDQuerySaida_VendaCODIGO.Value;
end;

end.
