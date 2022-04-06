object DM_Endereco: TDM_Endereco
  OldCreateOrder = False
  Height = 547
  Width = 703
  object FDQueryCidade: TFDQuery
    IndexFieldNames = 'ID;ID_ESTADO;NOME'
    MasterSource = DT_Estados
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from cidades')
    Left = 184
    Top = 96
    object FDQueryCidadeID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDQueryCidadeNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 120
    end
    object FDQueryCidadeID_ESTADO: TIntegerField
      FieldName = 'ID_ESTADO'
      Origin = 'ID_ESTADO'
    end
    object FDQueryCidadeUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = FDQueryEstados
      LookupKeyFields = 'ID'
      LookupResultField = 'UF'
      KeyFields = 'ID_ESTADO'
      Origin = 'UF'
      Size = 5
      Lookup = True
    end
  end
  object Dt_Cidade: TDataSource
    DataSet = FDQueryCidade
    Left = 262
    Top = 96
  end
  object DT_Estados: TDataSource
    DataSet = FDQueryEstados
    Left = 262
    Top = 16
  end
  object FDQueryEstados: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from estados'
      'order by id')
    Left = 198
    Top = 16
    object FDQueryEstadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEstadosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 75
    end
    object FDQueryEstadosUF: TStringField
      FieldName = 'UF'
      Origin = 'UF'
      Size = 5
    end
  end
end
