object DM_Dados: TDM_Dados
  OldCreateOrder = False
  Height = 579
  Width = 812
  object DADOS: TFDConnection
    Params.Strings = (
      'User_Name=SYSDBA'
      'Password=pmpsyfwr'
      'CharacterSet=WIN1252'
      'Port=3050'
      'Protocol=TCPIP'
      'Database=C:\SYS TEC\BIN\DATA\DADOS\DADOS.FDB'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evAutoClose]
    FetchOptions.AutoClose = False
    Connected = True
    Left = 8
    Top = 16
  end
  object FDTransaction1: TFDTransaction
    Connection = DADOS
    Left = 64
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 16
  end
  object FDQueryUsuario: TFDQuery
    Connection = DADOS
    SQL.Strings = (
      'SELECT * FROM USUARIO')
    Left = 8
    Top = 104
    object FDQueryUsuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Required = True
      Size = 30
    end
    object FDQueryUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USU_LOGIN'
      Required = True
      Size = 10
    end
    object FDQueryUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Origin = 'USU_SENHA'
      Required = True
      Size = 10
    end
    object FDQueryUsuarioUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USU_NIVEL'
      Required = True
    end
  end
  object FDUSUARIO: TFDTable
    IndexFieldNames = 'USU_CODIGO'
    Connection = DADOS
    UpdateOptions.UpdateTableName = 'USUARIO'
    TableName = 'USUARIO'
    Left = 168
    Top = 104
    object FDUSUARIOUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDUSUARIOUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Required = True
      Size = 30
    end
    object FDUSUARIOUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USU_LOGIN'
      Required = True
      Size = 10
    end
    object FDUSUARIOUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Origin = 'USU_SENHA'
      Required = True
      Size = 10
    end
    object FDUSUARIOUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USU_NIVEL'
      Required = True
    end
  end
  object DT_Usuario: TDataSource
    DataSet = FDUSUARIO
    Left = 88
    Top = 104
  end
  object FDQueryPreferencia: TFDQuery
    Connection = DADOS
    SQL.Strings = (
      'SELECT * FROM controle_sistema')
    Left = 32
    Top = 232
    object FDQueryPreferenciaTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 50
    end
    object FDQueryPreferenciaCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQueryPreferenciaEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQueryPreferenciaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object FDQueryPreferenciaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQueryPreferenciaRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 25
    end
    object FDQueryPreferenciaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 12
    end
    object FDQueryPreferenciaUF_ID: TIntegerField
      FieldName = 'UF_ID'
      Origin = 'UF_ID'
    end
    object FDQueryPreferenciaCIDADE_ID: TIntegerField
      FieldName = 'CIDADE_ID'
      Origin = 'CIDADE_ID'
    end
    object FDQueryPreferenciaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQueryPreferenciaDESCONTO_VENDA: TBCDField
      FieldName = 'DESCONTO_VENDA'
      Origin = 'DESCONTO_VENDA'
      Precision = 18
      Size = 2
    end
  end
  object DT_Preferencia: TDataSource
    DataSet = FDQueryPreferencia
    Left = 128
    Top = 256
  end
end
