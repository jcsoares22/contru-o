object frmCadastroVendas: TfrmCadastroVendas
  Left = 0
  Top = 0
  Caption = 'tela Vendas'
  ClientHeight = 685
  ClientWidth = 1164
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
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1164
    Height = 685
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisar'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1156
        Height = 49
        Align = alTop
        TabOrder = 0
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
      object DBGrid_Venda: TDBGrid
        Left = 0
        Top = 49
        Width = 1156
        Height = 608
        Align = alClient
        DataSource = DM_Vendas.DT_Saida_Venda
        TabOrder = 1
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
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastroo'
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1156
        Height = 233
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
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
          Left = 296
          Top = 57
          Width = 60
          Height = 13
          Caption = 'DATAVENDA'
        end
        object Label5: TLabel
          Left = 16
          Top = 171
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
          Left = 211
          Top = 143
          Width = 97
          Height = 13
          Caption = 'COND_PAGAMENTO'
        end
        object Label8: TLabel
          Left = 17
          Top = 143
          Width = 22
          Height = 13
          Caption = 'DOC'
        end
        object Label12: TLabel
          Left = 12
          Top = 118
          Width = 35
          Height = 13
          Caption = 'CONTA'
        end
        object Label13: TLabel
          Left = 251
          Top = 117
          Width = 57
          Height = 13
          Caption = 'SUB CONTA'
        end
        object Label14: TLabel
          Left = 492
          Top = 57
          Width = 55
          Height = 13
          Caption = 'DESCONTO'
        end
        object Label7: TLabel
          Left = 492
          Top = 110
          Width = 31
          Height = 13
          Caption = 'FRETE'
          FocusControl = DBEdit6
        end
        object Label17: TLabel
          Left = 856
          Top = 68
          Width = 114
          Height = 13
          Caption = 'DATA_CANCELAMENTO'
          FocusControl = DBEdit3
        end
        object Label16: TLabel
          Left = 848
          Top = 12
          Width = 108
          Height = 13
          Caption = 'DATA_FATURAMENTO'
          FocusControl = DB_Data_Faturamento
        end
        object Label15: TLabel
          Left = 1000
          Top = 15
          Width = 52
          Height = 13
          Caption = 'SITUACAO'
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
        object DBLookupComboBox1: TDBLookupComboBox
          AlignWithMargins = True
          Left = 136
          Top = 72
          Width = 145
          Height = 21
          DataField = 'CODCLIENTE'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.DT_cliente
          TabOrder = 2
        end
        object DBEdit5: TDBEdit
          Left = 4
          Top = 190
          Width = 1074
          Height = 21
          DataField = 'OBS'
          TabOrder = 3
        end
        object DbData: TDBEdit
          Left = 296
          Top = 72
          Width = 73
          Height = 21
          DataField = 'DATAVENDA'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 4
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 314
          Top = 140
          Width = 145
          Height = 21
          DataField = 'COND_PAGAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'NOME'
          ListSource = DM_Cadastro.Dt_Condicao_pagamento
          TabOrder = 5
        end
        object btnNovo: TButton
          Left = 16
          Top = 9
          Width = 71
          Height = 25
          Caption = 'Novo'
          TabOrder = 6
          OnClick = btnNovoClick
        end
        object btnEdit: TButton
          Left = 112
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Edite'
          TabOrder = 7
          OnClick = btnEditClick
        end
        object btnDeletar: TButton
          Left = 200
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Deletar'
          TabOrder = 8
          OnClick = btnDeletarClick
        end
        object btnSalvar: TButton
          Left = 281
          Top = 7
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 9
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 384
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 10
          OnClick = btnCancelarClick
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 59
          Top = 140
          Width = 145
          Height = 21
          DataField = 'ID_TIPO_PGTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'ID'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Tipo_Pgto
          TabOrder = 11
        end
        object DBLookupCB_conta: TDBLookupComboBox
          Left = 59
          Top = 113
          Width = 145
          Height = 21
          DataField = 'ID_CONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_Conta
          TabOrder = 12
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 314
          Top = 113
          Width = 145
          Height = 21
          DataField = 'ID_SUBCONTA'
          DataSource = DM_Vendas.DT_Saida_Venda
          KeyField = 'CODIGO_SUB'
          ListField = 'DESCRICAO'
          ListSource = DM_Cadastro.DT_SubConta
          TabOrder = 13
        end
        object DBC_Desconto: TDBComboBox
          Left = 492
          Top = 76
          Width = 44
          Height = 21
          DataField = 'TIPO_DESC'
          DataSource = DM_Vendas.DT_Saida_Venda
          Items.Strings = (
            'R$'
            '%')
          TabOrder = 14
        end
        object DBEdit6: TDBEdit
          Left = 551
          Top = 103
          Width = 64
          Height = 21
          DataField = 'FRETE'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 15
        end
        object DBE_Desconto: TDBEdit
          Left = 553
          Top = 76
          Width = 121
          Height = 21
          DataField = 'DESCONTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 16
          OnEnter = DBE_DescontoEnter
          OnExit = DBE_DescontoExit
        end
        object DBEdit3: TDBEdit
          Left = 856
          Top = 87
          Width = 134
          Height = 21
          DataField = 'DATA_CANCELAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 17
        end
        object DB_Data_Faturamento: TDBEdit
          Left = 848
          Top = 31
          Width = 73
          Height = 21
          DataField = 'DATA_FATURAMENTO'
          DataSource = DM_Vendas.DT_Saida_Venda
          TabOrder = 18
        end
        object DBComboBox2: TDBComboBox
          Left = 984
          Top = 34
          Width = 145
          Height = 21
          DataField = 'SITUACAO'
          DataSource = DM_Vendas.DT_Saida_Venda
          Items.Strings = (
            'Faturado'
            'Cancelado')
          TabOrder = 19
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 616
        Width = 1156
        Height = 41
        Align = alBottom
        TabOrder = 2
        object DBSomaTotal: TDBEdit
          Left = 551
          Top = 6
          Width = 314
          Height = 21
          DataField = 'VALORTOTAL'
          DataSource = DM_Vendas.DT_Saida_Venda
          ReadOnly = True
          TabOrder = 0
        end
        object btn_Totaliza: TButton
          Left = 416
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
      end
      object DBGridVendas: TDBGrid
        Left = 0
        Top = 233
        Width = 1156
        Height = 383
        Align = alClient
        DataSource = DM_Vendas.DT_SaidaProduto
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
            FieldName = 'CODPRODUTO'
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
            FieldName = 'VALORPRODUTO'
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
            FieldName = 'COD_VENDA'
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
  object Timer1: TTimer
    Left = 964
    Top = 360
  end
end
