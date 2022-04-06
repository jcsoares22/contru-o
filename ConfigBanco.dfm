object ConfiguraBanco: TConfiguraBanco
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configura Banco'
  ClientHeight = 99
  ClientWidth = 598
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSave: TButton
    Left = 512
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object edtConfiguraBanco: TEdit
    Left = 152
    Top = 48
    Width = 354
    Height = 21
    TabOrder = 1
  end
  object OpenDialog1: TOpenDialog
    Left = 184
  end
end
