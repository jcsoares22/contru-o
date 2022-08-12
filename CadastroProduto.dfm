inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Produto'
  ClientHeight = 675
  ClientWidth = 1127
  OnShow = FormShow
  ExplicitWidth = 1143
  ExplicitHeight = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    Width = 1127
    Height = 593
    ActivePage = TabSheet2
    ExplicitTop = 41
    ExplicitWidth = 1127
    ExplicitHeight = 593
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 1119
      ExplicitHeight = 565
      inherited DBGrid_Cliente: TDBGrid
        Width = 1119
        Height = 524
        DataSource = DM_Cadastro.DT_produto
        OnDrawColumnCell = DBGrid_ClienteDrawColumnCell
        OnTitleClick = DBGrid_ClienteTitleClick
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UN_MEDIDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_CUSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATACAD'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAULTCOMPRA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COR'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SUB_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FOTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'MARCA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECENTO_LUCRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_PRAZO_CUSTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECO_PRAZO_VENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECENTO_PRAZO_LUCRO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_GRUPO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SUBGRUPO'
            Visible = True
          end>
      end
      inherited Panel2: TPanel
        Width = 1119
        ExplicitWidth = 1119
        inherited btnPesquisa: TButton
          Top = 10
          OnClick = btnPesquisaClick
          ExplicitTop = 10
        end
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 1119
      ExplicitHeight = 565
      object Label1: TLabel
        Left = 16
        Top = 48
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DB_Codigo
      end
      object Label12: TLabel
        Left = 18
        Top = 349
        Width = 20
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit9
      end
      object Label13: TLabel
        Left = 641
        Top = 48
        Width = 28
        Height = 13
        Caption = 'FOTO'
      end
      object Label18: TLabel
        Left = 437
        Top = 156
        Width = 17
        Height = 13
        Caption = 'Cor'
      end
      object Label19: TLabel
        Left = 200
        Top = 96
        Width = 59
        Height = 13
        Caption = 'UN_MEDIDA'
      end
      object Label2: TLabel
        Left = 82
        Top = 48
        Width = 49
        Height = 13
        Caption = 'PRODUTO'
        FocusControl = Nome_produto
      end
      object Label21: TLabel
        Left = 426
        Top = 181
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object Label25: TLabel
        Left = 472
        Top = 402
        Width = 85
        Height = 13
        Caption = 'Quantidade Saida'
        FocusControl = DB_Qte_Saida
      end
      object Label3: TLabel
        Left = 712
        Top = -328
        Width = 59
        Height = 13
        Caption = 'UN_MEDIDA'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 363
        Top = 98
        Width = 91
        Height = 13
        Caption = 'GRUPO_MATERIAL'
      end
      object Label8: TLabel
        Left = 404
        Top = 126
        Width = 50
        Height = 13
        Caption = 'Sub Grupo'
      end
      object Label17: TLabel
        Left = 16
        Top = 96
        Width = 48
        Height = 13
        Caption = 'DATACAD'
        FocusControl = DB_DT_Cad
      end
      object Label26: TLabel
        Left = 112
        Top = 97
        Width = 60
        Height = 13
        Caption = 'DATAVENDA'
        FocusControl = DB_DT_Venda
      end
      object Label27: TLabel
        Left = 472
        Top = 360
        Width = 119
        Height = 13
        Caption = 'QUANTIDADE_ENTRADA'
        FocusControl = DB_Qte_Entrada
      end
      object Label28: TLabel
        Left = 472
        Top = 450
        Width = 104
        Height = 13
        Caption = 'QUANTIDADE_ATUAL'
        FocusControl = DB_Qte_Atual
      end
      object Label20: TLabel
        Left = 472
        Top = 498
        Width = 64
        Height = 13
        Caption = 'QTE_MINIMA'
        FocusControl = DBEdtQTE_Minima
      end
      object DBImage: TImage
        Left = 641
        Top = 67
        Width = 266
        Height = 138
        Stretch = True
      end
      object btn_foto: TButton
        Left = 773
        Top = 231
        Width = 75
        Height = 25
        Caption = 'Carregar'
        TabOrder = 6
        OnClick = btn_fotoClick
      end
      object DB_Codigo: TDBEdit
        Left = 16
        Top = 64
        Width = 41
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 7
      end
      object DBEdit3: TDBEdit
        Left = 712
        Top = -312
        Width = 55
        Height = 21
        DataField = 'UN_MEDIDA'
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 18
        Top = 368
        Width = 441
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OBS'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 9
      end
      object DBLookupComboBoxCor: TDBLookupComboBox
        Left = 460
        Top = 152
        Width = 145
        Height = 21
        DataField = 'COR'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Cores
        ReadOnly = True
        TabOrder = 4
      end
      object DBLookupComboBoxMarca: TDBLookupComboBox
        Left = 461
        Top = 181
        Width = 145
        Height = 21
        DataField = 'MARCA'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Marca
        ReadOnly = True
        TabOrder = 5
      end
      object DBLookupComboBoxUNMedida: TDBLookupComboBox
        Left = 201
        Top = 115
        Width = 65
        Height = 21
        DataField = 'UN_MEDIDA'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'SIGLA_MEDIDA'
        ListField = 'SIGLA_MEDIDA'
        ListSource = DM_Cadastro.Dt_medida
        ReadOnly = True
        TabOrder = 1
      end
      object DB_Qte_Saida: TDBEdit
        Left = 472
        Top = 421
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_SAIDA'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 10
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 322
        Top = 228
        Width = 137
        Height = 61
        Caption = 'Situa'#231#227'o'
        Columns = 2
        DataField = 'SITUACAO'
        DataSource = DM_Cadastro.DT_produto
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 11
        Values.Strings = (
          'A'
          'I')
      end
      object Nome_produto: TDBEdit
        Left = 82
        Top = 67
        Width = 391
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PRODUTO'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 0
      end
      object PageControl1: TPageControl
        Left = 16
        Top = 142
        Width = 289
        Height = 193
        ActivePage = TabSheet4
        TabOrder = 12
        object TabSheet3: TTabSheet
          Caption = #192' vista'
          object Label7: TLabel
            Left = 181
            Top = 48
            Width = 73
            Height = 13
            Caption = 'PRECO_VENDA'
            FocusControl = DBEdit7
          end
          object Label5: TLabel
            Left = 3
            Top = 48
            Width = 74
            Height = 13
            Caption = 'PRECO_CUSTO'
            FocusControl = DBEdit5
          end
          object Label6: TLabel
            Left = 97
            Top = 48
            Width = 40
            Height = 13
            Caption = '% Lucro'
            FocusControl = DB_Avista
          end
          object DBEdit5: TDBEdit
            Left = 3
            Top = 67
            Width = 77
            Height = 21
            DataField = 'PRECO_CUSTO'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 2
          end
          object DB_Avista: TDBEdit
            Left = 97
            Top = 67
            Width = 48
            Height = 21
            DataField = 'PRECENTO_LUCRO'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 0
            OnExit = DB_AvistaExit
          end
          object DBEdit7: TDBEdit
            Left = 178
            Top = 67
            Width = 74
            Height = 21
            DataField = 'PRECO_VENDA'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 1
          end
        end
        object TabSheet4: TTabSheet
          Caption = #192' prazo'
          ImageIndex = 1
          object Label22: TLabel
            Left = 3
            Top = 21
            Width = 28
            Height = 13
            Caption = 'Custo'
            FocusControl = DBEdit12
          end
          object Label23: TLabel
            Left = 194
            Top = 24
            Width = 43
            Height = 13
            Caption = 'P/VENDA'
            FocusControl = DBEdit13
          end
          object Label24: TLabel
            Left = 110
            Top = 24
            Width = 37
            Height = 13
            Caption = '%Lucro'
            FocusControl = DB_APrazo
          end
          object DBEdit12: TDBEdit
            Left = 3
            Top = 40
            Width = 68
            Height = 21
            DataField = 'PRECO_PRAZO_CUSTO'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 181
            Top = 40
            Width = 55
            Height = 21
            DataField = 'PRECO_PRAZO_VENDA'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 1
          end
          object DB_APrazo: TDBEdit
            Left = 105
            Top = 43
            Width = 42
            Height = 21
            DataField = 'PRECENTO_PRAZO_LUCRO'
            DataSource = DM_Cadastro.DT_produto
            ReadOnly = True
            TabOrder = 2
            OnExit = DB_APrazoExit
          end
        end
      end
      object DB_DT_Cad: TDBEdit
        Left = 16
        Top = 115
        Width = 71
        Height = 21
        DataField = 'DATACAD'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 13
      end
      object DB_DT_Venda: TDBEdit
        Left = 112
        Top = 115
        Width = 60
        Height = 21
        DataField = 'DATAVENDA'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 14
      end
      object DBLookupComboBoxGrupo: TDBLookupComboBox
        Left = 460
        Top = 94
        Width = 145
        Height = 21
        DataField = 'ID_GRUPO'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Grupo
        ReadOnly = True
        TabOrder = 2
      end
      object DBLookupComboBoxSubGrupo: TDBLookupComboBox
        Left = 460
        Top = 121
        Width = 145
        Height = 21
        DataField = 'ID_GRUPO'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'CODIGO_GRUPO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_SubGrupo
        ReadOnly = True
        TabOrder = 3
      end
      object DB_Qte_Entrada: TDBEdit
        Left = 472
        Top = 376
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_ENTRADA'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 15
      end
      object DB_Qte_Atual: TDBEdit
        Left = 472
        Top = 469
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_ATUAL'
        DataSource = DM_Cadastro.DT_produto
        ReadOnly = True
        TabOrder = 16
        OnChange = DB_Qte_AtualChange
      end
      object DBEdtQTE_Minima: TDBEdit
        Left = 472
        Top = 514
        Width = 134
        Height = 21
        DataField = 'QTE_MINIMA'
        DataSource = DM_Cadastro.DT_produto
        TabOrder = 17
      end
      object DBLocal: TDBEdit
        Left = 597
        Top = 67
        Width = 39
        Height = 21
        DataField = 'NUM_LOCAL'
        DataSource = DM_Cadastro.DT_produto
        TabOrder = 19
      end
      object DBLookupComboBoxLocalProd: TDBLookupComboBox
        Left = 479
        Top = 67
        Width = 119
        Height = 21
        DataField = 'COD_LOCAL'
        DataSource = DM_Cadastro.DT_produto
        KeyField = 'CODIGO'
        ListField = 'CODIGO'
        ListSource = DM_Cadastro.DT_LocalProd
        TabOrder = 18
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1127
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1127
    inherited btnNovo: TButton
      Left = 20
      ExplicitLeft = 20
    end
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
    object DBNavigator1: TDBNavigator
      Left = 616
      Top = 10
      Width = 224
      Height = 25
      DataSource = DM_Cadastro.DT_produto
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast]
      TabOrder = 5
      OnClick = DBNavigator1Click
    end
    object Button1: TButton
      Left = 483
      Top = 10
      Width = 75
      Height = 25
      Caption = 'fechar'
      TabOrder = 6
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 634
    Width = 1127
    Height = 41
    Align = alBottom
    TabOrder = 1
    object btnEstoque: TButton
      Left = 31
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Estoque'
      TabOrder = 0
      OnClick = btnEstoqueClick
    end
  end
  object OpenDialogImage: TOpenDialog
    Filter = 'bitmap|*.bmp|jpg|*.jpg'
    Left = 884
    Top = 256
  end
end
