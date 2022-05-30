object frmPesquisaAvancadaVenda: TfrmPesquisaAvancadaVenda
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avancada Venda'
  ClientHeight = 656
  ClientWidth = 1121
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 137
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 240
      Top = 29
      Width = 71
      Height = 13
      Caption = 'Data da venda'
    end
    object Label2: TLabel
      Left = 261
      Top = 69
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 66
      Height = 13
      Caption = 'Codigo Venda'
    end
    object edtData1: TDateTimePicker
      Left = 232
      Top = 48
      Width = 97
      Height = 21
      Date = 44710.029247777780000000
      Time = 44710.029247777780000000
      TabOrder = 0
    end
    object edtData2: TDateTimePicker
      Left = 232
      Top = 88
      Width = 97
      Height = 21
      Date = 0.029247777776618020
      Time = 0.029247777776618020
      TabOrder = 1
    end
    object edtCodigoVenda: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object CheckBox1: TCheckBox
      Left = 424
      Top = 40
      Width = 97
      Height = 17
      Caption = 'CheckBox1'
      TabOrder = 3
    end
    object edtFiltro: TEdit
      Left = 8
      Top = 83
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 4
    end
    object Filtra: TButton
      Left = 584
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Filtra'
      TabOrder = 5
      OnClick = FiltraClick
    end
    object btnImprimir: TButton
      Left = 704
      Top = 48
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = btnImprimirClick
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 137
    Width = 1121
    Height = 519
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Venda'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1113
        Height = 450
        Align = alClient
        DataSource = DSFiltro
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODCLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODIGO_1'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_FATURAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOME'
            Visible = True
          end>
      end
      object Painel: TPanel
        Left = 0
        Top = 450
        Width = 1113
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtValorTotal: TEdit
          Left = 580
          Top = 14
          Width = 225
          Height = 21
          Alignment = taRightJustify
          TabOrder = 0
          OnChange = edtValorTotalChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens venda'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1113
        Height = 491
        Align = alClient
        DataSource = DTFiltroVendaItens
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ESTOQUE'
            Visible = True
          end>
      end
    end
  end
  object FDQueryFiltro: TFDQuery
    Active = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select v.codigo,'
      'v.codcliente,'
      'c.codigo,'
      'c.nome,'
      'v.datavenda,'
      'v.data_faturamento,'
      'v.valortotal,'
      'v.usu_nome'
      
        'from saida_venda v inner join cliente c on (v.codcliente = c.cod' +
        'igo)')
    Left = 880
    Top = 312
    object FDQueryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFiltroCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQueryFiltroCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryFiltroNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQueryFiltroDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      Required = True
    end
    object FDQueryFiltroDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQueryFiltroVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 30
    end
  end
  object DSFiltro: TDataSource
    DataSet = FDQueryFiltro
    Left = 872
    Top = 376
  end
  object frPesquisaavancadaVenda: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44710.688303553200000000
    ReportOptions.LastChange = 44710.767488125000000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 456
    Top = 376
    Datasets = <
      item
        DataSet = frxFiltrovenda
        DataSetName = 'frxFiltrovenda'
      end
      item
        DataSet = frxFiltroVendaItens
        DataSetName = 'frxFiltroVendaItens'
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
        Height = 30.236240000000000000
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        DataSet = frxFiltrovenda
        DataSetName = 'frxFiltrovenda'
        RowCount = 0
        object frxDBDataset1CODCLIENTE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODCLIENTE'
          DataSet = frxFiltrovenda
          DataSetName = 'frxFiltrovenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltrovenda."CODCLIENTE"]')
        end
        object frxDBDataset1DATAVENDA: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 442.205010000000000000
          Top = 3.779529999999990000
          Width = 272.126160000000000000
          Height = 18.897650000000000000
          DataField = 'DATAVENDA'
          DataSet = frxFiltrovenda
          DataSetName = 'frxFiltrovenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltrovenda."DATAVENDA"]')
        end
        object frxDBDataset1NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 94.488250000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxFiltrovenda
          DataSetName = 'frxFiltrovenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltrovenda."NOME"]')
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 22.677180000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxFiltrovendaUSU_NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'USU_NOME'
          DataSet = frxFiltrovenda
          DataSetName = 'frxFiltrovenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxFiltrovenda."USU_NOME"]')
          ParentFont = False
        end
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 529.134200000000000000
          Top = 3.779530000000010000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 154.960730000000000000
        Width = 718.110700000000000000
        DataSet = frxFiltroVendaItens
        DataSetName = 'frxFiltroVendaItens'
        RowCount = 0
        object frxFiltroVendaItensCODPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559059999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxFiltroVendaItens
          DataSetName = 'frxFiltroVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltroVendaItens."CODPRODUTO"]')
        end
        object frxFiltroVendaItensNOME_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Top = 7.559059999999990000
          Width = 321.260050000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_PRODUTO'
          DataSet = frxFiltroVendaItens
          DataSetName = 'frxFiltroVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltroVendaItens."NOME_PRODUTO"]')
        end
        object frxFiltroVendaItensQUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 434.645950000000000000
          Top = 3.779529999999990000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxFiltroVendaItens
          DataSetName = 'frxFiltroVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltroVendaItens."QUANTIDADE"]')
        end
        object frxFiltroVendaItensVALORTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 7.559059999999990000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTAL'
          DataSet = frxFiltroVendaItens
          DataSetName = 'frxFiltroVendaItens'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltroVendaItens."VALORTOTAL"]')
        end
        object frxFiltroVendaItensVALORPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 532.913730000000000000
          Top = 7.559059999999990000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALORPRODUTO'
          DataSet = frxFiltroVendaItens
          DataSetName = 'frxFiltroVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxFiltroVendaItens."VALORPRODUTO"]')
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
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 249.448980000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779529999999990000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxFiltroVendaItens."VALORTOTAL">,DetailData1)]')
        end
      end
    end
  end
  object frxFiltrovenda: TfrxDBDataset
    UserName = 'frxFiltrovenda'
    CloseDataSource = False
    DataSet = FDQueryFiltro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 400
    Top = 464
  end
  object FDQueryFiltroVendaItens: TFDQuery
    Active = True
    IndexFieldNames = 'CODIGO'
    MasterSource = DSFiltro
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '   *'
      'from  saida_produto'
      '')
    Left = 1008
    Top = 312
    object FDQueryFiltroVendaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryFiltroVendaItensVALORPRODUTO: TBCDField
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroVendaItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQueryFiltroVendaItensVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroVendaItensNOME_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_PRODUTO'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Origin = 'NOME_PRODUTO'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object FDQueryFiltroVendaItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object FDQueryFiltroVendaItensQTE_ESTOQUE: TFloatField
      FieldName = 'QTE_ESTOQUE'
      Origin = 'QTE_ESTOQUE'
    end
  end
  object DTFiltroVendaItens: TDataSource
    DataSet = FDQueryFiltroVendaItens
    Left = 1008
    Top = 360
  end
  object frxFiltroVendaItens: TfrxDBDataset
    UserName = 'frxFiltroVendaItens'
    CloseDataSource = False
    DataSource = DTFiltroVendaItens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 492
    Top = 464
  end
end
