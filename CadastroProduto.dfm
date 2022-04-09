inherited frmCadastroProduto: TfrmCadastroProduto
  Caption = 'Produto'
  ClientHeight = 675
  ClientWidth = 1127
  ExplicitWidth = 1143
  ExplicitHeight = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    Width = 1127
    Height = 675
    ActivePage = TabSheet2
    ExplicitWidth = 1127
    ExplicitHeight = 675
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 1119
      ExplicitHeight = 647
      inherited DBGrid_Cliente: TDBGrid
        Width = 1119
        Height = 606
        DataSource = DM_Cadastro.DT_Produto
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
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
            FieldName = 'SITUACAO'
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
      ExplicitHeight = 647
      object Foto: TImage [0]
        Left = 880
        Top = 94
        Width = 239
        Height = 175
        Stretch = True
      end
      object Label1: TLabel [1]
        Left = 16
        Top = 48
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DB_Codigo
      end
      object Label12: TLabel [2]
        Left = 18
        Top = 549
        Width = 20
        Height = 13
        Caption = 'OBS'
        FocusControl = DBEdit9
      end
      object Label13: TLabel [3]
        Left = 1091
        Top = 47
        Width = 28
        Height = 13
        Caption = 'FOTO'
      end
      object Label14: TLabel [4]
        Left = 20
        Top = 125
        Width = 48
        Height = 13
        Caption = 'DATACAD'
      end
      object Label15: TLabel [5]
        Left = 112
        Top = 126
        Width = 88
        Height = 13
        Caption = 'DATAULTCOMPRA'
      end
      object Label16: TLabel [6]
        Left = 238
        Top = 123
        Width = 60
        Height = 13
        Caption = 'DATAVENDA'
      end
      object Label18: TLabel [7]
        Left = 621
        Top = 196
        Width = 17
        Height = 13
        Caption = 'Cor'
      end
      object Label19: TLabel [8]
        Left = 675
        Top = 267
        Width = 59
        Height = 13
        Caption = 'UN_MEDIDA'
      end
      object Label2: TLabel [9]
        Left = 82
        Top = 48
        Width = 49
        Height = 13
        Caption = 'PRODUTO'
        FocusControl = Nome_produto
      end
      object Label21: TLabel [10]
        Left = 613
        Top = 233
        Width = 29
        Height = 13
        Caption = 'Marca'
      end
      object Label25: TLabel [11]
        Left = 746
        Top = 434
        Width = 85
        Height = 13
        Caption = 'Quantidade Saida'
        FocusControl = DB_Qte_Saida
      end
      object Label3: TLabel [12]
        Left = 712
        Top = -328
        Width = 59
        Height = 13
        Caption = 'UN_MEDIDA'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [13]
        Left = 547
        Top = 132
        Width = 91
        Height = 13
        Caption = 'GRUPO_MATERIAL'
      end
      object Label8: TLabel [14]
        Left = 588
        Top = 168
        Width = 50
        Height = 13
        Caption = 'Sub Grupo'
      end
      object Label17: TLabel [15]
        Left = 20
        Top = 147
        Width = 48
        Height = 13
        Caption = 'DATACAD'
        FocusControl = DB_DT_Cad
      end
      object Label26: TLabel [16]
        Left = 20
        Top = 230
        Width = 60
        Height = 13
        Caption = 'DATAVENDA'
        FocusControl = DB_DT_Venda
      end
      object Label27: TLabel [17]
        Left = 746
        Top = 392
        Width = 119
        Height = 13
        Caption = 'QUANTIDADE_ENTRADA'
        FocusControl = DB_Qte_Entrada
      end
      object Label28: TLabel [18]
        Left = 746
        Top = 482
        Width = 104
        Height = 13
        Caption = 'QUANTIDADE_ATUAL'
        FocusControl = DB_Qte_Atual
      end
      inherited Panel1: TPanel
        Width = 1119
        ExplicitWidth = 1119
        inherited btnDeletar: TButton
          OnClick = btnDeletarClick
        end
      end
      object btn_foto: TButton
        Left = 940
        Top = 307
        Width = 75
        Height = 25
        Caption = 'Carregar'
        TabOrder = 1
      end
      object DB_Codigo: TDBEdit
        Left = 16
        Top = 64
        Width = 41
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 712
        Top = -312
        Width = 55
        Height = 21
        DataField = 'UN_MEDIDA'
        TabOrder = 3
      end
      object DBEdit9: TDBEdit
        Left = 18
        Top = 568
        Width = 441
        Height = 21
        CharCase = ecUpperCase
        DataField = 'OBS'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 4
      end
      object DBLookupComboBoxCor: TDBLookupComboBox
        Left = 644
        Top = 192
        Width = 145
        Height = 21
        DataField = 'COR'
        DataSource = DM_Cadastro.DT_Produto
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Cores
        ReadOnly = True
        TabOrder = 5
      end
      object DBLookupComboBoxMarca: TDBLookupComboBox
        Left = 648
        Top = 233
        Width = 145
        Height = 21
        DataField = 'MARCA'
        DataSource = DM_Cadastro.DT_Produto
        KeyField = 'DESCRICAO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Marca
        ReadOnly = True
        TabOrder = 6
      end
      object DBLookupComboBoxUNMedida: TDBLookupComboBox
        Left = 675
        Top = 286
        Width = 65
        Height = 21
        DataField = 'UN_MEDIDA'
        DataSource = DM_Cadastro.DT_Produto
        KeyField = 'SIGLA_MEDIDA'
        ListField = 'SIGLA_MEDIDA'
        ListSource = DM_Cadastro.Dt_medida
        ReadOnly = True
        TabOrder = 7
      end
      object DB_Qte_Saida: TDBEdit
        Left = 746
        Top = 453
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_SAIDA'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 8
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 634
        Top = 47
        Width = 137
        Height = 61
        Caption = 'Situa'#231#227'o'
        Columns = 2
        DataField = 'SITUACAO'
        DataSource = DM_Cadastro.DT_Produto
        Items.Strings = (
          'Ativo'
          'Inativo')
        TabOrder = 9
        Values.Strings = (
          'A'
          'I')
      end
      object Nome_produto: TDBEdit
        Left = 82
        Top = 64
        Width = 524
        Height = 21
        CharCase = ecUpperCase
        DataField = 'PRODUTO'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 10
      end
      object PageControl1: TPageControl
        Left = 192
        Top = 330
        Width = 289
        Height = 193
        ActivePage = TabSheet4
        TabOrder = 11
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
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 0
          end
          object DB_Avista: TDBEdit
            Left = 97
            Top = 67
            Width = 48
            Height = 21
            DataField = 'PRECENTO_LUCRO'
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 1
            OnExit = DB_AvistaExit
          end
          object DBEdit7: TDBEdit
            Left = 178
            Top = 67
            Width = 74
            Height = 21
            DataField = 'PRECO_VENDA'
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 2
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
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 0
          end
          object DBEdit13: TDBEdit
            Left = 181
            Top = 40
            Width = 55
            Height = 21
            DataField = 'PRECO_PRAZO_VENDA'
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 1
          end
          object DB_APrazo: TDBEdit
            Left = 106
            Top = 40
            Width = 42
            Height = 21
            DataField = 'PRECENTO_PRAZO_LUCRO'
            DataSource = DM_Cadastro.DT_Produto
            TabOrder = 2
            OnExit = DB_APrazoExit
          end
        end
      end
      object DB_DT_Cad: TDBEdit
        Left = 20
        Top = 163
        Width = 113
        Height = 21
        DataField = 'DATACAD'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 12
      end
      object DB_DT_Venda: TDBEdit
        Left = 20
        Top = 248
        Width = 113
        Height = 21
        DataField = 'DATAVENDA'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 13
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 644
        Top = 134
        Width = 145
        Height = 21
        DataField = 'ID_GRUPO'
        DataSource = DM_Cadastro.DT_Produto
        KeyField = 'CODIGO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_Grupo
        TabOrder = 14
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 644
        Top = 161
        Width = 145
        Height = 21
        DataField = 'ID_GRUPO'
        DataSource = DM_Cadastro.DT_Produto
        KeyField = 'CODIGO_GRUPO'
        ListField = 'DESCRICAO'
        ListSource = DM_Cadastro.DT_SubGrupo
        TabOrder = 15
      end
      object DB_Qte_Entrada: TDBEdit
        Left = 746
        Top = 408
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_ENTRADA'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 16
      end
      object DB_Qte_Atual: TDBEdit
        Left = 746
        Top = 501
        Width = 134
        Height = 21
        DataField = 'QUANTIDADE_ATUAL'
        DataSource = DM_Cadastro.DT_Produto
        TabOrder = 17
      end
    end
  end
end
