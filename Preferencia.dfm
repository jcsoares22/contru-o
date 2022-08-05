object frmPreferencia: TfrmPreferencia
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Preferencia'
  ClientHeight = 704
  ClientWidth = 891
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 891
    Height = 663
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#227'o'
      ExplicitLeft = 8
      ExplicitTop = 22
      object Label3: TLabel
        Left = 24
        Top = 56
        Width = 50
        Height = 13
        Caption = 'TELEFONE'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 464
        Top = 8
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 152
        Top = 56
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 24
        Top = 8
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = NomeEmpresa
      end
      object Label8: TLabel
        Left = 24
        Top = 176
        Width = 21
        Height = 13
        Caption = 'RUA'
        FocusControl = DBEdit7
      end
      object Label9: TLabel
        Left = 392
        Top = 176
        Width = 43
        Height = 13
        Caption = 'NUMERO'
        FocusControl = DBEdit8
      end
      object Label10: TLabel
        Left = 24
        Top = 112
        Width = 30
        Height = 13
        Caption = 'UF_ID'
      end
      object Label11: TLabel
        Left = 216
        Top = 112
        Width = 55
        Height = 13
        Caption = 'CIDADE_ID'
      end
      object Label12: TLabel
        Left = 400
        Top = 115
        Width = 39
        Height = 13
        Caption = 'BAIRRO'
        FocusControl = DBEdit11
      end
      object imageLogo: TImage
        Left = 24
        Top = 256
        Width = 105
        Height = 105
      end
      object SpeedButton1: TSpeedButton
        Left = 105
        Top = 367
        Width = 23
        Height = 22
        OnClick = SpeedButton1Click
      end
      object DBEdit2: TDBEdit
        Left = 24
        Top = 72
        Width = 97
        Height = 21
        DataField = 'TELEFONE'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 464
        Top = 24
        Width = 147
        Height = 21
        DataField = 'CPF'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 1
      end
      object DBEdit4: TDBEdit
        Left = 152
        Top = 72
        Width = 193
        Height = 21
        DataField = 'EMAIL'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 2
      end
      object NomeEmpresa: TDBEdit
        Left = 24
        Top = 24
        Width = 417
        Height = 21
        DataField = 'NOME'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 192
        Width = 329
        Height = 21
        DataField = 'RUA'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 392
        Top = 192
        Width = 160
        Height = 21
        DataField = 'NUMERO'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 5
      end
      object DBEdit11: TDBEdit
        Left = 400
        Top = 131
        Width = 371
        Height = 21
        DataField = 'BAIRRO'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 6
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 208
        Top = 131
        Width = 145
        Height = 21
        DataField = 'CIDADE_ID'
        DataSource = DM_Dados.DT_Preferencia
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DM_Endereco.Dt_Cidade
        TabOrder = 7
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 131
        Width = 145
        Height = 21
        DataField = 'UF_ID'
        DataSource = DM_Dados.DT_Preferencia
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DM_Endereco.DT_Estados
        TabOrder = 8
      end
      object btnLogo: TButton
        Left = 24
        Top = 367
        Width = 75
        Height = 25
        Caption = 'Carregar'
        TabOrder = 9
        OnClick = btnLogoClick
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'venda'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 58
        Height = 13
        Caption = '% desconto'
      end
      object Label2: TLabel
        Left = 8
        Top = 39
        Width = 111
        Height = 13
        Caption = 'DESC_MAX_USUSARIO'
        FocusControl = DB_DescMaxUsuario
      end
      object DBE_DESCONTO: TDBEdit
        Left = 72
        Top = 3
        Width = 73
        Height = 21
        DataField = 'DESCONTO_VENDA'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 0
      end
      object DB_DescMaxUsuario: TDBEdit
        Left = 125
        Top = 34
        Width = 134
        Height = 21
        DataField = 'DESC_MAX_USUSARIO'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 1
      end
    end
    object Produto: TTabSheet
      Caption = 'Produto'
      ImageIndex = 2
      object CheckBoxEstoqueProduto: TCheckBox
        Left = 3
        Top = 16
        Width = 97
        Height = 17
        Caption = 'CheckBox1'
        TabOrder = 0
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 663
    Width = 891
    Height = 41
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      Left = 633
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 795
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 714
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Edit'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
  object OpenDialogImage: TOpenDialog
    Filter = 'bitmap|*.bmp|jpg|*.jpg'
    Left = 79
    Top = 472
  end
end
