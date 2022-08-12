object frmLogin: TfrmLogin
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Login'
  ClientHeight = 77
  ClientWidth = 299
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 19
    Top = 11
    Width = 25
    Height = 13
    Caption = 'Login'
  end
  object Label2: TLabel
    Left = 19
    Top = 47
    Width = 30
    Height = 13
    Caption = 'Senha'
  end
  object btn_Cancelar: TButton
    Left = 209
    Top = 39
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
    OnClick = btn_CancelarClick
  end
  object btnClickLogin: TButton
    Left = 209
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Default = True
    ModalResult = 1
    TabOrder = 2
    StyleElements = []
    OnClick = btnClickLoginClick
  end
  object edtLogin: TEdit
    Left = 75
    Top = 12
    Width = 121
    Height = 21
    Hint = 'Login'
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object edtSenha: TEdit
    Left = 75
    Top = 39
    Width = 121
    Height = 21
    Hint = 'Senha'
    PasswordChar = '*'
    TabOrder = 1
  end
end
