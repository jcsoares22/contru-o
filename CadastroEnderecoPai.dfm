object frmCadastroEnderecoPai: TfrmCadastroEnderecoPai
  Left = 0
  Top = 0
  Caption = 'CadastroEnderecoPai'
  ClientHeight = 685
  ClientWidth = 1194
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1194
    Height = 97
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 45
      Width = 65
      Height = 13
      Caption = 'Pesquisar por'
    end
    object Label2: TLabel
      Left = 105
      Top = 47
      Width = 35
      Height = 13
      Caption = 'Crit'#233'rio'
    end
    object Label3: TLabel
      Left = 208
      Top = 47
      Width = 60
      Height = 13
      Caption = 'Procurar por'
    end
    object btnNovo: TButton
      Left = 24
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnSalvar: TButton
      Left = 218
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = btnSalvarClick
    end
    object btnDeletar: TButton
      Left = 312
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 2
    end
    object btnEdit: TButton
      Left = 121
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 3
      OnClick = btnEditClick
    end
    object btnPesquisar: TButton
      Left = 694
      Top = 62
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 4
    end
    object CB_opcao: TComboBox
      Left = 8
      Top = 64
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 5
      Text = 'CODIGO'
      Items.Strings = (
        'CODIGO'
        'NOME'
        'DIGITA'#199#195'O')
    end
    object edt_Pesquisa: TEdit
      Left = 208
      Top = 64
      Width = 449
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
    end
    object CB_Opcao2: TComboBox
      Left = 105
      Top = 64
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 7
      Text = 'INICIADO COM'
      Items.Strings = (
        'INICIADO COM'
        'QUE CONT'#202'M'
        'IGUAL')
    end
    object btnCancelar: TButton
      Left = 408
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 8
      OnClick = btnCancelarClick
    end
  end
  object DBGrid_Bairro: TDBGrid
    Left = 0
    Top = 97
    Width = 1194
    Height = 588
    Align = alClient
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DBGrid_BairroKeyPress
  end
end
