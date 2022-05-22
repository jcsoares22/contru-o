object frmPesquisaCliente: TfrmPesquisaCliente
  Left = 0
  Top = 0
  Caption = 'frmPesquisaCliente'
  ClientHeight = 435
  ClientWidth = 933
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 933
    Height = 49
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 845
    object Label9: TLabel
      Left = 11
      Top = 1
      Width = 65
      Height = 13
      Caption = 'Pesquisar por'
    end
    object Label10: TLabel
      Left = 108
      Top = 3
      Width = 35
      Height = 13
      Caption = 'Crit'#233'rio'
    end
    object Label11: TLabel
      Left = 230
      Top = 3
      Width = 60
      Height = 13
      Caption = 'Procurar por'
    end
    object CB_Opcao2: TComboBox
      Left = 108
      Top = 18
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
      Top = 18
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
      Top = 18
      Width = 449
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
    end
    object btnPesquisa: TButton
      Left = 699
      Top = 14
      Width = 75
      Height = 25
      Caption = 'Pesquisa'
      TabOrder = 3
    end
  end
  object DBGridPesquisa: TDBGrid
    Left = 0
    Top = 49
    Width = 933
    Height = 386
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
