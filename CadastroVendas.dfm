object frmCadastroVendas: TfrmCadastroVendas
  Left = 0
  Top = 0
  Caption = 'tela Vendas'
  ClientHeight = 685
  ClientWidth = 1295
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = PopupMenuMause
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1295
    Height = 644
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisar'
      object DBGrid_Venda: TDBGrid
        Left = 0
        Top = 57
        Width = 1287
        Height = 559
        Align = alClient
        DataSource = DM_Vendas.DT_Saida_Venda
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
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
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENDA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRETE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COND_PAGAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SUBCONTA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TIPO_PGTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_DESC'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_FATURAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CANCELAMENTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ORCAMENTO'
            Width = 64
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1287
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 19
          Top = -2
          Width = 65
          Height = 13
          Caption = 'Pesquisar por'
        end
        object Label11: TLabel
          Left = 219
          Top = 0
          Width = 60
          Height = 13
          Caption = 'Procurar por'
        end
        object Label10: TLabel
          Left = 116
          Top = 0
          Width = 35
          Height = 13
          Caption = 'Crit'#233'rio'
        end
        object CB_opcao: TComboBox
          Left = 19
          Top = 17
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Text = 'CODIGO'
          Items.Strings = (
            'CODIGO'
            'NOME')
        end
        object CB_Opcao2: TComboBox
          Left = 116
          Top = 17
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'INICIADO COM'
          Items.Strings = (
            'INICIADO COM'
            'QUE CONT'#202'M'
            'IGUAL')
        end
        object edt_Pesquisa: TEdit
          Left = 219
          Top = 17
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnPesquisa: TButton
          Left = 688
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 3
          OnClick = btnPesquisaClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1287
        Height = 169
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object Label1: TLabel
          Left = 8
          Top = 53
          Width = 41
          Height = 13
          Caption = 'CODIGO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 88
          Top = 53
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = DBECod_Cliente
        end
        object Label3: TLabel
          Left = 329
          Top = 57
          Width = 60
          Height = 13
          Caption = 'DATAVENDA'
        end
        object Label5: TLabel
          Left = 12
          Top = 103
          Width = 20
          Height = 13
          Caption = 'OBS'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 141
          Top = 53
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
          FocusControl = DBECod_Cliente
        end
        object Label4: TLabel
          Left = 619
          Top = 79
          Width = 97
          Height = 13
          Caption = 'COND_PAGAMENTO'
        end
        object Label8: TLabel
          Left = 425
          Top = 79
          Width = 22
          Height = 13
          Caption = 'DOC'
        end
        object Label12: TLabel
          Left = 420
          Top = 54
          Width = 35
          Height = 13
          Caption = 'CONTA'
        end
        object Label13: TLabel
          Left = 659
          Top = 53
          Width = 57
          Height = 13
          Caption = 'SUB CONTA'
        end
        object SpeedButton2: TSpeedButton
          Left = 287
          Top = 72
          Width = 23
          Height = 22
          OnClick = SpeedButton2Click
        end
        object Label18: TLabel
          Left = 1099
          Top = 102
          Width = 97
          Height = 13
          Caption = 'DATA_ORCAMENTO'
          FocusControl = DBEdit2
        end
        object Label17: TLabel
          Left = 1082
          Top = 76
          Width = 114
          Height = 13
          Caption = 'DATA_CANCELAMENTO'
          FocusControl = DBEdit3
        end
        object Label16: TLabel
          Left = 1088
          Top = 51
          Width = 108
          Height = 13
          Caption = 'DATA_FATURAMENTO'
        end
        object Label15: TLabel
          Left = 1130
          Top = 26
          Width = 52
          Height = 13
          Caption = 'SITUACAO'
        end
        object Label19: TLabel
          Left = 760
          Top = 120
          Width = 45
          Height = 13
          Caption = 'PARCELA'
          FocusControl = DBEdit7
        end
        object Label20: TLabel
          Left = 912
          Top = 120
          Width = 119
          Height = 13
          Caption = 'DIAS_ENTRE_PARCELAS'
          FocusControl = DBEdit8
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 72
          Width = 51
          Height = 21
          DataField = 'CODIGO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 0
        end
        object DBECod_Cliente: TDBEdit
          Left = 72
          Top = 72
          Width = 49
          Height = 21
          DataField = 'CODCLIENTE'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 122
          Width = 683
          Height = 21
          DataField = 'OBS'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 2
        end
        object DbData: TDBEdit
          Left = 329
          Top = 72
          Width = 73
          Height = 21
          DataField = 'DATAVENDA'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 3
        end
        object DBLookupCB_Cond_pgto: TDBLookupComboBox
          Left = 722
          Top = 76
          Width = 145
          Height = 21
          DataField = 'COND_PAGAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.Dt_Condicao_pagamento
          TabOrder = 4
        end
        object btnNovo: TButton
          Left = 12
          Top = 9
          Width = 71
          Height = 25
          Caption = 'Novo'
          TabOrder = 5
          OnClick = btnNovoClick
        end
        object btnEdit: TButton
          Left = 89
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Edite'
          TabOrder = 6
          OnClick = btnEditClick
        end
        object btnDeletar: TButton
          Left = 170
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Deletar'
          TabOrder = 7
          OnClick = btnDeletarClick
        end
        object btnSalvar: TButton
          Left = 248
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 8
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 329
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 9
          OnClick = btnCancelarClick
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 467
          Top = 76
          Width = 145
          Height = 21
          DataField = 'ID_TIPO_PGTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Tipo_Pgto
          TabOrder = 10
        end
        object DBLookupCB_conta: TDBLookupComboBox
          Left = 467
          Top = 49
          Width = 145
          Height = 21
          DataField = 'ID_CONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Conta
          TabOrder = 11
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 722
          Top = 49
          Width = 145
          Height = 21
          DataField = 'ID_SUBCONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO_SUB'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_SubConta
          TabOrder = 12
        end
        object DBEdit4: TDBEdit
          Left = 868
          Top = 11
          Width = 123
          Height = 21
          DataField = 'USU_NOME'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 13
        end
        object DBNavigator1: TDBNavigator
          Left = 654
          Top = 8
          Width = 208
          Height = 25
          DataSource = DM_Vendas.DT_Saida_Venda
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
          TabOrder = 14
        end
        object DBLookupCB_Cliente: TDBLookupComboBox
          Left = 127
          Top = 72
          Width = 145
          Height = 21
          DataField = 'CODCLIENTE'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.DT_cliente
          TabOrder = 15
        end
        object Sitação: TRadioGroup
          Left = 1072
          Top = 8
          Width = 214
          Height = 146
          Caption = 'Sita'#231#227'o'
          TabOrder = 16
        end
        object DBEdit2: TDBEdit
          Left = 1202
          Top = 100
          Width = 73
          Height = 21
          DataField = 'DATA_ORCAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 17
        end
        object DBEdit3: TDBEdit
          Left = 1202
          Top = 73
          Width = 73
          Height = 21
          DataField = 'DATA_CANCELAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 18
        end
        object DB_Data_Faturamento: TDBEdit
          Left = 1202
          Top = 48
          Width = 73
          Height = 21
          DataField = 'DATA_FATURAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 19
        end
        object DBComboBox2: TDBComboBox
          Left = 1202
          Top = 23
          Width = 73
          Height = 21
          DataField = 'SITUACAO'
          DataSource = DM_Vendas.DT_Saida_Venda
          Items.Strings = (
            'FATURADO'
            'CANCELADO'
            'ORCAMENTO')
          TabOrder = 20
        end
        object btnImprimir: TBitBtn
          Left = 425
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Imprimir'
          Style = bsWin31
          TabOrder = 21
          OnClick = btnImprimirClick
        end
        object DBEdit7: TDBEdit
          Left = 760
          Top = 139
          Width = 134
          Height = 21
          DataField = 'PARCELA'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 22
        end
        object DBEdit8: TDBEdit
          Left = 912
          Top = 136
          Width = 134
          Height = 21
          DataField = 'DIAS_ENTRE_PARCELAS'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 23
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 511
        Width = 1287
        Height = 105
        Align = alBottom
        TabOrder = 1
        object Label14: TLabel
          Left = 17
          Top = 1
          Width = 55
          Height = 13
          Caption = 'DESCONTO'
        end
        object Label7: TLabel
          Left = 18
          Top = 43
          Width = 31
          Height = 13
          Caption = 'FRETE'
        end
        object DBSomaTotal: TDBEdit
          Left = 551
          Top = 16
          Width = 314
          Height = 21
          DataField = 'VALORTOTAL'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 0
        end
        object btn_Totaliza: TButton
          Left = 416
          Top = 14
          Width = 75
          Height = 25
          Caption = 'Totaliza'
          TabOrder = 1
          OnClick = btn_TotalizaClick
        end
        object btnGerarLancamento: TButton
          Left = 912
          Top = 6
          Width = 113
          Height = 25
          Caption = 'Gerar Lan'#231'amento'
          TabOrder = 2
          OnClick = btnGerarLancamentoClick
        end
        object DBC_Desconto: TDBComboBox
          Left = 17
          Top = 16
          Width = 44
          Height = 21
          DataField = 'TIPO_DESC'
          DataSource = DM_Vendas.DT_Saida_Venda
          Items.Strings = (
            'R$'
            '%')
          TabOrder = 3
        end
        object DBE_Desconto: TDBEdit
          Left = 74
          Top = 16
          Width = 121
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 4
          OnEnter = DBE_DescontoEnter
          OnExit = DBE_DescontoExit
        end
        object DBEdit6: TDBEdit
          Left = 19
          Top = 62
          Width = 64
          Height = 21
          DataField = 'FRETE'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 5
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 169
        Width = 1287
        Height = 342
        Align = alClient
        DataSource = DM_Vendas.DTProduto
        TabOrder = 2
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
            FieldName = 'CODPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ESTOQUE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 644
    Width = 1295
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object btnPesquisaAvancadaVenda: TButton
      Left = 16
      Top = 6
      Width = 60
      Height = 25
      Caption = 'Avan'#231'ada'
      TabOrder = 0
      OnClick = btnPesquisaAvancadaVendaClick
    end
  end
  object frVendas: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.926040381900000000
    ReportOptions.LastChange = 44712.950230289400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 1004
    Top = 200
    Datasets = <
      item
        DataSet = frxDadosvenda
        DataSetName = 'frxDadosvenda'
      end
      item
        DataSet = frxItens_vendas
        DataSetName = 'frxItens_vendas'
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
        Height = 98.267780000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."CODIGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo venda')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo do cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 71.811070000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 79.370130000000000000
          Top = 71.811070000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 71.811070000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 71.811070000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor unitario')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 71.811070000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 56.692950000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data venda:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."DATA_FATURAMENTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."CODCLIENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object frxDadosvendaUSU_NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 30.236240000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'USU_NOME'
          DataSet = frxDadosvenda
          DataSetName = 'frxDadosvenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."USU_NOME"]')
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
        Height = 26.456710000000000000
        Top = 177.637910000000000000
        Width = 718.110700000000000000
        DataSet = frxItens_vendas
        DataSetName = 'frxItens_vendas'
        RowCount = 0
        object frxItens_vendasVALORPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'VALORPRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItens_vendas."VALORPRODUTO"]')
          ParentFont = False
        end
        object frxItens_vendasNOME_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 2.000000000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_PRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItens_vendas."NOME_PRODUTO"]')
        end
        object frxItens_vendasQUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxItens_vendas."QUANTIDADE"]')
          ParentFont = False
        end
        object frxItens_vendasVALORTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 2.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTAL'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItens_vendas."VALORTOTAL"]')
          ParentFont = False
        end
        object frxItens_vendasCODPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItens_vendas."CODPRODUTO"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 309.921460000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = -0.000002439999999992
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = -0.000002439999999992
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxItens_vendas."VALORTOTAL">,MasterData1)]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 226.771800000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
        end
      end
    end
  end
  object frxDadosvenda: TfrxDBDataset
    UserName = 'frxDadosvenda'
    CloseDataSource = False
    DataSet = DM_Vendas.FDQuerySaida_Venda
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1004
    Top = 248
  end
  object frxItens_vendas: TfrxDBDataset
    UserName = 'frxItens_vendas'
    CloseDataSource = False
    DataSet = DM_Vendas.FDQuerySaidaProduto
    BCDToCurrency = False
    DataSetOptions = []
    Left = 1004
    Top = 312
  end
  object frxPDFExport1: TfrxPDFExport
    FileName = '.pdf'
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    CreationTime = 44714.118878159720000000
    DataOnly = False
    EmbedFontsIfProtected = False
    InteractiveFormsFontSubset = 'A-Z,a-z,0-9,#43-#47 '
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    Creator = 'FastReport'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    PDFStandard = psNone
    PDFVersion = pv17
    Left = 996
    Top = 432
  end
  object PopupMenu1: TPopupMenu
    Left = 616
    Top = 248
    object Cliente1: TMenuItem
      Caption = 'Cliente'
      OnClick = Cliente1Click
    end
    object Cliente21: TMenuItem
      Caption = 'Cliente2'
      OnClick = Cliente21Click
    end
  end
  object frxCliente2: TfrxDBDataset
    UserName = 'frxCliente2'
    CloseDataSource = False
    FieldAliases.Strings = (
      'DATAVENDA=DATAVENDA'
      'VALORTOTAL=VALORTOTAL'
      'USU_NOME=USU_NOME'
      'FRETE=FRETE'
      'NOME=NOME'
      'CODCLIENTE=CODCLIENTE'
      'TIPO_DESC=TIPO_DESC'
      'DESCONTO=DESCONTO')
    DataSet = FDQueryVendasCliente2
    BCDToCurrency = False
    DataSetOptions = []
    Left = 212
    Top = 392
  end
  object frCliente2: TfrxReport
    Version = '2022.2.5'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.926040381900000000
    ReportOptions.LastChange = 44719.940968784700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 164
    Top = 304
    Datasets = <
      item
        DataSet = frxDadosvenda
        DataSetName = 'frxDadosvenda'
      end
      item
        DataSet = frxItens_vendas
        DataSetName = 'frxItens_vendas'
      end
      item
        DataSet = frxCliente2
        DataSetName = 'frxCliente2'
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
        Height = 200.315090000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."CODIGO"]')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo venda')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo do cliente')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 170.078850000000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo:')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o Produto')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 427.086890000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor unitario')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 566.929500000000000000
          Top = 170.078850000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
        object Line1: TfrxLineView
          AllowVectorExport = True
          Top = 162.519790000000000000
          Width = 710.551640000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Data venda:')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 646.299630000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = 'dd.mm.yyyy'
          DisplayFormat.Kind = fkDateTime
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."DATA_FATURAMENTO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 132.283550000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."CODCLIENTE"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 544.252320000000000000
          Top = 30.236240000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object frxDadosvendaUSU_NOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 30.236240000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'USU_NOME'
          DataSet = frxDadosvenda
          DataSetName = 'frxDadosvenda'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDadosvenda."USU_NOME"]')
          ParentFont = False
        end
        object frxCliente2FRETE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 60.472480000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'FRETE'
          DataSet = frxCliente2
          DataSetName = 'frxCliente2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente2."FRETE"]')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 548.031850000000000000
          Top = 60.472480000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor frete')
          ParentFont = False
        end
        object frxCliente2TIPO_DESC: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 90.708720000000000000
          Width = 26.456710000000000000
          Height = 18.897650000000000000
          DataSet = frxCliente2
          DataSetName = 'frxCliente2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente2."TIPO_DESC"]')
          ParentFont = False
        end
        object frxCliente2DESCONTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 642.520100000000000000
          Top = 90.708720000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'DESCONTO'
          DataSet = frxCliente2
          DataSetName = 'frxCliente2'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente2."DESCONTO"]')
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
        Height = 26.456710000000000000
        Top = 279.685220000000000000
        Width = 718.110700000000000000
        DataSet = frxItens_vendas
        DataSetName = 'frxItens_vendas'
        RowCount = 0
        object frxItens_vendasVALORPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 430.866420000000000000
          Top = 2.000000000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'VALORPRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItens_vendas."VALORPRODUTO"]')
          ParentFont = False
        end
        object frxItens_vendasNOME_PRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 2.000000000000000000
          Width = 204.094620000000000000
          Height = 18.897650000000000000
          DataField = 'NOME_PRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItens_vendas."NOME_PRODUTO"]')
        end
        object frxItens_vendasQUANTIDADE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 294.803340000000000000
          Top = 2.000000000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'QUANTIDADE'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxItens_vendas."QUANTIDADE"]')
          ParentFont = False
        end
        object frxItens_vendasVALORTOTAL: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 2.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          DataField = 'VALORTOTAL'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxItens_vendas."VALORTOTAL"]')
          ParentFont = False
        end
        object frxItens_vendasCODPRODUTO: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 3.779530000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxItens_vendas
          DataSetName = 'frxItens_vendas'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxItens_vendas."CODPRODUTO"]')
        end
      end
      object ReportSummary1: TfrxReportSummary
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 411.968770000000000000
        Width = 718.110700000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = -0.000002439999999992
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[COUNT(MasterData1)]')
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 619.842920000000000000
          Top = -0.000002440000002935
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.FormatStr = '%2.2m'
          DisplayFormat.Kind = fkNumeric
          Frame.Typ = []
          Memo.UTF8W = (
            '[SUM(<frxItens_vendas."VALORTOTAL">)]')
        end
        object Line2: TfrxLineView
          AllowVectorExport = True
          Width = 721.890230000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 328.819110000000000000
        Width = 718.110700000000000000
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 634.961040000000000000
          Width = 79.370130000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            '[Page]')
        end
      end
    end
  end
  object FDQueryVendasCliente2: TFDQuery
    Active = True
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '    saida_venda.datavenda,'
      '    saida_venda.valortotal,'
      '    saida_venda.usu_nome,'
      '    saida_venda.frete,'
      '    saida_venda.nome,'
      '    saida_venda.codcliente,'
      '    saida_venda.tipo_desc,'
      '    saida_venda.desconto'
      'from saida_venda')
    Left = 116
    Top = 392
    object FDQueryVendasCliente2DATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      Required = True
    end
    object FDQueryVendasCliente2VALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryVendasCliente2USU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 30
    end
    object FDQueryVendasCliente2FRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'FRETE'
      Precision = 18
      Size = 2
    end
    object FDQueryVendasCliente2NOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 40
    end
    object FDQueryVendasCliente2CODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQueryVendasCliente2TIPO_DESC: TStringField
      FieldName = 'TIPO_DESC'
      Origin = 'TIPO_DESC'
      FixedChar = True
      Size = 2
    end
    object FDQueryVendasCliente2DESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Precision = 18
      Size = 2
    end
  end
  object PopupMenuMause: TPopupMenu
    Left = 500
    Top = 336
    object Produto1: TMenuItem
      Caption = 'Produto'
    end
  end
end
