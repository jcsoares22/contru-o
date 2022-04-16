object DM_Dados: TDM_Dados
  OldCreateOrder = False
  Height = 579
  Width = 812
  object DADOS: TFDConnection
    Params.Strings = (
      'Database=C:\SYS TEC\BIN\DATA\DADOS\DADOS.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'CharacterSet=WIN1252'
      'Port=3050'
      'Protocol=TCPIP'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evAutoClose]
    FetchOptions.AutoClose = False
    FormatOptions.AssignedValues = [fvADOCompatibility]
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
    TableName = 'USUARIO'
    Left = 208
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
    Left = 120
    Top = 104
  end
  object FDQueryPreferencia: TFDQuery
    Connection = DADOS
    SQL.Strings = (
      'SELECT * FROM controle_sistema')
    Left = 24
    Top = 176
    object FDQueryPreferenciaDESCONTO_VENDA: TFMTBCDField
      FieldName = 'DESCONTO_VENDA'
      Origin = 'DESCONTO_VENDA'
      Precision = 18
      Size = 2
    end
  end
  object DT_Preferencia: TDataSource
    DataSet = FDQueryPreferencia
    Left = 104
    Top = 176
  end
end
