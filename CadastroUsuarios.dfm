object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'CadastroUsuario'
  ClientHeight = 627
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Cadastro: TPageControl
    Left = 0
    Top = 41
    Width = 1124
    Height = 586
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      object DBGrid_Cliente: TDBGrid
        Left = 0
        Top = 57
        Width = 1116
        Height = 501
        Align = alClient
        DataSource = DM_Dados.DT_Usuario
        ParentColor = True
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid_ClienteDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOME'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_LOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_SENHA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NIVEL'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 57
        Align = alTop
        TabOrder = 1
        object Label9: TLabel
          Left = 11
          Top = -5
          Width = 65
          Height = 13
          Caption = 'Pesquisar por'
          Enabled = False
          Visible = False
        end
        object Label10: TLabel
          Left = 108
          Top = -3
          Width = 35
          Height = 13
          Caption = 'Crit'#233'rio'
          Enabled = False
          Visible = False
        end
        object Label11: TLabel
          Left = 230
          Top = -3
          Width = 60
          Height = 13
          Caption = 'Procurar por'
          Enabled = False
          Visible = False
        end
        object Label6: TLabel
          Left = 16
          Top = 6
          Width = 116
          Height = 13
          Caption = 'Dgite o nome do usuario'
        end
        object CB_Opcao2: TComboBox
          Left = 108
          Top = 14
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
          Top = 14
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'CODIGO'
          Items.Strings = (
            'CODIGO'
            'NOME')
        end
        object edt_Pesquisa: TEdit
          Left = 230
          Top = 14
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnPesquisa: TButton
          Left = 699
          Top = 13
          Width = 75
          Height = 22
          Caption = 'Pesquisa'
          TabOrder = 3
          OnClick = btnPesquisaClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
      object PageControl1: TPageControl
        Left = 0
        Top = 120
        Width = 1116
        Height = 438
        ActivePage = TabSheet4
        Align = alClient
        TabOrder = 0
        object Geral: TTabSheet
          Caption = 'Geral'
          object checkBoxManutencaoUsuario: TRxCheckBox
            Left = 12
            Top = 54
            Width = 134
            Height = 17
            Caption = 'Manutecao usuario'
            TabOrder = 0
            WordWrap = True
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
          object checkBoxPreferencia: TRxCheckBox
            Left = 12
            Top = 31
            Width = 97
            Height = 17
            Caption = 'Preferencia'
            TabOrder = 1
            WordWrap = True
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
          object checkBoxAdministrador: TRxCheckBox
            Left = 12
            Top = 8
            Width = 89
            Height = 17
            Caption = 'Administrador'
            TabOrder = 2
            WordWrap = True
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
        end
        object TabSheet3: TTabSheet
          Caption = 'Produtos'
          ImageIndex = 1
        end
        object TabSheet4: TTabSheet
          Caption = 'Vendas'
          ImageIndex = 2
          object Label7: TLabel
            Left = 204
            Top = -1
            Width = 67
            Height = 13
            Caption = 'Max desconto'
          end
          object checkBoxUtrapassarLimite: TRxCheckBox
            Left = 20
            Top = 16
            Width = 163
            Height = 17
            Caption = 'Ultra passar limite de desconto'
            TabOrder = 0
            WordWrap = True
            HorizontalAlignment = taLeftJustify
            VerticalAlignment = taAlignTop
            Style = vsNormal
          end
          object DBE_DescUsuario: TDBEdit
            Left = 198
            Top = 18
            Width = 73
            Height = 21
            DataField = 'DESCONTO_VENDA_USU'
            DataSource = DM_Dados.DT_Usuario
            ReadOnly = True
            TabOrder = 1
            OnExit = DBE_DescUsuarioExit
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 120
        Align = alTop
        TabOrder = 1
        object Label5: TLabel
          Left = 456
          Top = 64
          Width = 87
          Height = 13
          Caption = 'NIVEL DE ACESSO'
          FocusControl = DBEdit5
        end
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 41
          Height = 13
          Caption = 'CODIGO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel
          Left = 16
          Top = 64
          Width = 29
          Height = 13
          Caption = 'NOME'
          FocusControl = DB_Nome
        end
        object Label3: TLabel
          Left = 184
          Top = 16
          Width = 31
          Height = 13
          Caption = 'LOGIN'
          FocusControl = DBEdit3
        end
        object Label4: TLabel
          Left = 352
          Top = 16
          Width = 33
          Height = 13
          Caption = 'SENHA'
          FocusControl = DBEdit4
        end
        object DBEdit5: TDBEdit
          Left = 456
          Top = 80
          Width = 134
          Height = 21
          DataField = 'USU_NIVEL'
          DataSource = DM_Dados.DT_Usuario
          TabOrder = 0
        end
        object DB_Nome: TDBEdit
          Left = 16
          Top = 83
          Width = 394
          Height = 21
          DataField = 'USU_NOME'
          DataSource = DM_Dados.DT_Usuario
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 184
          Top = 35
          Width = 134
          Height = 21
          DataField = 'USU_LOGIN'
          DataSource = DM_Dados.DT_Usuario
          TabOrder = 2
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 32
          Width = 134
          Height = 21
          DataField = 'USU_CODIGO'
          DataSource = DM_Dados.DT_Usuario
          ReadOnly = True
          TabOrder = 3
        end
        object DBEdit4: TDBEdit
          Left = 352
          Top = 35
          Width = 134
          Height = 21
          DataField = 'USU_SENHA'
          DataSource = DM_Dados.DT_Usuario
          PasswordChar = '*'
          TabOrder = 4
        end
      end
      object DBNavigator1: TDBNavigator
        Left = 464
        Top = 16
        Width = 240
        Height = 25
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 2
        OnClick = DBNavigator1Click
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1124
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TButton
      Left = 16
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TButton
      Left = 215
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnEdit: TButton
      Left = 112
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 2
      OnClick = btnEditClick
    end
    object btnCancelar: TButton
      Left = 310
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 3
    end
  end
end
