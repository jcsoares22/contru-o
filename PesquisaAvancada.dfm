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
      Left = 32
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
      TabOrder = 4
    end
    object ComboBoxCidades: TComboBox
      Left = 24
      Top = 88
      Width = 209
      Height = 21
      TabOrder = 0
    end
    object codigoCliente: TEdit
      Left = 280
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object btnPesquisar: TButton
      Left = 666
      Top = 136
      Width = 97
      Height = 25
      Caption = 'Pesquisar'
      TabOrder = 2
      OnClick = btnPesquisarClick
    end
    object btnLimparCriterios: TButton
      Left = 666
      Top = 167
      Width = 97
      Height = 25
      Caption = 'Limpar Criterios'
      TabOrder = 3
      OnClick = btnLimparCriteriosClick
    end
    object MaskEdit1: TMaskEdit
      Left = 432
      Top = 48
      Width = 112
      Height = 21
      EditMask = '000\.000\.000\-00;'
      MaxLength = 14
      TabOrder = 5
      Text = '   .   .   -  '
    end
  end
  object ComboBoxEstado: TComboBox
    Left = 24
    Top = 136
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object RxDBGrid1: TRxDBGrid
    Left = 0
    Top = 321
    Width = 1085
    Height = 356
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    RowColor2 = 16776176
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
        FieldName = 'BAIRRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_1'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME_2'
        Visible = True
      end>
  end
  object FDQueryPesquisaAvancadas: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      ''
      'select '
      '    cliente.codigo,'
      '    cliente.telefone,'
      '    cliente.cpf,'
      '    cliente.email,'
      '    cliente.nome,'
      '    cliente.descricao,'
      '    cliente.rua,'
      '    cliente.numero,'
      '    cliente.bairro,'
      '    estados.nome,'
      '    cidades.nome,'
      ' cliente.cidade_id,'
      '    cliente.bairro,'
      '    cidades.id'
      'from cidades'
      '   inner join cliente on (cidades.id = cliente.cidade_id)'
      '   inner join estados on (cliente.uf_id = estados.id)')
    Left = 744
    Top = 440
    object FDQueryPesquisaAvancadasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryPesquisaAvancadasTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 11
    end
    object FDQueryPesquisaAvancadasCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 11
    end
    object FDQueryPesquisaAvancadasEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 50
    end
    object FDQueryPesquisaAvancadasNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 50
    end
    object FDQueryPesquisaAvancadasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'DESCRICAO'
      Size = 200
    end
    object FDQueryPesquisaAvancadasRUA: TStringField
      FieldName = 'RUA'
      Origin = 'RUA'
      Size = 25
    end
    object FDQueryPesquisaAvancadasNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Size = 12
    end
    object FDQueryPesquisaAvancadasBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 50
    end
    object FDQueryPesquisaAvancadasNOME_1: TStringField
      FieldName = 'NOME_1'
      Origin = 'NOME'
      Size = 75
    end
    object FDQueryPesquisaAvancadasNOME_2: TStringField
      FieldName = 'NOME_2'
      Origin = 'NOME'
      Size = 120
    end
  end
  object DataSource1: TDataSource
    DataSet = FDQueryPesquisaAvancadas
    Left = 536
    Top = 400
  end
end
