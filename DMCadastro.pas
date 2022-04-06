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
    FDQueryCondição_pagamento: TFDQuery;
    FDQueryCondição_pagamentoCODIGO: TIntegerField;
    FDQueryCondição_pagamentoNOME: TStringField;
    FDQueryCondição_pagamentoDESCONTO_VISTA: TFloatField;
    FDQueryCondição_pagamentoBLOQUEAR: TStringField;
    Dt_Condicao_pagamento: TDataSource;
    FDQueryProduto: TFDQuery;
    DT_Produto: TDataSource;
    FDQueryCliente: TFDQuery;
    FDQueryClienteCODIGO: TIntegerField;
    FDQueryClienteNOME: TStringField;
    FDQueryClienteTELEFONE: TStringField;
    FDQueryClienteCPF: TStringField;
    FDQueryClienteEMAIL: TStringField;
    FDQueryClienteDESCRICAO: TStringField;
    FDQueryClienteRUA: TStringField;
    FDQueryClienteNUMERO: TStringField;
    DT_cliente: TDataSource;
    FDQueryTipoPgto: TFDQuery;
    DT_Tipo_Pgto: TDataSource;
    FDQueryTipoPgtoID: TIntegerField;
    FDQueryTipoPgtoDESCRICAO: TStringField;
    FDQueryClienteUF_ID: TIntegerField;
    FDQueryClienteCIDADE_ID: TIntegerField;
    FDQueryConta: TFDQuery;
    FDQuerySubConta: TFDQuery;
    DT_Conta: TDataSource;
    DT_SubConta: TDataSource;
    FDQueryContaCODIGO: TIntegerField;
    FDQueryContaDESCRICAO: TStringField;
    FDQueryContaBLOQUEADA: TStringField;
    FDQuerySubContaCODIGO_SUB: TIntegerField;
    FDQuerySubContaTIPO: TStringField;
    FDQuerySubContaDESCRICAO: TStringField;
    FDQuerySubContaBLOQUEADA: TStringField;
    FDQuerySub_grupoCODIGO_GRUPO: TIntegerField;
    FDQuerySub_grupoDESCRICAO: TStringField;
    FDQuerySub_grupoUNIDADE_MEDIDA: TStringField;
    FDQuerySub_grupoUNIDADE_CONSUMO: TStringField;
    FDQueryProdutoCODIGO: TIntegerField;
    FDQueryProdutoPRODUTO: TStringField;
    FDQueryProdutoUN_MEDIDA: TStringField;
    FDQueryProdutoPRECO_CUSTO: TFMTBCDField;
    FDQueryProdutoPRECO_VENDA: TFMTBCDField;
    FDQueryProdutoSITUACAO: TStringField;
    FDQueryProdutoOBS: TStringField;
    FDQueryProdutoDATACAD: TSQLTimeStampField;
    FDQueryProdutoDATAVENDA: TSQLTimeStampField;
    FDQueryProdutoCOR: TStringField;
    FDQueryProdutoFOTO: TStringField;
    FDQueryProdutoMARCA: TStringField;
    FDQueryProdutoBAIRRO: TStringField;
    FDQueryProdutoPRECENTO_LUCRO: TCurrencyField;
    FDQueryProdutoPRECO_PRAZO_CUSTO: TFMTBCDField;
    FDQueryProdutoPRECO_PRAZO_VENDA: TFMTBCDField;
    FDQueryProdutoPRECENTO_PRAZO_LUCRO: TCurrencyField;
    FDQueryProdutoID_GRUPO: TIntegerField;
    FDQueryProdutoID_SUBGRUPO: TIntegerField;
    FDQueryProdutoQUANTIDADE_ENTRADA: TIntegerField;
    FDQueryProdutoQUANTIDADE_ATUAL: TIntegerField;
    FDQueryProdutoQUANTIDADE_SAIDA: TIntegerField;
    FDQueryClienteBAIRRO: TStringField;
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
