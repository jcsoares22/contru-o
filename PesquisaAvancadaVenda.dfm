object frmPesquisaAvancadaVenda: TfrmPesquisaAvancadaVenda
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avancada Venda'
  ClientHeight = 656
  ClientWidth = 1126
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label6: TLabel
    Left = 493
    Top = 69
    Width = 17
    Height = 13
    Caption = 'At'#233
  end
  object Label7: TLabel
    Left = 472
    Top = 29
    Width = 109
    Height = 13
    Caption = 'Data da Cancelamento'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1126
    Height = 233
    Align = alTop
    TabOrder = 0
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 66
      Height = 13
      Caption = 'Codigo Venda'
    end
    object Label5: TLabel
      Left = 373
      Top = 69
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object Label4: TLabel
      Left = 352
      Top = 29
      Width = 103
      Height = 13
      Caption = 'Data da Faturamento'
    end
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
    object edtCodigoVenda: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 0
    end
    object Filtra: TButton
      Left = 880
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Filtra'
      TabOrder = 1
      OnClick = FiltraClick
    end
    object btnImprimir: TButton
      Left = 880
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 2
      OnClick = btnImprimirClick
    end
    object cbSituacao: TComboBox
      Left = 952
      Top = 138
      Width = 145
      Height = 21
      TabOrder = 3
      Items.Strings = (
        'FATURADO'
        'CANCELADO'
        'ORCAMENTO')
    end
    object ComboBoxVendedor: TComboBox
      Left = 952
      Top = 171
      Width = 145
      Height = 21
      TabOrder = 4
    end
    object edtDataVendaIni: TDateEdit
      Left = 231
      Top = 48
      Width = 98
      Height = 21
      NumGlyphs = 2
      TabOrder = 5
    end
    object edtDataVendaFinal: TDateEdit
      Left = 231
      Top = 88
      Width = 98
      Height = 21
      NumGlyphs = 2
      TabOrder = 6
    end
    object DateEditFaturamentoIni: TDateEdit
      Left = 352
      Top = 48
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 7
    end
    object DateEditFaturamentoFinal: TDateEdit
      Left = 352
      Top = 88
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 8
    end
    object DateEditCancelamentoIni: TDateEdit
      Left = 472
      Top = 48
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 9
    end
    object DateEditCancelamentoFinal: TDateEdit
      Left = 472
      Top = 88
      Width = 89
      Height = 21
      NumGlyphs = 2
      TabOrder = 10
    end
    object comboBoxCliente: TComboBox
      Left = 16
      Top = 128
      Width = 230
      Height = 21
      TabOrder = 11
      Text = 'comboBoxCliente'
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 233
    Width = 1126
    Height = 423
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Venda'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 354
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
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end>
      end
      object Painel: TPanel
        Left = 0
        Top = 354
        Width = 1118
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtValorTotal: TEdit
          Left = 640
          Top = 6
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'edtValorTotal'
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
        Width = 1118
        Height = 395
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
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select v.codigo,'
      'v.codcliente,'
      'c.codigo,'
      'c.nome,'
      'v.datavenda,'
      'v.DATA_FATURAMENTO,     '
      'v.DATA_CANCELAMENTO,   '
      'v.DATA_ORCAMENTO,   '
      'v.data_faturamento,'
      'v.valortotal,'
      'v.usu_nome,'
      'v.situacao'
      
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
    object FDQueryFiltroUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 30
    end
    object FDQueryFiltroSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object FDQueryFiltroVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroDATA_CANCELAMENTO: TSQLTimeStampField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = 'DATA_CANCELAMENTO'
    end
    object FDQueryFiltroDATA_ORCAMENTO: TSQLTimeStampField
      FieldName = 'DATA_ORCAMENTO'
      Origin = 'DATA_ORCAMENTO'
    end
    object FDQueryFiltroDATA_FATURAMENTO_1: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO_1'
      Origin = 'DATA_FATURAMENTO'
      ProviderFlags = []
      EditMask = '!99/99/0000;1;_'
    end
  end
  object DSFiltro: TDataSource
    DataSet = FDQueryFiltro
    Left = 872
    Top = 376
  end
  object FDQueryFiltroVendaItens: TFDQuery
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
    Left = 1016
    Top = 376
  end
  object FDQueryUsuario: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from usuario')
    Left = 384
    Top = 512
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
    ReportOptions.LastChange = 44710.651202673600000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 368
    Top = 328
    Datasets = <
      item
        DataSet = frxVenda
        DataSetName = 'frxVenda'
      end
      item
        DataSet = frxVendaItens
        DataSetName = 'frxVendaItens'
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
        Top = 147.401670000000000000
        Width = 718.110700000000000000
        DataSet = frxVenda
        DataSetName = 'frxVenda'
        RowCount = 0
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = -0.220470000000000000
          Top = 22.677180000000000000
          Width = 725.669760000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object frxVendaCODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxVenda
          DataSetName = 'frxVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVenda."CODIGO"]')
        end
        object frxVendaNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 113.385900000000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxVenda
          DataSetName = 'frxVenda'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVenda."NOME"]')
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 26.456710000000000000
        Top = 204.094620000000000000
        Width = 718.110700000000000000
        DataSet = frxVendaItens
        DataSetName = 'frxVendaItens'
        RowCount = 0
        object frxVendaItensCODPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxVendaItens
          DataSetName = 'frxVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVendaItens."CODPRODUTO"]')
        end
        object frxVendaItensNOME_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 98.267780000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_PRODUTO'
          DataSet = frxVendaItens
          DataSetName = 'frxVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVendaItens."NOME_PRODUTO"]')
        end
        object frxVendaItensQUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 340.157700000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxVendaItens
          DataSetName = 'frxVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVendaItens."QUANTIDADE"]')
        end
        object frxVendaItensVALORTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 627.401980000000000000
          Top = 3.779530000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTAL'
          DataSet = frxVendaItens
          DataSetName = 'frxVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVendaItens."VALORTOTAL"]')
        end
        object frxVendaItensVALORPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 472.441250000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'VALORPRODUTO'
          DataSet = frxVendaItens
          DataSetName = 'frxVendaItens'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxVendaItens."VALORPRODUTO"]')
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 68.031540000000000000
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
        Top = 291.023810000000000000
        Width = 718.110700000000000000
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 616.063390000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxVendaItens."VALORTOTAL">)]')
        end
      end
    end
  end
  object frxVenda: TfrxDBDataset
    UserName = 'frxVenda'
    CloseDataSource = False
    DataSet = FDQueryFiltro
    BCDToCurrency = False
    DataSetOptions = []
    Left = 320
    Top = 408
  end
  object frxVendaItens: TfrxDBDataset
    UserName = 'frxVendaItens'
    CloseDataSource = False
    DataSet = FDQueryFiltroVendaItens
    BCDToCurrency = False
    DataSetOptions = []
    Left = 408
    Top = 416
  end
end
