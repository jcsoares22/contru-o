object frmEstoque: TfrmEstoque
  Left = 0
  Top = 0
  Caption = 'Estoque'
  ClientHeight = 554
  ClientWidth = 1057
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
  object Label1: TLabel
    Left = 432
    Top = 16
    Width = 93
    Height = 13
    Caption = 'Estoque menor que'
  end
  object Label2: TLabel
    Left = 432
    Top = 70
    Width = 89
    Height = 13
    Caption = 'Estoque maior que'
  end
  object btnImprimir: TButton
    Left = 744
    Top = 224
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
  object RxLookupProdutos: TRxLookupEdit
    Left = 152
    Top = 32
    Width = 185
    Height = 21
    LookupField = 'PRODUTO'
    LookupSource = DataSourceEstoque
    TabOrder = 2
    Text = ''
    OnChange = RxLookupProdutosChange
  end
  object RxDBGrid1: TRxDBGrid
    Left = 16
    Top = 280
    Width = 1017
    Height = 233
    DataSource = DataSourceEstoque
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    RowColor2 = 16776176
  end
  object codigoProduto: TEdit
    Left = 24
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 4
  end
  object CheckBox1: TCheckBox
    Left = 464
    Top = 128
    Width = 97
    Height = 17
    Caption = 'CheckBox1'
    TabOrder = 5
  end
  object CheckBox2: TCheckBox
    Left = 464
    Top = 176
    Width = 97
    Height = 17
    Caption = 'CheckBox2'
    TabOrder = 6
  end
  object RadioGroup1: TRadioGroup
    Left = 624
    Top = 32
    Width = 81
    Height = 74
    Caption = 'RadioGroup1'
    Items.Strings = (
      'Ativo'
      'Innativo')
    TabOrder = 7
  end
  object maiorQue: TEdit
    Left = 432
    Top = 85
    Width = 121
    Height = 21
    TabOrder = 8
  end
  object menorQue: TEdit
    Left = 432
    Top = 43
    Width = 121
    Height = 21
    TabOrder = 9
  end
  object RxDBComboBoxGrupo: TRxDBComboBox
    Left = 216
    Top = 96
    Width = 145
    Height = 21
    TabOrder = 10
  end
  object ComboBox1: TComboBox
    Left = 216
    Top = 144
    Width = 145
    Height = 21
    TabOrder = 11
    Text = 'ComboBox1'
  end
  object FDQueryEstoque: TFDQuery
    Active = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '    produto.codigo,'
      '    produto.produto,'
      '    produto.un_medida,'
      '    produto.preco_custo,'
      '    produto.preco_venda,'
      '    produto.situacao,'
      '    produto.obs,'
      '    produto.datacad,'
      '    produto.datavenda,'
      '    produto.cor,'
      '    produto.foto,'
      '    produto.marca,'
      '    produto.bairro,'
      '    produto.precento_lucro,'
      '    produto.preco_prazo_custo,'
      '    produto.preco_prazo_venda,'
      '    produto.precento_prazo_lucro,'
      '    produto.quantidade_saida,'
      '    produto.id_grupo,'
      '    produto.id_subgrupo,'
      '    produto.quantidade_entrada,'
      '    produto.quantidade_atual,'
      '    produto.qte_minima'
      'from produto')
    Left = 800
    Top = 408
    object FDQueryEstoqueCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
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
      Size = 3
    end
    object FDQueryEstoquePRECO_CUSTO: TBCDField
      FieldName = 'PRECO_CUSTO'
      Origin = 'PRECO_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDQueryEstoquePRECO_VENDA: TBCDField
      FieldName = 'PRECO_VENDA'
      Origin = 'PRECO_VENDA'
      Precision = 18
      Size = 2
    end
    object FDQueryEstoqueSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      FixedChar = True
      Size = 1
    end
    object FDQueryEstoqueOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Size = 150
    end
    object FDQueryEstoqueDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
    end
    object FDQueryEstoqueDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
    end
    object FDQueryEstoqueCOR: TStringField
      FieldName = 'COR'
      Origin = 'COR'
      Size = 50
    end
    object FDQueryEstoqueFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'FOTO'
      Size = 150
    end
    object FDQueryEstoqueMARCA: TStringField
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Size = 15
    end
    object FDQueryEstoqueBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 40
    end
    object FDQueryEstoquePRECENTO_LUCRO: TCurrencyField
      FieldName = 'PRECENTO_LUCRO'
      Origin = 'PRECENTO_LUCRO'
    end
    object FDQueryEstoquePRECO_PRAZO_CUSTO: TBCDField
      FieldName = 'PRECO_PRAZO_CUSTO'
      Origin = 'PRECO_PRAZO_CUSTO'
      Precision = 18
      Size = 2
    end
    object FDQueryEstoquePRECO_PRAZO_VENDA: TBCDField
      FieldName = 'PRECO_PRAZO_VENDA'
      Origin = 'PRECO_PRAZO_VENDA'
      Precision = 18
      Size = 2
    end
    object FDQueryEstoquePRECENTO_PRAZO_LUCRO: TCurrencyField
      FieldName = 'PRECENTO_PRAZO_LUCRO'
      Origin = 'PRECENTO_PRAZO_LUCRO'
    end
    object FDQueryEstoqueQUANTIDADE_SAIDA: TIntegerField
      FieldName = 'QUANTIDADE_SAIDA'
      Origin = 'QUANTIDADE_SAIDA'
    end
    object FDQueryEstoqueID_GRUPO: TIntegerField
      FieldName = 'ID_GRUPO'
      Origin = 'ID_GRUPO'
    end
    object FDQueryEstoqueID_SUBGRUPO: TIntegerField
      FieldName = 'ID_SUBGRUPO'
      Origin = 'ID_SUBGRUPO'
    end
    object FDQueryEstoqueQUANTIDADE_ENTRADA: TIntegerField
      FieldName = 'QUANTIDADE_ENTRADA'
      Origin = 'QUANTIDADE_ENTRADA'
    end
    object FDQueryEstoqueQUANTIDADE_ATUAL: TIntegerField
      FieldName = 'QUANTIDADE_ATUAL'
      Origin = 'QUANTIDADE_ATUAL'
    end
    object FDQueryEstoqueQTE_MINIMA: TIntegerField
      FieldName = 'QTE_MINIMA'
      Origin = 'QTE_MINIMA'
    end
  end
  object DataSourceEstoque: TDataSource
    DataSet = FDQueryEstoque
    Left = 896
    Top = 368
  end
  object frEstoque: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44737.612866516200000000
    ReportOptions.LastChange = 44737.612866516200000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 296
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
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
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1CODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779529999999994000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."CODIGO"]')
        end
        object frxDBDataset1PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 102.047310000000000000
          Top = 3.779530000000000000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."PRODUTO"]')
        end
        object frxDBDataset1QUANTIDADE_ATUAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 638.740570000000000000
          Top = 3.779530000000010000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE_ATUAL'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."QUANTIDADE_ATUAL"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSourceEstoque
    BCDToCurrency = False
    DataSetOptions = []
    Left = 488
    Top = 344
  end
end
