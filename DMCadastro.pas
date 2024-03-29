unit DMCadastro;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DMDados;

type
  TDM_Cadastro = class(TDataModule)
    FDQueryGrupo: TFDQuery;
    FDQueryGrupoCODIGO: TIntegerField;
    FDQueryGrupoDESCRICAO: TStringField;
    FDQueryGrupoSECAO: TStringField;
    DT_Grupo: TDataSource;
    FDQuerySub_grupo: TFDQuery;
    DT_SubGrupo: TDataSource;
    FDQueryUnMedida: TFDQuery;
    FDQueryUnMedidaID: TIntegerField;
    FDQueryUnMedidaSIGLA_MEDIDA: TStringField;
    FDQueryUnMedidaDESCRICAO: TStringField;
    FDQueryUnMedidaFRACIONADO: TStringField;
    FDQueryUnMedidaFATOR_CONVERSAO: TFloatField;
    FDQueryUnMedidaTIPO_CONVERSAO: TStringField;
    FDQueryUnMedidaTIPO: TStringField;
    Dt_medida: TDataSource;
    FDQueryCores: TFDQuery;
    FDQueryCoresID: TIntegerField;
    FDQueryCoresDESCRICAO: TStringField;
    DT_Cores: TDataSource;
    FDQueryMarca: TFDQuery;
    FDQueryMarcaID: TIntegerField;
    FDQueryMarcaDESCRICAO: TStringField;
    DT_Marca: TDataSource;
    FDQueryCondi��o_pagamento: TFDQuery;
    FDQueryCondi��o_pagamentoCODIGO: TIntegerField;
    FDQueryCondi��o_pagamentoNOME: TStringField;
    FDQueryCondi��o_pagamentoDESCONTO_VISTA: TFloatField;
    FDQueryCondi��o_pagamentoBLOQUEAR: TStringField;
    Dt_Condicao_pagamento: TDataSource;
    FDQueryCliente: TFDQuery;
    DT_cliente: TDataSource;
    FDQueryTipoPgto: TFDQuery;
    DT_Tipo_Pgto: TDataSource;
    FDQueryTipoPgtoID: TIntegerField;
    FDQueryTipoPgtoDESCRICAO: TStringField;
    FDQueryConta: TFDQuery;
    FDQuerySubConta: TFDQuery;
    DT_Conta: TDataSource;
    DT_SubConta: TDataSource;
    FDQueryContaCODIGO: TIntegerField;
    FDQueryContaDESCRICAO: TStringField;
    FDQueryContaBLOQUEADA: TStringField;
    FDQuerySubContaCODIGO_SUB: TIntegerField;
    FDQuerySubContaDESCRICAO: TStringField;
    FDQuerySubContaBLOQUEADA: TStringField;
    FDQuerySub_grupoCODIGO_GRUPO: TIntegerField;
    FDQuerySub_grupoDESCRICAO: TStringField;
    FDQuerySub_grupoUNIDADE_MEDIDA: TStringField;
    FDQuerySub_grupoUNIDADE_CONSUMO: TStringField;
    FDQueryTIPO_CONTA: TFDQuery;
    DataSourcetIPO_CONTA: TDataSource;
    FDQuerySubContaTIPO: TStringField;
    FDQueryContaTIPO: TStringField;
    FDQueryContaTIPO_CONTA: TStringField;
    FDQueryProduto: TFDQuery;
    DT_produto: TDataSource;
    FDQueryProdutoCODIGO: TFDAutoIncField;
    FDQueryProdutoPRODUTO: TStringField;
    FDQueryProdutoUN_MEDIDA: TStringField;
    FDQueryProdutoPRECO_CUSTO: TBCDField;
    FDQueryProdutoPRECO_VENDA: TBCDField;
    FDQueryProdutoSITUACAO: TStringField;
    FDQueryProdutoOBS: TStringField;
    FDQueryProdutoDATACAD: TSQLTimeStampField;
    FDQueryProdutoDATAVENDA: TSQLTimeStampField;
    FDQueryProdutoCOR: TStringField;
    FDQueryProdutoFOTO: TStringField;
    FDQueryProdutoMARCA: TStringField;
    FDQueryProdutoPRECENTO_LUCRO: TCurrencyField;
    FDQueryProdutoPRECO_PRAZO_CUSTO: TBCDField;
    FDQueryProdutoPRECO_PRAZO_VENDA: TBCDField;
    FDQueryProdutoPRECENTO_PRAZO_LUCRO: TCurrencyField;
    FDQueryProdutoQUANTIDADE_SAIDA: TIntegerField;
    FDQueryProdutoID_GRUPO: TIntegerField;
    FDQueryProdutoID_SUBGRUPO: TIntegerField;
    FDQueryProdutoQUANTIDADE_ENTRADA: TIntegerField;
    FDQueryProdutoQUANTIDADE_ATUAL: TIntegerField;
    FDQueryClienteCODIGO: TIntegerField;
    FDQueryClienteTELEFONE: TStringField;
    FDQueryClienteCPF: TStringField;
    FDQueryClienteEMAIL: TStringField;
    FDQueryClienteNOME: TStringField;
    FDQueryClienteDESCRICAO: TStringField;
    FDQueryClienteRUA: TStringField;
    FDQueryClienteNUMERO: TStringField;
    FDQueryClienteUF_ID: TIntegerField;
    FDQueryClienteCIDADE_ID: TIntegerField;
    FDQueryClienteBAIRRO: TStringField;
    FDQueryProdutoQTE_MINIMA: TIntegerField;
    FDQueryCondi��o_pagamentoTIPO_PAGAMENTO: TStringField;
    FDQueryLocalProd: TFDQuery;
    DT_LocalProd: TDataSource;
    FDQueryLocalProdCODIGO: TIntegerField;
    FDQueryLocalProdLOCAL: TStringField;
    FDQueryProdutoCOD_LOCAL: TIntegerField;
    FDQueryProdutoNUM_LOCAL: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Cadastro: TDM_Cadastro;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
