object frmLoginMenu: TfrmLoginMenu
  Left = 0
  Top = 0
  Caption = 'Login Menu'
  ClientHeight = 124
  ClientWidth = 203
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  Touch.ParentTabletOptions = False
  Touch.TabletOptions = [toPressAndHold]
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
  object edtSenha: TEdit
    Left = 75
    Top = 44
    Width = 121
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object edtLogin: TEdit
    Left = 75
    Top = 12
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object btnClickLogin: TButton
    Left = 57
    Top = 79
    Width = 75
    Height = 25
    Caption = 'Entrar'
    Default = True
    ModalResult = 1
    TabOrder = 2
    StyleElements = []
    OnClick = btnClickLoginClick
  end
end
