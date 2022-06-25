object frmPesquisaCliente: TfrmPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'frmPesquisaCliente'
  ClientHeight = 672
  ClientWidth = 1100
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1100
    Height = 409
    Align = alTop
    TabOrder = 0
    object ComboBoxCliente: TComboBox
      Left = 16
      Top = 83
      Width = 305
      Height = 21
      TabOrder = 0
      Text = 'ComboBoxCliente'
    end
  end
  object DBGridPesquisa: TDBGrid
    Left = 0
    Top = 409
    Width = 1100
    Height = 263
    Align = alClient
    DataSource = DM_Cadastro.DT_cliente
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TELEFONE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CPF'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'EMAIL'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'RUA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NUMERO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CIDADE_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BAIRRO'
        Visible = True
      end>
  end
end
