object DM_Finaceiro: TDM_Finaceiro
  OldCreateOrder = False
  Height = 861
  Width = 965
  object FDQueryFinanceiro: TFDQuery
    OnNewRecord = FDQueryFinanceiroNewRecord
    IndexFieldNames = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from lancamento_financeiro')
    Left = 32
    Top = 56
    object FDQueryFinanceiroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryFinanceiroSEQ_PARCELA: TIntegerField
      FieldName = 'SEQ_PARCELA'
      Origin = 'SEQ_PARCELA'
      Required = True
    end
    object FDQueryFinanceiroVLR_PARC: TBCDField
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
    object FDQueryFinanceiroVLR_PGTO: TBCDField
      FieldName = 'VLR_PGTO'
      Origin = 'VLR_PGTO'
      Precision = 18
      Size = 2
    end
    object FDQueryFinanceiroTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      FixedChar = True
      Size = 2
    end
  end
  object DT_Financeiro: TDataSource
    DataSet = FDQueryFinanceiro
    Left = 144
    Top = 56
  end
end
