object frmEstoqueminimo: TfrmEstoqueminimo
  Left = 0
  Top = 0
  Caption = 'Estoque minimo'
  ClientHeight = 546
  ClientWidth = 1022
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 1022
    Height = 505
    Align = alClient
    DataSource = DTEstoqueMinimo
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Panel1: TPanel
    Left = 0
    Top = 505
    Width = 1022
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitLeft = 424
    ExplicitTop = 272
    ExplicitWidth = 185
    object btnRelatorioEstoqueMinimo: TButton
      Left = 888
      Top = 6
      Width = 75
      Height = 25
      Caption = 'btnRelatorioEstoqueMinimo'
      TabOrder = 0
      OnClick = btnRelatorioEstoqueMinimoClick
    end
  end
  object FDQueryEstoqeMinimo: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '    produto.quantidade_atual,'
      '    produto.codigo,'
      '    produto.marca,'
      '    produto.produto,'
      '    produto.un_medida,'
      '    controle_sistema.estoque_minimo'
      'from controle_sistema,'
      'produto'
      'where '
      '   ('
      
        '      (produto.quantidade_atual <= controle_sistema.estoque_mini' +
        'mo)'
      '   )')
    Left = 16
    Top = 504
  end
  object DTEstoqueMinimo: TDataSource
    DataSet = FDQueryEstoqeMinimo
    Left = 104
    Top = 504
  end
  object frEstoqueminimo: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44710.481128657400000000
    ReportOptions.LastChange = 44710.488985370370000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 200
    Top = 264
    Datasets = <
      item
        DataSet = frxEstoqueminimo
        DataSetName = 'frEstoqueminimo'
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
        Height = 86.929190000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 18.338590000000000000
          Top = 7.559060000000000000
          Width = 733.228820000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '------Estoque---------------------------------------------------' +
              '-------------------')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 30.236239999999990000
          Width = 60.472480000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 30.236239999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 631.181510000000000000
          Top = 30.236239999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Estoque atual')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 517.795610000000000000
          Top = 29.456710000000000000
          Width = 37.795300000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Un')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 37.795300000000000000
        Top = 166.299320000000000000
        Width = 718.110700000000000000
        DataSet = frxEstoqueminimo
        DataSetName = 'frEstoqueminimo'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxEstoqueminimo
          DataSetName = 'frEstoqueminimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frEstoqueminimo."CODIGO"]')
          ParentFont = False
        end
        object frxDBDataset1PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 3.779530000000022000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxEstoqueminimo
          DataSetName = 'frEstoqueminimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frEstoqueminimo."PRODUTO"]')
          ParentFont = False
        end
        object frxDBDataset1QUANTIDADE_ATUAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Top = 3.779530000000022000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE_ATUAL'
          DataSet = frxEstoqueminimo
          DataSetName = 'frEstoqueminimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frEstoqueminimo."QUANTIDADE_ATUAL"]')
          ParentFont = False
        end
        object frEstoqueminimoUN_MEDIDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 517.795610000000000000
          Width = 22.677180000000000000
          Height = 18.897650000000000000
          DataField = 'UN_MEDIDA'
          DataSet = frxEstoqueminimo
          DataSetName = 'frEstoqueminimo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frEstoqueminimo."UN_MEDIDA"]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.118120000000000000
          Top = 30.236240000000010000
          Width = 714.331170000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Line2: TfrxLineView
        AllowVectorExport = True
        Left = -3.779530000000000000
        Top = 75.590600000000000000
        Width = 714.331170000000000000
        Color = clBlack
        Frame.Typ = [ftTop]
      end
    end
  end
  object frxEstoqueminimo: TfrxDBDataset
    UserName = 'frEstoqueminimo'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'PRODUTO=PRODUTO'
      'QUANTIDADE_ATUAL=QUANTIDADE_ATUAL'
      'UN_MEDIDA=UN_MEDIDA')
    DataSource = DTEstoqueMinimo
    BCDToCurrency = False
    DataSetOptions = []
    Left = 208
    Top = 344
  end
end
