object DM_Finaceiro: TDM_Finaceiro
  OldCreateOrder = False
  Height = 861
  Width = 965
  object FDQueryFinanceiro: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from lancamento_financeiro')
    Left = 32
    Top = 56
    object FDQueryFinanceiroID_VENDA: TIntegerField
      FieldName = 'ID_VENDA'
      Origin = 'ID_VENDA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFinanceiroNUN_PARCELA: TIntegerField
      FieldName = 'NUN_PARCELA'
      Origin = 'NUN_PARCELA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFinanceiroVLR_PARC: TFMTBCDField
      FieldName = 'VLR_PARC'
      Origin = 'VLR_PARC'
      Required = True
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroDATA_VENC: TSQLTimeStampField
      FieldName = 'DATA_VENC'
      Origin = 'DATA_VENC'
      Required = True
    end
    object FDQueryFinanceiroDATA_PGTO: TSQLTimeStampField
      FieldName = 'DATA_PGTO'
      Origin = 'DATA_PGTO'
    end
    object FDQueryFinanceiroJUROS: TFMTBCDField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroDESCONTO: TFMTBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroVLR_PGTO: TFMTBCDField
      FieldName = 'VLR_PGTO'
      Origin = 'VLR_PGTO'
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroPARC_SALDO: TFMTBCDField
      FieldName = 'PARC_SALDO'
      Origin = 'PARC_SALDO'
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroCOD_BANCO: TStringField
      FieldName = 'COD_BANCO'
      Origin = 'COD_BANCO'
      Size = 11
    end
  end
  object DT_Financeiro: TDataSource
    DataSet = FDQueryFinanceiro
    Left = 136
    Top = 56
  end
end
