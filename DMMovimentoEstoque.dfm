object DM_Mov_Estoque: TDM_Mov_Estoque
  OldCreateOrder = False
  Height = 548
  Width = 772
  object FDQueryMovimentoEstoque: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select  * from movimento_estoque')
    Left = 40
    Top = 32
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
  object DT_MovimentoEstoque: TDataSource
    DataSet = FDQueryMovimentoEstoque
    Left = 184
    Top = 40
  end
  object FDQuery_Movimento_estoque_item: TFDQuery
    IndexFieldNames = 'ID_MOVIMENTACAO'
    MasterSource = DT_MovimentoEstoque
    MasterFields = 'ID_MOVIMENTACAO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from movimento_estoque_tem')
    Left = 112
    Top = 152
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
  object DT_Movimento_estoque_item: TDataSource
    DataSet = FDQuery_Movimento_estoque_item
    Left = 264
    Top = 168
  end
end
