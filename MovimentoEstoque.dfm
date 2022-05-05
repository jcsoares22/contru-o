inherited frmMovimento_estoque: TfrmMovimento_estoque
  Caption = 'Movimento Estoque'
  ExplicitWidth = 1336
  ExplicitHeight = 975
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    ActivePage = TabSheet2
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1312
      ExplicitHeight = 908
      inherited DBGrid_Cliente: TDBGrid
        DataSource = DM_Mov_Estoque.DT_Movimento_estoque_item
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ATUAL'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1312
      ExplicitHeight = 908
      inherited Panel1: TPanel
        Height = 105
        ExplicitHeight = 105
        object Label1: TLabel [0]
          Left = 184
          Top = 45
          Width = 99
          Height = 13
          Caption = 'ID_MOVIMENTACAO'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [1]
          Left = 260
          Top = 45
          Width = 81
          Height = 13
          Caption = 'NOME_USUARIO'
        end
        object Label3: TLabel [2]
          Left = 720
          Top = 45
          Width = 41
          Height = 13
          Caption = 'DT_MOV'
          FocusControl = DBEdit3
        end
        inherited btnDeletar: TButton
          OnClick = btnDeletarClick
        end
        object DBEdit1: TDBEdit
          Left = 184
          Top = 61
          Width = 57
          Height = 21
          DataField = 'ID_MOVIMENTACAO'
          DataSource = DM_Mov_Estoque.DT_MovimentoEstoque
          TabOrder = 5
        end
        object DBEdit3: TDBEdit
          Left = 720
          Top = 64
          Width = 150
          Height = 21
          DataField = 'DT_MOV'
          DataSource = DM_Mov_Estoque.DT_MovimentoEstoque
          MaxLength = 10
          TabOrder = 6
        end
        object DBLookupComboBox1: TDBLookupComboBox
          Left = 272
          Top = 60
          Width = 321
          Height = 21
          DataField = 'NOME_USUARIO'
          DataSource = DM_Mov_Estoque.DT_MovimentoEstoque
          KeyField = 'USU_NOME'
          ListField = 'USU_NOME'
          ListSource = DM_Dados.DT_Usuario
          TabOrder = 7
        end
        object DBCB_Movimentacao: TDBComboBox
          Left = 16
          Top = 61
          Width = 145
          Height = 21
          DataField = 'TIPO'
          DataSource = DM_Mov_Estoque.DT_MovimentoEstoque
          Items.Strings = (
            'Entrada Estoque'
            'Saida Estoque'
            'Acerto Estoque')
          TabOrder = 8
        end
        object DBNavigator1: TDBNavigator
          Left = 608
          Top = 14
          Width = 240
          Height = 25
          DataSource = DM_Mov_Estoque.DT_MovimentoEstoque
          TabOrder = 9
        end
      end
      object DBGrid: TDBGrid
        Left = 0
        Top = 105
        Width = 1312
        Height = 803
        Align = alClient
        DataSource = DM_Mov_Estoque.DT_Movimento_estoque_item
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ATUAL'
            Visible = True
          end>
      end
    end
  end
end
