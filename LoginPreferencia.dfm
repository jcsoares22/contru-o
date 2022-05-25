object frmLoginPreferencia: TfrmLoginPreferencia
  Left = 0
  Top = 0
  ClientHeight = 299
  ClientWidth = 297
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
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
    TabOrder = 0
  end
  object edtLogin: TEdit
    Left = 75
    Top = 12
    Width = 121
    Height = 21
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object btnLogin: TButton
    Left = 214
    Top = 8
    Width = 75
    Height = 25
    Caption = 'Login'
    TabOrder = 2
    OnClick = btnLoginClick
  end
  object btnCancelar: TButton
    Left = 214
    Top = 47
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 3
  end
end
