object DM_Vendas: TDM_Vendas
  OldCreateOrder = False
  Height = 623
  Width = 1204
  object FDQuerySaida_Venda: TFDQuery
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
      'select * from saida_Venda')
    Left = 40
    Top = 64
    object FDQuerySaida_VendaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuerySaida_VendaCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQuerySaida_VendaDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
    end
    object FDQuerySaida_VendaVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
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
      LookupDataSet = DM_Cadastro.FDQueryCliente
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Origin = 'NOME'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object FDQuerySaida_VendaFRETE: TFMTBCDField
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
    object FDQuerySaida_VendaDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
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
  end
  object FDQuerySaidaProduto: TFDQuery
    IndexFieldNames = 'CODIGO'
    MasterSource = DT_Saida_Venda
    MasterFields = 'CODIGO'
    DetailFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    Transaction = FDTransaction1
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_SAIDA_PRODUTO_ID'
    SQL.Strings = (
      'select * from saida_produto'
      '')
    Left = 40
    Top = 168
    object FDQuerySaidaProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQuerySaidaProdutoCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuerySaidaProdutoNOME_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_PRODUTO'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Origin = 'NOME_PRODUTO'
      Size = 40
      Lookup = True
    end
    object FDQuerySaidaProdutoVALORPRODUTO: TFMTBCDField
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      ReadOnly = True
      OnValidate = FDQuerySaidaProdutoVALORPRODUTOValidate
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuerySaidaProdutoVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuerySaidaProdutoQTE_ESTOQUE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTE_ESTOQUE'
      Origin = 'QTE_ESTOQUE'
      Calculated = True
    end
    object FDQuerySaidaProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      OnValidate = FDQuerySaidaProdutoQUANTIDADEValidate
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
    Left = 160
    Top = 160
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
    Left = 32
    Top = 272
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object SQLTimeStampField1: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
    end
    object FMTBCDField1: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object StringField1: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object StringField2: TStringField
      FieldName = 'NOME'
      LookupDataSet = FDQuerySaida_Venda
      LookupKeyFields = 'CODCLIENTE'
      LookupResultField = 'NOME'
      KeyFields = 'CODCLIENTE'
      Origin = 'NOME'
      ReadOnly = True
      FixedChar = True
      Size = 40
    end
    object FMTBCDField2: TFMTBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'COND_PAGAMENTO'
      Origin = 'COND_PAGAMENTO'
      Size = 40
    end
    object IntegerField3: TIntegerField
      FieldName = 'ID_CONTA'
      Origin = 'ID_CONTA'
    end
    object IntegerField4: TIntegerField
      FieldName = 'ID_SUBCONTA'
      Origin = 'ID_SUBCONTA'
    end
    object IntegerField5: TIntegerField
      FieldName = 'ID_TIPO_PGTO'
      Origin = 'ID_TIPO_PGTO'
    end
    object FMTBCDField3: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      currency = True
      Precision = 18
      Size = 2
    end
    object StringField4: TStringField
      FieldName = 'TIPO_DESC'
      Origin = 'TIPO_DESC'
      FixedChar = True
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object SQLTimeStampField2: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object SQLTimeStampField3: TSQLTimeStampField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = 'DATA_CANCELAMENTO'
    end
    object SQLTimeStampField4: TSQLTimeStampField
      FieldName = 'DATA_ORCAMENTO'
      Origin = 'DATA_ORCAMENTO'
    end
  end
  object DtOrcamento: TDataSource
    DataSet = FDQueryOrcamento
    Left = 152
    Top = 272
  end
end
