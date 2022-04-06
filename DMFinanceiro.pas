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
    FDQueryFinanceiroID_VENDA: TIntegerField;
    FDQueryFinanceiroNUN_PARCELA: TIntegerField;
    FDQueryFinanceiroVLR_PARC: TFMTBCDField;
    FDQueryFinanceiroDATA_VENC: TSQLTimeStampField;
    FDQueryFinanceiroDATA_PGTO: TSQLTimeStampField;
    FDQueryFinanceiroJUROS: TFMTBCDField;
    FDQueryFinanceiroDESCONTO: TFMTBCDField;
    FDQueryFinanceiroVLR_PGTO: TFMTBCDField;
    FDQueryFinanceiroPARC_SALDO: TFMTBCDField;
    FDQueryFinanceiroCOD_BANCO: TStringField;
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
    USES  DMDados, DMCadastrO, DMVendas;
end.
