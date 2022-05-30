object frmEstoque: TfrmEstoque
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 488
  ClientWidth = 902
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object btnImprimir: TButton
    Left = 744
    Top = 384
    Width = 75
    Height = 25
    Caption = 'Imprimir'
    TabOrder = 0
    OnClick = btnImprimirClick
  end
  object Button1: TButton
    Left = 744
    Top = 120
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object edtCodigoProduto: TEdit
    Left = 32
    Top = 58
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object CheckBoxBloqueado: TCheckBox
    Left = 248
    Top = 60
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    TabOrder = 3
  end
  object FDQueryEstoque: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '    produto.quantidade_atual,'
      '    produto.codigo,'
      '    produto.marca,'
      '    produto.produto,'
      '    produto.un_medida,'
      '    produto.situacao'
      'from produto')
    Left = 304
    Top = 360
    object FDQueryEstoqueQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = 'QUANTIDADE_ATUAL'
    end
    object FDQueryEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryEstoqueMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object FDQueryEstoquePRODUTO: TStringField
      FieldName = 'PRODUTO'
      Origin = 'PRODUTO'
      Required = True
      Size = 40
    end
    object FDQueryEstoqueUN_MEDIDA: TStringField
      FieldName = 'UN_MEDIDA'
      Origin = 'UN_MEDIDA'
      Required = True
      Size = 3
    end
  end
  object DTEsttoque: TDataSource
    DataSet = FDQueryEstoque
    Left = 400
    Top = 360
  end
  object frEstoque: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44710.608820416700000000
    ReportOptions.LastChange = 44710.622306851900000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 672
    Top = 368
    Datasets = <
      item
        DataSet = frxEstoque
        DataSetName = 'frxEstoque'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 287.244280000000000000
          Top = 11.338590000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque de produto')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 37.795300000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cod.Prod')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 41.574830000000000000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Produto')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'UN')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 555.590910000000000000
          Top = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Marca')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 37.795300000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Qte atual')
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 139.842610000000000000
        Width = 718.110700000000000000
        DataSet = frxEstoque
        DataSetName = 'frxEstoque'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779529999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxEstoque
          DataSetName = 'frxEstoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CODIGO"]')
        end
        object frxDBDataset1PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779529999999990000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxEstoque
          DataSetName = 'frxEstoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRODUTO"]')
        end
        object frxDBDataset1MARCA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 3.779529999999990000
          Width = 68.031540000000000000
          Height = 18.897650000000000000
          DataField = 'MARCA'
          DataSet = frxEstoque
          DataSetName = 'frxEstoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."MARCA"]')
        end
        object frxDBDataset1UN_MEDIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 502.677490000000000000
          Top = 3.779529999999990000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UN_MEDIDA'
          DataSet = frxEstoque
          DataSetName = 'frxEstoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."UN_MEDIDA"]')
        end
        object frxDBDataset1QUANTIDADE_ATUAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779529999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE_ATUAL'
          DataSet = frxEstoque
          DataSetName = 'frxEstoque'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE_ATUAL"]')
        end
      end
    end
  end
  object frxEstoque: TfrxDBDataset
    UserName = 'frxEstoque'
    CloseDataSource = False
    DataSet = FDQueryEstoque
    BCDToCurrency = False
    DataSetOptions = []
    Left = 680
    Top = 440
  end
end
