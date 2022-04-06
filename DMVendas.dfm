object DM_Vendas: TDM_Vendas
  OldCreateOrder = False
  Height = 623
  Width = 1204
  object FDQuerySaida_Venda: TFDQuery
    Connection = DM_Dados.DADOS
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
  end
  object FDQuerySaidaProduto: TFDQuery
    AfterPost = FDQuerySaidaProdutoAfterPost
    AfterDelete = FDQuerySaidaProdutoAfterDelete
    IndexFieldNames = 'CODIGO'
    MasterSource = DT_Saida_Venda
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from saida_produto')
    Left = 40
    Top = 136
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
      OnValidate = FDQuerySaidaProdutoCODPRODUTOValidate
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
      FieldKind = fkLookup
      FieldName = 'VALORPRODUTO'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRECO_VENDA'
      KeyFields = 'CODPRODUTO'
      Origin = 'VALORPRODUTO'
      ReadOnly = True
      currency = True
      Precision = 18
      Size = 2
      Lookup = True
    end
    object FDQuerySaidaProdutoVALORTOTAL: TFMTBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      currency = True
      Precision = 18
      Size = 2
    end
    object FDQuerySaidaProdutoQTE_ESTOQUE: TFloatField
      FieldKind = fkLookup
      FieldName = 'QTE_ESTOQUE'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QUANTIDADE_ATUAL'
      KeyFields = 'CODPRODUTO'
      Origin = 'QTE_ESTOQUE'
      Lookup = True
    end
    object FDQuerySaidaProdutoQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      OnChange = FDQuerySaidaProdutoQUANTIDADEChange
    end
  end
  object DT_Saida_Venda: TDataSource
    DataSet = FDQuerySaida_Venda
    Left = 160
    Top = 64
  end
  object DT_SaidaProduto: TDataSource
    DataSet = FDQuerySaidaProduto
    Left = 184
    Top = 144
  end
end
