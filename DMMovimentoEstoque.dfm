object DM_Mov_Estoque: TDM_Mov_Estoque
  OldCreateOrder = False
  Height = 548
  Width = 772
  object FDQueryMovimentoEstoque: TFDQuery
    Connection = DM_Dados.DADOS
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.GeneratorName = 'GEN_MOVIMENTO_ESTOQUE_ID'
    UpdateOptions.AutoIncFields = 'ID_MOVIMENTACAO'
    SQL.Strings = (
      'select  * from movimento_estoque')
    Left = 32
    Top = 72
    object FDQueryMovimentoEstoqueID_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_MOVIMENTACAO'
      Origin = 'ID_MOVIMENTACAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryMovimentoEstoqueNOME_USUARIO: TStringField
      FieldName = 'NOME_USUARIO'
      Origin = 'NOME_USUARIO'
      Required = True
      Size = 50
    end
    object FDQueryMovimentoEstoqueDT_MOV: TSQLTimeStampField
      FieldName = 'DT_MOV'
      Origin = 'DT_MOV'
    end
    object FDQueryMovimentoEstoqueTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      FixedChar = True
      Size = 16
    end
  end
  object FDQuery_Movimento_estoque_item: TFDQuery
    AfterPost = FDQuery_Movimento_estoque_itemAfterPost
    IndexFieldNames = 'ID_MOVIMENTACAO'
    MasterSource = DTMovimentoEstoque
    MasterFields = 'ID_MOVIMENTACAO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from movimento_estoque_item')
    Left = 32
    Top = 200
    ParamData = <
      item
      end>
    object FDQuery_Movimento_estoque_itemID_MOVIMENTACAO: TIntegerField
      FieldName = 'ID_MOVIMENTACAO'
      Origin = 'ID_MOVIMENTACAO'
      Required = True
    end
    object FDQuery_Movimento_estoque_itemCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object FDQuery_Movimento_estoque_itemQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQuery_Movimento_estoque_itemNOME_PRODUTO: TStringField
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
    object FDQuery_Movimento_estoque_itemQTE_ATUAL: TIntegerField
      FieldKind = fkLookup
      FieldName = 'QTE_ATUAL'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'QUANTIDADE_ATUAL'
      KeyFields = 'CODPRODUTO'
      Origin = 'QTE_ATUAL'
      ReadOnly = True
      Lookup = True
    end
  end
  object DTMovimentoEstoque: TDataSource
    DataSet = FDQueryMovimentoEstoque
    Left = 248
    Top = 72
  end
  object DTMovimento_estoque_item: TDataSource
    DataSet = FDQuery_Movimento_estoque_item
    Left = 240
    Top = 184
  end
end
