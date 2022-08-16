object frmCadastroPai: TfrmCadastroPai
  Left = 0
  Top = 0
  Caption = 'CadastroPai'
  ClientHeight = 936
  ClientWidth = 1320
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
  object Cadastro: TPageControl
    Left = 0
    Top = 41
    Width = 1320
    Height = 895
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      object DBGrid_Cliente: TDBGrid
        Left = 0
        Top = 41
        Width = 1312
        Height = 826
        Align = alClient
        ParentColor = True
        ReadOnly = True
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = DBGrid_ClienteDblClick
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1312
        Height = 41
        Align = alTop
        TabOrder = 1
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
    object TabSheet2: TTabSheet
      Caption = 'Cadastro'
      ImageIndex = 1
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1320
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btnNovo: TButton
      Left = 16
      Top = 8
      Width = 71
      Height = 26
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 93
      Top = 8
      Width = 71
      Height = 26
      Caption = 'Edite'
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDeletar: TButton
      Left = 174
      Top = 8
      Width = 71
      Height = 26
      Caption = 'Deletar'
      TabOrder = 2
    end
    object btnSalvar: TButton
      Left = 255
      Top = 8
      Width = 71
      Height = 26
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 336
      Top = 8
      Width = 71
      Height = 26
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
  end
end
