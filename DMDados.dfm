object DM_Dados: TDM_Dados
  OldCreateOrder = False
  Height = 579
  Width = 812
  object DADOS: TFDConnection
    Params.Strings = (
      'Protocol='
      'User_Name=SYSDBA'
      'Password=pmpsyfwr'
      'Database=E:\SYS TEC\BIN\DATA\DADOS\DADOS.FDB'
      'DriverID=FB')
    FetchOptions.AssignedValues = [evAutoClose]
    FetchOptions.AutoClose = False
    LoginPrompt = False
    OnRecover = DADOSRecover
    Left = 8
    Top = 16
  end
  object FDTransaction1: TFDTransaction
    Connection = DADOS
    Left = 80
    Top = 16
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 144
    Top = 16
  end
  object DT_Usuario: TDataSource
    DataSet = FDQueryUsuario
    Left = 128
    Top = 120
  end
  object FDQueryPreferencia: TFDQuery
    Connection = DADOS
    SQL.Strings = (
      'SELECT * FROM controle_sistema')
    Left = 608
    Top = 56
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
    object FDQueryPreferenciaVALIDAR_ESTOQUE_MINIMO: TStringField
      FieldName = 'VALIDAR_ESTOQUE_MINIMO'
      Origin = 'VALIDAR_ESTOQUE_MINIMO'
      Size = 1
    end
    object FDQueryPreferenciaDESC_MAX_USUSARIO: TCurrencyField
      FieldName = 'DESC_MAX_USUSARIO'
      Origin = 'DESC_MAX_USUSARIO'
    end
    object FDQueryPreferenciaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 150
    end
  end
  object DT_Preferencia: TDataSource
    DataSet = FDQueryPreferencia
    Left = 704
    Top = 56
  end
  object FDQueryUsuario: TFDQuery
    BeforePost = FDQueryUsuarioBeforePost
    Connection = DADOS
    UpdateOptions.AssignedValues = [uvFetchGeneratorsPoint, uvGeneratorName]
    UpdateOptions.FetchGeneratorsPoint = gpImmediate
    UpdateOptions.GeneratorName = 'GEN_USUARIO_ID'
    UpdateOptions.AutoIncFields = 'USU_CODIGO'
    SQL.Strings = (
      'select '
      '    USU_LOGIN,'
      '    USU_SENHA'
      'from usuario')
    Left = 32
    Top = 120
    object FDQueryUsuarioUSU_CODIGO: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
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
    object FDQueryUsuarioADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      FixedChar = True
      Size = 1
    end
    object FDQueryUsuarioPREFERENCIA: TStringField
      FieldName = 'PREFERENCIA'
      Origin = 'PREFERENCIA'
      FixedChar = True
      Size = 1
    end
    object FDQueryUsuarioCAD_USU: TStringField
      FieldName = 'CAD_USU'
      Origin = 'CAD_USU'
      FixedChar = True
      Size = 1
    end
    object FDQueryUsuarioALTERAR_LIMITE_DESC: TStringField
      FieldName = 'ALTERAR_LIMITE_DESC'
      Origin = 'ALTERAR_LIMITE_DESC'
      Size = 1
    end
    object FDQueryUsuarioDESCONTO_VENDA_USU: TCurrencyField
      FieldName = 'DESCONTO_VENDA_USU'
      Origin = 'DESCONTO_VENDA_USU'
      currency = False
    end
  end
end
