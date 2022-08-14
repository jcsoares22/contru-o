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
    Top = 41
    Width = 1194
    Height = 40
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object Label3: TLabel
      Left = 208
      Top = 17
      Width = 60
      Height = 13
      Caption = 'Procurar por'
    end
    object Label2: TLabel
      Left = 105
      Top = 17
      Width = 35
      Height = 13
      Caption = 'Crit'#233'rio'
    end
    object Label1: TLabel
      Left = 8
      Top = 17
      Width = 65
      Height = 13
      Caption = 'Pesquisar por'
    end
    object btnPesquisar: TButton
      Left = 694
      Top = 5
      Width = 75
      Height = 25
      Caption = '&Pesquisar'
      TabOrder = 0
    end
    object edt_Pesquisa: TEdit
      Left = 208
      Top = 9
      Width = 449
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CB_Opcao2: TComboBox
      Left = 105
      Top = 9
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      ItemIndex = 0
      TabOrder = 2
      Text = 'INICIADO COM'
      Items.Strings = (
        'INICIADO COM'
        'QUE CONT'#202'M'
        'IGUAL')
    end
    object CB_opcao: TComboBox
      Left = 8
      Top = 9
      Width = 91
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      Text = 'CODIGO'
      Items.Strings = (
        'CODIGO'
        'NOME'
        'DIGITA'#199#195'O')
    end
  end
  object DBGrid_Bairro: TDBGrid
    Left = 0
    Top = 81
    Width = 1194
    Height = 604
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
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1194
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -32
    ExplicitTop = -7
    object btnDeletar: TButton
      Left = 312
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Delete'
      TabOrder = 0
    end
    object btnCancelar: TButton
      Left = 408
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnSalvar: TButton
      Left = 218
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnNovo: TButton
      Left = 24
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 3
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 121
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Editar'
      TabOrder = 4
      OnClick = btnEditClick
    end
  end
end
