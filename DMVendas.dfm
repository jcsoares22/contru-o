object DM_Vendas: TDM_Vendas
  OldCreateOrder = False
  Height = 623
  Width = 1204
  object FDQuerySaida_Venda: TFDQuery
    BeforePost = FDQuerySaida_VendaBeforePost
    Connection = DM_Dados.DADOS
    Transaction = FDTransaction2
    UpdateOptions.AssignedValues = [uvUpdateMode, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_SAIDA_VENDA_ID'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select * from saida_Venda')
    Left = 40
    Top = 64
    object FDQuerySaida_VendaCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQuerySaida_VendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQuerySaida_VendaDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      Required = True
    end
    object FDQuerySaida_VendaVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQuerySaida_VendaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object FDQuerySaida_VendaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object FDQuerySaida_VendaFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object FDQuerySaida_VendaCOND_PAGAMENTO: TStringField
      FieldName = 'COND_PAGAMENTO'
      Origin = 'COND_PAGAMENTO'
      Size = 40
    end
    object FDQuerySaida_VendaID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object FDQuerySaida_VendaID_SUBCONTA: TIntegerField
      FieldName = 'ID_SUBCONTA'
      Origin = 'ID_SUBCONTA'
    end
    object FDQuerySaida_VendaID_TIPO_PGTO: TIntegerField
      FieldName = 'ID_TIPO_PGTO'
      Origin = 'ID_TIPO_PGTO'
    end
    object FDQuerySaida_VendaDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDQuerySaida_VendaTIPO_DESC: TStringField
      FieldName = 'TIPO_DESC'
      Origin = 'TIPO_DESC'
      FixedChar = True
      Size = 2
    end
    object FDQuerySaida_VendaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object FDQuerySaida_VendaDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQuerySaida_VendaDATA_CANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = 'DATA_CANCELAMENTO'
    end
    object FDQuerySaida_VendaDATA_ORCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_ORCAMENTO'
      Origin = 'DATA_ORCAMENTO'
    end
    object FDQuerySaida_VendaUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 30
    end
  end
  object FDQuerySaidaProduto: TFDQuery
    AfterScroll = FDQuerySaidaProdutoAfterScroll
    IndexFieldNames = 'CODIGO'
    MasterSource = DT_Saida_Venda
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_SAIDA_PRODUTO_ID'
    SQL.Strings = (
      'select * from SAIDA_PRODUTO')
    Left = 40
    Top = 168
    object FDQuerySaidaProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQuerySaidaProdutoVALORPRODUTO: TBCDField
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      Precision = 18
      Size = 2
    end
    object FDQuerySaidaProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
      OnChange = FDQuerySaidaProdutoQUANTIDADEValidate
    end
    object FDQuerySaidaProdutoVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQuerySaidaProdutoNOME_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_PRODUTO'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'PRODUTO'
      LookupResultField = 'CODIGO'
      KeyFields = 'CODPRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 40
      Lookup = True
    end
    object FDQuerySaidaProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object FDQuerySaidaProdutoQTE_ESTOQUE: TFloatField
      FieldName = 'QTE_ESTOQUE'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QUANTIDADE_ATUAL'
      KeyFields = 'CODPRODUTO'
      Origin = 'QTE_ESTOQUE'
    end
    object FDQuerySaidaProdutoCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = 'COD_VENDA'
    end
  end
  object DT_Saida_Venda: TDataSource
    DataSet = FDQuerySaida_Venda
    Left = 160
    Top = 64
  end
  object DT_SaidaProduto: TDataSource
    DataSet = FDQuerySaidaProduto
    Left = 136
    Top = 168
  end
  object FDTransaction1: TFDTransaction
    Connection = DM_Dados.DADOS
    Left = 264
    Top = 160
  end
  object FDTransaction2: TFDTransaction
    Connection = DM_Dados.DADOS
    Left = 248
    Top = 72
  end
  object FDQueryOrcamento: TFDQuery
    BeforePost = FDQuerySaida_VendaBeforePost
    IndexFieldNames = 'CODIGO'
    Connection = DM_Dados.DADOS
    Transaction = FDTransaction2
    UpdateOptions.AssignedValues = [uvUpdateMode, uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.UpdateMode = upWhereAll
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_SAIDA_VENDA_ID'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select * from saida_Venda'
      'where situacao = '#39'ORCAMENTO'#39)
    Left = 680
    Top = 32
    object FDQueryOrcamentoCODIGO: TFDAutoIncField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      IdentityInsert = True
    end
    object FDQueryOrcamentoCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQueryOrcamentoDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      Required = True
    end
    object FDQueryOrcamentoVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryOrcamentoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object FDQueryOrcamentoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object FDQueryOrcamentoFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object FDQueryOrcamentoCOND_PAGAMENTO: TStringField
      FieldName = 'COND_PAGAMENTO'
      Origin = 'COND_PAGAMENTO'
      Size = 40
    end
    object FDQueryOrcamentoID_CONTA: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object FDQueryOrcamentoID_SUBCONTA: TIntegerField
      FieldName = 'ID_SUBCONTA'
      Origin = 'ID_SUBCONTA'
    end
    object FDQueryOrcamentoID_TIPO_PGTO: TIntegerField
      FieldName = 'ID_TIPO_PGTO'
      Origin = 'ID_TIPO_PGTO'
    end
    object FDQueryOrcamentoDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDQueryOrcamentoTIPO_DESC: TStringField
      FieldName = 'TIPO_DESC'
      Origin = 'TIPO_DESC'
      FixedChar = True
      Size = 2
    end
    object FDQueryOrcamentoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object FDQueryOrcamentoDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQueryOrcamentoDATA_CANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = 'DATA_CANCELAMENTO'
    end
    object FDQueryOrcamentoDATA_ORCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_ORCAMENTO'
      Origin = 'DATA_ORCAMENTO'
    end
  end
  object DtOrcamento: TDataSource
    DataSet = FDQueryOrcamento
    Left = 816
    Top = 24
  end
end
