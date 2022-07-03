object frmPesquisaAvancada: TfrmPesquisaAvancada
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avan'#231'ada'
  ClientHeight = 677
  ClientWidth = 1085
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 321
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 24
      Top = 69
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object UF: TLabel
      Left = 24
      Top = 117
      Width = 13
      Height = 13
      Caption = 'UF'
    end
    object Label4: TLabel
      Left = 280
      Top = 29
      Width = 69
      Height = 13
      Caption = 'Codigo Cliente'
    end
    object TSpeedButton
      Left = 666
      Top = 198
      Width = 97
      Height = 22
      Caption = 'Imprimir'
    end
    object ComboBoxCliente: TComboBox
      Left = 24
      Top = 40
      Width = 209
      Height = 21
      TabOrder = 4
    end
    object ComboBoxCidades: TComboBox
      Left = 24
      Top = 88
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object codigoCliente: TEdit
      Left = 280
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnPesquisar: TButton
      Left = 666
      Top = 136
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = btnPesquisarClick
    end
    object btnLimparCriterios: TButton
      Left = 666
      Top = 167
      Width = 97
      Height = 25
      Caption = 'Limpar Criterios'
      TabOrder = 3
      OnClick = btnLimparCriteriosClick
    end
    object MaskEdit1: TMaskEdit
      Left = 432
      Top = 48
      Width = 112
      Height = 21
      EditMask = '000\.000\.000\-00;'
      MaxLength = 14
      TabOrder = 5
      Text = '   .   .   -  '
    end
  end
  object ComboBoxEstado: TComboBox
    Left = 24
    Top = 136
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 321
    Width = 1085
    Height = 356
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    RowColor2 = 16776176
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_2'
        Visible = True
      end>
  end
  object FDQueryPesquisaAvancadas: TFDQuery
    Active = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      ''
      'select '
      '    cliente.codigo,'
      '    cliente.telefone,'
      '    cliente.cpf,'
      '    cliente.email,'
      '    cliente.nome,'
      '    cliente.descricao,'
      '    cliente.rua,'
      '    cliente.numero,'
      '    cliente.bairro,'
      '    estados.nome,'
      '    cidades.nome,'
      ' cliente.cidade_id,'
      '    cliente.bairro,'
      '    cidades.id'
      'from cidades'
      '   inner join cliente on (cidades.id = cliente.cidade_id)'
      '   inner join estados on (cliente.uf_id = estados.id)')
    Left = 904
    Top = 496
    object FDQueryPesquisaAvancadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryPesquisaAvancadasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 11
    end
    object FDQueryPesquisaAvancadasCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQueryPesquisaAvancadasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQueryPesquisaAvancadasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQueryPesquisaAvancadasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQueryPesquisaAvancadasRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 25
    end
    object FDQueryPesquisaAvancadasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 12
    end
    object FDQueryPesquisaAvancadasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQueryPesquisaAvancadasNOME_1: TStringField
      FieldName = 'NOME_1'
      Origin = 'NOME'
      Size = 75
    end
    object FDQueryPesquisaAvancadasNOME_2: TStringField
      FieldName = 'NOME_2'
      Origin = 'NOME'
      Size = 120
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQueryPesquisaAvancadas
    Left = 680
    Top = 528
  end
  object frxReportClientes: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44740.896163044000000000
    ReportOptions.LastChange = 44740.899417800920000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 536
    Top = 400
    Datasets = <
      item
        DataSet = frxDBDatasetClientes
        DataSetName = 'frxDBDatasetClientes'
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
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = -3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Codigo')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = -3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 351.496290000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = -3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Numero')
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
        Top = 102.047310000000000000
        Width = 718.110700000000000000
        RowCount = 0
        object frxDBDatasetClientesCODIGO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 45.354360000000000000
          Height = 18.897650000000000000
          DataField = 'CODIGO'
          DataSet = frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetClientes."CODIGO"]')
        end
        object frxDBDatasetClientesNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 64.252010000000000000
          Top = 4.000000000000000000
          Width = 268.346630000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetClientes."NOME"]')
        end
        object frxDBDatasetClientesCPF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 362.834880000000000000
          Top = 3.779530000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetClientes."CPF"]')
        end
        object frxDBDatasetClientesNUMERO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DataField = 'NUMERO'
          DataSet = frxDBDatasetClientes
          DataSetName = 'frxDBDatasetClientes'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDatasetClientes."NUMERO"]')
        end
      end
    end
  end
  object frxDBDatasetClientes: TfrxDBDataset
    UserName = 'frxDBDatasetClientes'
    CloseDataSource = False
    DataSet = FDQueryPesquisaAvancadas
    BCDToCurrency = False
    DataSetOptions = []
    Left = 464
    Top = 448
  end
end
