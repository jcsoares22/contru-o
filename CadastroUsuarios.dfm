object frmCadastroUsuario: TfrmCadastroUsuario
  Left = 0
  Top = 0
  Caption = 'frmCadastroUsuario'
  ClientHeight = 627
  ClientWidth = 1124
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Cadastro: TPageControl
    Left = 0
    Top = 0
    Width = 1124
    Height = 627
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      object DBGrid_Cliente: TDBGrid
        Left = 0
        Top = 57
        Width = 1116
        Height = 542
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
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1116
        Height = 41
        Align = alTop
        Color = clMenuHighlight
        ParentBackground = False
        TabOrder = 0
        object btnNovo: TButton
          Left = 16
          Top = 8
          Width = 75
          Height = 25
          Caption = 'btnNovo'
          TabOrder = 0
          OnClick = btnNovoClick
        end
        object btnSalvar: TButton
          Left = 215
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 1
          OnClick = btnSalvarClick
        end
        object btnEdit: TButton
          Left = 112
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 2
          OnClick = btnEditClick
        end
        object Button4: TButton
          Left = 310
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Button1'
          TabOrder = 3
        end
      end
      object PageControl1: TPageControl
        Left = 0
        Top = 161
        Width = 1116
        Height = 438
        ActivePage = Geral
        Align = alClient
        TabOrder = 1
        ExplicitLeft = 112
        ExplicitTop = 294
        ExplicitWidth = 1281
        ExplicitHeight = 713
        object Geral: TTabSheet
          Caption = 'Geral'
          ExplicitLeft = 20
          ExplicitTop = -112
          ExplicitWidth = 1273
          ExplicitHeight = 685
          object Preferencia: TCheckBox
            Left = 3
            Top = 40
            Width = 164
            Height = 17
            Caption = 'Preferencia'
            TabOrder = 0
          end
          object dministrador: TCheckBox
            Left = 3
            Top = 17
            Width = 97
            Height = 17
            Caption = 'Administrador'
            TabOrder = 1
          end
          object Usuario: TCheckBox
            Left = 3
            Top = 63
            Width = 164
            Height = 17
            Caption = 'Manute'#231#227'o de usu'#225'rio'
            TabOrder = 2
          end
          object DBCheckBox_administrador: TDBCheckBox
            Left = 193
            Top = 233
            Width = 97
            Height = 17
            Caption = 'DBCheckBox_administrador'
            DataField = 'ADM'
            DataSource = DM_Dados.DT_Usuario
            TabOrder = 3
          end
          object DBCheckBoxPreferencia: TDBCheckBox
            Left = 193
            Top = 256
            Width = 97
            Height = 17
            Caption = 'DBCheckBox1'
            DataField = 'PREFERENCIA'
            DataSource = DM_Dados.DT_Usuario
            TabOrder = 4
            WordWrap = True
          end
          object Manuteção_usuario: TDBCheckBox
            Left = 193
            Top = 279
            Width = 97
            Height = 17
            Caption = 'DBCheckBox1'
            DataField = 'CAD_USU'
            DataSource = DM_Dados.DT_Usuario
            TabOrder = 5
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 41
        Width = 1116
        Height = 120
        Align = alTop
        TabOrder = 2
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
          TabOrder = 4
        end
      end
    end
  end
end
