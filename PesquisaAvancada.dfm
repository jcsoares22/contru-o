object frmPesquisaAvancada: TfrmPesquisaAvancada
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avan'#231'ada'
  ClientHeight = 677
  ClientWidth = 1085
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1085
    Height = 321
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 21
      Width = 33
      Height = 13
      Caption = 'Cliente'
    end
    object Label2: TLabel
      Left = 24
      Top = 69
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label3: TLabel
      Left = 24
      Top = 117
      Width = 33
      Height = 13
      Caption = 'Cidade'
    end
    object Label4: TLabel
      Left = 280
      Top = 29
      Width = 69
      Height = 13
      Caption = 'Codigo Cliente'
    end
    object ComboBoxCliente: TComboBox
      Left = 24
      Top = 40
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object ComboBoxCidades: TComboBox
      Left = 24
      Top = 88
      Width = 209
      Height = 21
      TabOrder = 1
    end
    object codigoCliente: TEdit
      Left = 280
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 2
      Text = 'codigoCliente'
    end
    object btnPesquisar: TButton
      Left = 688
      Top = 112
      Width = 75
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 3
    end
    object btnLimparCriterios: TButton
      Left = 688
      Top = 143
      Width = 97
      Height = 25
      Caption = 'Limpar Criterios'
      TabOrder = 4
      OnClick = btnLimparCriteriosClick
    end
  end
  object ComboBoxEstado: TComboBox
    Left = 24
    Top = 136
    Width = 209
    Height = 21
    TabOrder = 1
  end
end
