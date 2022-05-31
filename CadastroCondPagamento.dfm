object frmCadastroCondPagamento: TfrmCadastroCondPagamento
  Left = 0
  Top = 0
  Caption = 'frmCadastroCondPagamento'
  ClientHeight = 678
  ClientWidth = 1166
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
  object Cadastro: TPageControl
    Left = 0
    Top = 0
    Width = 1166
    Height = 678
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -154
    ExplicitTop = -258
    ExplicitWidth = 1320
    ExplicitHeight = 936
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      ExplicitWidth = 1312
      ExplicitHeight = 908
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DB_Codigo
      end
      object Label2: TLabel
        Left = 104
        Top = 56
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DB_nome
      end
      object Label3: TLabel
        Left = 560
        Top = 56
        Width = 90
        Height = 13
        Caption = 'DESCONTO_VISTA'
        FocusControl = DB_desc_avista
      end
      object DBRadioGroupSitiacao: TDBRadioGroup
        Left = 16
        Top = 133
        Width = 137
        Height = 61
        Caption = 'Situa'#231#227'o'
        Columns = 2
        DataField = 'TIPO_PAGAMENTO'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        Items.Strings = (
          'AVista'
          'APrazo')
        ParentShowHint = False
        ShowHint = False
        TabOrder = 6
        Values.Strings = (
          'A'
          'P')
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1158
        Height = 41
        Align = alTop
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        ExplicitWidth = 1312
        object btnNovo: TButton
          Left = 16
          Top = 9
          Width = 71
          Height = 25
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnEdit: TButton
          Left = 119
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Edite'
          TabOrder = 1
          OnClick = btnEditClick
        end
        object btnDeletar: TButton
          Left = 200
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Deletar'
          TabOrder = 2
        end
        object btnSalvar: TButton
          Left = 281
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 3
          OnClick = btnSalvarClick
        end
        object btnCancelar: TButton
          Left = 384
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 4
        end
      end
      object DB_Codigo: TDBEdit
        Left = 16
        Top = 72
        Width = 54
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        TabOrder = 1
      end
      object DB_nome: TDBEdit
        Left = 104
        Top = 75
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        ReadOnly = True
        TabOrder = 2
      end
      object DB_desc_avista: TDBEdit
        Left = 560
        Top = 72
        Width = 134
        Height = 21
        DataField = 'DESCONTO_VISTA'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        ReadOnly = True
        TabOrder = 3
      end
      object RadioButtonAPrazo: TRadioButton
        Left = 217
        Top = 177
        Width = 62
        Height = 17
        Caption = 'A Prazo'
        TabOrder = 4
      end
      object RadioButtonAVista: TRadioButton
        Left = 217
        Top = 200
        Width = 58
        Height = 17
        Caption = 'A Vista'
        TabOrder = 5
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object DBGrid_Cliente: TDBGrid
        Left = 0
        Top = 41
        Width = 1158
        Height = 609
        Align = alClient
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        ParentColor = True
        ReadOnly = True
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
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO_VISTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUEAR'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1158
        Height = 41
        Align = alTop
        TabOrder = 1
        ExplicitWidth = 1312
        object Label9: TLabel
          Left = 11
          Top = -5
          Width = 65
          Height = 13
          Caption = 'Pesquisar por'
        end
        object Label10: TLabel
          Left = 108
          Top = -3
          Width = 35
          Height = 13
          Caption = 'Crit'#233'rio'
        end
        object Label11: TLabel
          Left = 230
          Top = -3
          Width = 60
          Height = 13
          Caption = 'Procurar por'
        end
        object CB_Opcao2: TComboBox
          Left = 108
          Top = 12
          Width = 116
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 0
          Text = 'INICIADO COM'
          Items.Strings = (
            'INICIADO COM'
            'QUE CONT'#202'M'
            'IGUAL')
        end
        object CB_opcao: TComboBox
          Left = 11
          Top = 12
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 1
          Text = 'CODIGO'
          Items.Strings = (
            'CODIGO'
            'NOME')
        end
        object edt_Pesquisa: TEdit
          Left = 230
          Top = 12
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnPesquisa: TButton
          Left = 699
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 3
        end
      end
    end
  end
end
