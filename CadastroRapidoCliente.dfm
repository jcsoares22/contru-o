object frmCadastroRapidoCliente: TfrmCadastroRapidoCliente
  Left = 0
  Top = 0
  Caption = 'frmCadastroRapidoCliente'
  ClientHeight = 355
  ClientWidth = 982
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
  object Label6: TLabel
    Left = 25
    Top = 147
    Width = 59
    Height = 13
    Caption = 'DESCRICAO'
    FocusControl = DB_Descricao
  end
  object Label7: TLabel
    Left = 368
    Top = 101
    Width = 21
    Height = 13
    Caption = 'RUA'
    FocusControl = DB_Rua
  end
  object Label8: TLabel
    Left = 720
    Top = 101
    Width = 43
    Height = 13
    Caption = 'NUMERO'
    FocusControl = DB_Numero
  end
  object Label13: TLabel
    Left = 640
    Top = 53
    Width = 33
    Height = 13
    Caption = 'Cidade'
    FocusControl = DB_Numero
  end
  object Label12: TLabel
    Left = 560
    Top = 53
    Width = 13
    Height = 13
    Caption = 'UF'
    FocusControl = DB_Numero
  end
  object Label5: TLabel
    Left = 190
    Top = 53
    Width = 30
    Height = 13
    Caption = 'EMAIL'
    FocusControl = DB_Email
  end
  object Label3: TLabel
    Left = 24
    Top = 56
    Width = 50
    Height = 13
    Caption = 'TELEFONE'
    FocusControl = DB_telefone
  end
  object Label1: TLabel
    Left = 24
    Top = 8
    Width = 41
    Height = 13
    Caption = 'CODIGO'
    FocusControl = DBEditCodigo
  end
  object Label4: TLabel
    Left = 120
    Top = 8
    Width = 19
    Height = 13
    Caption = 'CPF'
    FocusControl = DB_Cpf
  end
  object Label2: TLabel
    Left = 291
    Top = 3
    Width = 29
    Height = 13
    Caption = 'NOME'
    FocusControl = DB_Nome
  end
  object Label9: TLabel
    Left = 25
    Top = 101
    Width = 28
    Height = 13
    Caption = 'Bairro'
    FocusControl = DB_telefone
  end
  object DBEditCodigo: TDBEdit
    Left = 24
    Top = 27
    Width = 75
    Height = 21
    DataField = 'CODIGO'
    DataSource = DM_Cadastro.DT_cliente
    ReadOnly = True
    TabOrder = 0
  end
  object DB_Cpf: TDBEdit
    Left = 120
    Top = 26
    Width = 147
    Height = 21
    CharCase = ecUpperCase
    DataField = 'CPF'
    DataSource = DM_Cadastro.DT_cliente
    TabOrder = 1
  end
  object DB_Nome: TDBEdit
    Left = 291
    Top = 24
    Width = 654
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NOME'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 2
  end
  object Edt_bairro: TDBEdit
    Left = 24
    Top = 120
    Width = 329
    Height = 21
    CharCase = ecUpperCase
    DataField = 'BAIRRO'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 3
  end
  object DBLookupComboBoxCidade: TDBLookupComboBox
    Left = 640
    Top = 72
    Width = 209
    Height = 21
    DataField = 'CIDADE_ID'
    DataSource = DM_Cadastro.DT_cliente
    KeyField = 'ID'
    ListField = 'NOME'
    ListSource = DM_Endereco.Dt_Cidade
    TabOrder = 4
  end
  object DBLookupComboBoxUf: TDBLookupComboBox
    Left = 560
    Top = 72
    Width = 57
    Height = 21
    DataField = 'UF_ID'
    DataSource = DM_Cadastro.DT_cliente
    KeyField = 'ID'
    ListField = 'UF'
    ListSource = DM_Endereco.DT_Estados
    TabOrder = 5
  end
  object DB_Numero: TDBEdit
    Left = 720
    Top = 120
    Width = 160
    Height = 21
    CharCase = ecUpperCase
    DataField = 'NUMERO'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 6
  end
  object DB_Rua: TDBEdit
    Left = 368
    Top = 120
    Width = 329
    Height = 21
    CharCase = ecUpperCase
    DataField = 'RUA'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 7
  end
  object DB_Descricao: TDBEdit
    Left = 25
    Top = 166
    Width = 920
    Height = 21
    CharCase = ecUpperCase
    DataField = 'DESCRICAO'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 8
  end
  object DB_Email: TDBEdit
    Left = 190
    Top = 72
    Width = 346
    Height = 21
    CharCase = ecUpperCase
    DataField = 'EMAIL'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 9
  end
  object DB_telefone: TDBEdit
    Left = 24
    Top = 72
    Width = 143
    Height = 21
    CharCase = ecUpperCase
    DataField = 'TELEFONE'
    DataSource = DM_Cadastro.DT_cliente
    ImeName = 'Portuguese (Brazilian ABNT)'
    TabOrder = 10
  end
  object BntSalvar: TButton
    Left = 424
    Top = 322
    Width = 75
    Height = 25
    Caption = 'Salvar'
    Default = True
    TabOrder = 11
    OnClick = BntSalvarClick
  end
  object bntCancelar: TButton
    Left = 512
    Top = 322
    Width = 75
    Height = 25
    Caption = 'Cancelar'
    TabOrder = 12
    OnClick = bntCancelarClick
  end
end
