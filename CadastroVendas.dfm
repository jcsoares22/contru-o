﻿object frmCadastroVendas: TfrmCadastroVendas
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
    Top = 41
    Width = 1295
    Height = 603
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisar'
      object DBGrid_Venda: TDBGrid
        Left = 0
        Top = 57
        Width = 1287
        Height = 518
        Align = alClient
        DataSource = DM_Vendas.DT_Saida_Venda
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid_VendaDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
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
          Top = 10
          Width = 41
          Height = 13
          Caption = 'CODIGO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 88
          Top = 10
          Width = 10
          Height = 13
          Caption = 'Id'
          FocusControl = DBECod_Cliente
        end
        object Label3: TLabel
          Left = 329
          Top = 14
          Width = 60
          Height = 13
          Caption = 'DATAVENDA'
        end
        object Label5: TLabel
          Left = 12
          Top = 60
          Width = 20
          Height = 13
          Caption = 'OBS'
          FocusControl = DBEdit5
        end
        object Label6: TLabel
          Left = 141
          Top = 10
          Width = 63
          Height = 13
          Caption = 'Nome Cliente'
          FocusControl = DBECod_Cliente
        end
        object Label4: TLabel
          Left = 619
          Top = 36
          Width = 97
          Height = 13
          Caption = 'COND_PAGAMENTO'
        end
        object Label8: TLabel
          Left = 425
          Top = 36
          Width = 22
          Height = 13
          Caption = 'DOC'
        end
        object Label12: TLabel
          Left = 420
          Top = 11
          Width = 35
          Height = 13
          Caption = 'CONTA'
        end
        object Label13: TLabel
          Left = 659
          Top = 10
          Width = 57
          Height = 13
          Caption = 'SUB CONTA'
        end
        object SpeedButton2: TSpeedButton
          Left = 287
          Top = 29
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
          Left = 728
          Top = 55
          Width = 45
          Height = 13
          Caption = 'PARCELA'
          FocusControl = DBEdit7
        end
        object Label20: TLabel
          Left = 632
          Top = 149
          Width = 119
          Height = 13
          Caption = 'DIAS_ENTRE_PARCELAS'
          FocusControl = DBEdit8
        end
        object DBImage: TImage
          Left = 897
          Top = 38
          Width = 165
          Height = 107
          Stretch = True
        end
        object caminhoFoto: TLabel
          Left = 960
          Top = 96
          Width = 3
          Height = 13
        end
        object DBEdit1: TDBEdit
          Left = 8
          Top = 29
          Width = 51
          Height = 21
          DataField = 'CODIGO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 0
        end
        object DBECod_Cliente: TDBEdit
          Left = 72
          Top = 29
          Width = 49
          Height = 21
          DataField = 'CODCLIENTE'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 1
        end
        object DBEdit5: TDBEdit
          Left = 8
          Top = 79
          Width = 683
          Height = 21
          DataField = 'OBS'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 2
        end
        object DbData: TDBEdit
          Left = 329
          Top = 29
          Width = 73
          Height = 21
          DataField = 'DATAVENDA'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 3
        end
        object DBLookupCB_Cond_pgto: TDBLookupComboBox
          Left = 722
          Top = 33
          Width = 145
          Height = 21
          DataField = 'COND_PAGAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.Dt_Condicao_pagamento
          TabOrder = 4
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 467
          Top = 33
          Width = 145
          Height = 21
          DataField = 'ID_TIPO_PGTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Tipo_Pgto
          TabOrder = 5
        end
        object DBLookupCB_conta: TDBLookupComboBox
          Left = 467
          Top = 6
          Width = 145
          Height = 21
          DataField = 'ID_CONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Conta
          TabOrder = 6
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 722
          Top = 6
          Width = 145
          Height = 21
          DataField = 'ID_SUBCONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO_SUB'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_SubConta
          TabOrder = 7
        end
        object DBEdit4: TDBEdit
          Left = 868
          Top = 11
          Width = 123
          Height = 21
          DataField = 'USU_NOME'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 8
        end
        object DBLookupCB_Cliente: TDBLookupComboBox
          Left = 127
          Top = 29
          Width = 145
          Height = 21
          DataField = 'CODCLIENTE'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.DT_cliente
          TabOrder = 9
        end
        object Sitação: TRadioGroup
          Left = 1072
          Top = 8
          Width = 214
          Height = 146
          Caption = 'Sita'#231#227'o'
          TabOrder = 10
        end
        object DBEdit2: TDBEdit
          Left = 1202
          Top = 100
          Width = 73
          Height = 21
          DataField = 'DATA_ORCAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 11
        end
        object DBEdit3: TDBEdit
          Left = 1202
          Top = 73
          Width = 73
          Height = 21
          DataField = 'DATA_CANCELAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 12
        end
        object DB_Data_Faturamento: TDBEdit
          Left = 1202
          Top = 48
          Width = 73
          Height = 21
          DataField = 'DATA_FATURAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 13
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
          TabOrder = 14
        end
        object DBEdit7: TDBEdit
          Left = 728
          Top = 74
          Width = 134
          Height = 21
          DataField = 'PARCELA'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 15
        end
        object DBEdit8: TDBEdit
          Left = 757
          Top = 144
          Width = 134
          Height = 21
          DataField = 'DIAS_ENTRE_PARCELAS'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 16
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 470
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
          Left = 321
          Top = 6
          Width = 314
          Height = 21
          DataField = 'VALORTOTAL'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 0
        end
        object btn_Totaliza: TButton
          Left = 240
          Top = 6
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
        object DbValorDesconto: TDBEdit
          Left = 321
          Top = 33
          Width = 121
          Height = 21
          DataField = 'VALOR_PERC_DESCONTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 6
        end
      end
      object DBGridVendasItens: TDBGrid
        Left = 0
        Top = 169
        Width = 1287
        Height = 301
        Align = alClient
        DataSource = DM_Vendas.DTProduto
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGridVendasItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Title.Caption = 'COD PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ESTOQUE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORPRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Width = 64
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
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
  object Panel5: TPanel
    Left = 0
    Top = 0
    Width = 1295
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object btnNovo: TButton
      Left = 12
      Top = 9
      Width = 71
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 89
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Edite'
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDeletar: TButton
      Left = 170
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 2
      OnClick = btnDeletarClick
    end
    object btnSalvar: TButton
      Left = 248
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 329
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
    object btnImprimir: TBitBtn
      Left = 425
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      Style = bsWin31
      TabOrder = 5
      OnClick = btnImprimirClick
    end
    object DBNavigator1: TDBNavigator
      Left = 654
      Top = 8
      Width = 208
      Height = 25
      DataSource = DM_Vendas.DT_Saida_Venda
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 6
    end
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
    Left = 596
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
    Left = 108
    Top = 400
    object Produto1: TMenuItem
      Caption = 'Produto'
    end
  end
  object OpenDialogImage: TOpenDialog
    Filter = 'bitmap|*.bmp|jpg|*.jpg'
    Left = 884
    Top = 256
  end
  object frVendas: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44784.998324895830000000
    ReportOptions.LastChange = 44784.998324895830000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 756
    Top = 249
    Datasets = <>
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
    end
  end
  object frCliente2: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44784.998324895800000000
    ReportOptions.LastChange = 44784.998324895800000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 748
    Top = 321
    Datasets = <>
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
    end
    object DialogPage1: TfrxDialogPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      DoubleBuffered = False
      Height = 591.000000000000000000
      ClientHeight = 552.000000000000000000
      Left = 265.000000000000000000
      Top = 150.000000000000000000
      Width = 791.000000000000000000
      Scaled = True
      ClientWidth = 775.000000000000000000
    end
  end
end
