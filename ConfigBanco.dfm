object frmConfiguraBanco: TfrmConfiguraBanco
  Left = 0
  Top = 0
  Anchors = []
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Configura Banco'
  ClientHeight = 128
  ClientWidth = 453
  Color = 16776176
  TransparentColorValue = 16776176
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object btnSave: TButton
    Left = 369
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Salvar'
    TabOrder = 0
    OnClick = btnSaveClick
  end
  object edtConfiguraBanco: TEdit
    Left = 9
    Top = 48
    Width = 354
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 153
    Top = 84
    Width = 75
    Height = 25
    Caption = 'Procurar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object OpenDialogBanco: TOpenDialog
    Left = 200
  end
end
