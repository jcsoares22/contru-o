object DM_Cadastro: TDM_Cadastro
  OldCreateOrder = False
  Height = 608
  Width = 765
  object FDQueryGrupo: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from grupo_material')
    Left = 48
    Top = 8
    object FDQueryGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryGrupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
    object FDQueryGrupoSECAO: TStringField
      FieldName = 'SECAO'
      Origin = 'SECAO'
      Size = 1
    end
  end
  object DT_Grupo: TDataSource
    DataSet = FDQueryGrupo
    Left = 128
    Top = 8
  end
  object FDQuerySub_grupo: TFDQuery
    IndexFieldNames = 'CODIGO_GRUPO'
    MasterSource = DT_Grupo
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from sub_grupo')
    Left = 40
    Top = 80
    object FDQuerySub_grupoCODIGO_GRUPO: TIntegerField
      FieldName = 'CODIGO_GRUPO'
      Origin = 'CODIGO_GRUPO'
      Required = True
    end
    object FDQuerySub_grupoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 25
    end
    object FDQuerySub_grupoUNIDADE_MEDIDA: TStringField
      FieldKind = fkLookup
      FieldName = 'UNIDADE_MEDIDA'
      LookupDataSet = FDQueryUnMedida
      LookupKeyFields = 'ID'
      LookupResultField = 'SIGLA_MEDIDA'
      KeyFields = 'UNIDADE_MEDIDA'
      Origin = 'UNIDADE_MEDIDA'
      Size = 6
      Lookup = True
    end
    object FDQuerySub_grupoUNIDADE_CONSUMO: TStringField
      FieldName = 'UNIDADE_CONSUMO'
      Origin = 'UNIDADE_CONSUMO'
      Size = 6
    end
  end
  object DT_SubGrupo: TDataSource
    DataSet = FDQuerySub_grupo
    Left = 136
    Top = 64
  end
  object FDQueryUnMedida: TFDQuery
    ConstraintsEnabled = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from medida')
    Left = 613
    Top = 8
    object FDQueryUnMedidaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQueryUnMedidaSIGLA_MEDIDA: TStringField
      FieldName = 'SIGLA_MEDIDA'
      Origin = 'SIGLA_MEDIDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 6
    end
    object FDQueryUnMedidaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 15
    end
    object FDQueryUnMedidaFRACIONADO: TStringField
      FieldName = 'FRACIONADO'
      Origin = 'FRACIONADO'
      Size = 1
    end
    object FDQueryUnMedidaFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = 'FATOR_CONVERSAO'
    end
    object FDQueryUnMedidaTIPO_CONVERSAO: TStringField
      FieldName = 'TIPO_CONVERSAO'
      Origin = 'TIPO_CONVERSAO'
      Size = 5
    end
    object FDQueryUnMedidaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Size = 1
    end
  end
  object Dt_medida: TDataSource
    DataSet = FDQueryUnMedida
    Left = 693
    Top = 16
  end
  object FDQueryCores: TFDQuery
    ConstraintsEnabled = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'SELECT * FROM CORES')
    Left = 613
    Top = 80
    object FDQueryCoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQueryCoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object DT_Cores: TDataSource
    DataSet = FDQueryCores
    Left = 693
    Top = 88
  end
  object FDQueryMarca: TFDQuery
    ConstraintsEnabled = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from marca')
    Left = 613
    Top = 144
    object FDQueryMarcaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQueryMarcaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 30
    end
  end
  object DT_Marca: TDataSource
    DataSet = FDQueryMarca
    Left = 693
    Top = 152
  end
  object FDQueryCondição_pagamento: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from condicao_pagamento ')
    Left = 32
    Top = 184
    object FDQueryCondição_pagamentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryCondição_pagamentoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 30
    end
    object FDQueryCondição_pagamentoDESCONTO_VISTA: TFloatField
      FieldName = 'DESCONTO_VISTA'
      Origin = 'DESCONTO_VISTA'
    end
    object FDQueryCondição_pagamentoBLOQUEAR: TStringField
      FieldName = 'BLOQUEAR'
      Origin = 'BLOQUEAR'
      Size = 1
    end
  end
  object Dt_Condicao_pagamento: TDataSource
    DataSet = FDQueryCondição_pagamento
    Left = 136
    Top = 184
  end
  object FDQueryProduto: TFDQuery
    ConstraintsEnabled = True
    Connection = DM_Dados.DADOS
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_PRODUTO_ID'
    UpdateOptions.AutoIncFields = 'CODIGO'
    SQL.Strings = (
      'select * from produto')
    Left = 32
    Top = 520
    object FDQueryProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryProdutoPRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 40
    end
    object FDQueryProdutoUN_MEDIDA: TStringField
      FieldName = 'UN_MEDIDA'
      Origin = 'UN_MEDIDA'
      Required = True
      Size = 3
    end
    object FDQueryProdutoPRECO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDQueryProdutoPRECO_VENDA: TFMTBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object FDQueryProdutoSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FDQueryProdutoOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object FDQueryProdutoDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object FDQueryProdutoDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
    end
    object FDQueryProdutoCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 50
    end
    object FDQueryProdutoFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 150
    end
    object FDQueryProdutoMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object FDQueryProdutoBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object FDQueryProdutoPRECENTO_LUCRO: TCurrencyField
      FieldName = 'PRECENTO_LUCRO'
      Origin = 'PRECENTO_LUCRO'
    end
    object FDQueryProdutoPRECO_PRAZO_CUSTO: TFMTBCDField
      FieldName = 'PRECO_PRAZO_CUSTO'
      Origin = 'PRECO_PRAZO_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDQueryProdutoPRECO_PRAZO_VENDA: TFMTBCDField
      FieldName = 'PRECO_PRAZO_VENDA'
      Origin = 'PRECO_PRAZO_VENDA'
      Precision = 18
      Size = 2
    end
    object FDQueryProdutoPRECENTO_PRAZO_LUCRO: TCurrencyField
      FieldName = 'PRECENTO_PRAZO_LUCRO'
      Origin = 'PRECENTO_PRAZO_LUCRO'
    end
    object FDQueryProdutoID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object FDQueryProdutoID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
      Origin = 'ID_SUBGRUPO'
    end
    object FDQueryProdutoQUANTIDADE_ENTRADA: TIntegerField
      FieldName = 'QUANTIDADE_ENTRADA'
      Origin = 'QUANTIDADE_ENTRADA'
    end
    object FDQueryProdutoQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = 'QUANTIDADE_ATUAL'
    end
    object FDQueryProdutoQUANTIDADE_SAIDA: TIntegerField
      FieldName = 'QUANTIDADE_SAIDA'
      Origin = 'QUANTIDADE_SAIDA'
    end
  end
  object DT_Produto: TDataSource
    DataSet = FDQueryProduto
    Left = 136
    Top = 520
  end
  object FDQueryCliente: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from cliente')
    Left = 32
    Top = 248
    object FDQueryClienteCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryClienteNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQueryClienteTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      EditMask = '!\(99\)0-0000-0000;0;_'
      Size = 11
    end
    object FDQueryClienteCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQueryClienteEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQueryClienteDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQueryClienteRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 25
    end
    object FDQueryClienteNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 12
    end
    object FDQueryClienteUF_ID: TIntegerField
      FieldName = 'UF_ID'
      Origin = 'UF_ID'
    end
    object FDQueryClienteCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Origin = 'CIDADE_ID'
    end
    object FDQueryClienteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
  end
  object DT_cliente: TDataSource
    DataSet = FDQueryCliente
    Left = 144
    Top = 248
  end
  object FDQueryTipoPgto: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from TIPO_PAGAMENTO'
      '')
    Left = 32
    Top = 328
    object FDQueryTipoPgtoID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQueryTipoPgtoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 50
    end
  end
  object DT_Tipo_Pgto: TDataSource
    DataSet = FDQueryTipoPgto
    Left = 144
    Top = 328
  end
  object FDQueryConta: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from conta')
    Left = 568
    Top = 432
    object FDQueryContaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object FDQueryContaBLOQUEADA: TStringField
      FieldName = 'BLOQUEADA'
      Origin = 'BLOQUEADA'
      Size = 1
    end
  end
  object FDQuerySubConta: TFDQuery
    IndexFieldNames = 'CODIGO_SUB'
    MasterSource = DT_Conta
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from sub_conta')
    Left = 568
    Top = 496
    object FDQuerySubContaCODIGO_SUB: TIntegerField
      FieldName = 'CODIGO_SUB'
      Origin = 'CODIGO_SUB'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQuerySubContaTIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'TIPO'
      LookupDataSet = FDQueryTipo
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPO'
      Origin = 'TIPO'
      Required = True
      OnValidate = FDQuerySubContaTIPOValidate
      Size = 1
      Lookup = True
    end
    object FDQuerySubContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object FDQuerySubContaBLOQUEADA: TStringField
      FieldName = 'BLOQUEADA'
      Origin = 'BLOQUEADA'
      Size = 1
    end
  end
  object DT_Conta: TDataSource
    DataSet = FDQueryConta
    Left = 640
    Top = 432
  end
  object DT_SubConta: TDataSource
    DataSet = FDQuerySubConta
    Left = 648
    Top = 496
  end
  object FDQueryTipo: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from tipo_conta')
    Left = 568
    Top = 392
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Required = True
      Size = 35
    end
    object StringField2: TStringField
      FieldName = 'BLOQUEADA'
      Origin = 'BLOQUEADA'
      Size = 1
    end
  end
end
