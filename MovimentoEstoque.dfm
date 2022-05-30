inherited frmMovimento_estoque: TfrmMovimento_estoque
  Caption = 'Movimento Estoque'
  ExplicitWidth = 1336
  ExplicitHeight = 975
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1312
      ExplicitHeight = 908
      inherited DBGrid_Cliente: TDBGrid
        DataSource = DM_Mov_Estoque.DTMovimentoEstoque
        Columns = <
          item
            Expanded = False
            FieldName = 'ID_MOVIMENTACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_USUARIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DT_MOV'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
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
        Height = 97
        ExplicitHeight = 97
        object Label1: TLabel [0]
          Left = 16
          Top = 39
          Width = 33
          Height = 13
          Caption = 'Codigo'
          FocusControl = DBEdit1
        end
        object Label2: TLabel [1]
          Left = 254
          Top = 39
          Width = 81
          Height = 13
          Caption = 'NOME_USUARIO'
        end
        object Label3: TLabel [2]
          Left = 552
          Top = 39
          Width = 41
          Height = 13
          Caption = 'DT_MOV'
          FocusControl = DATE_Mov
        end
        object Label4: TLabel [3]
          Left = 96
          Top = 39
          Width = 24
          Height = 13
          Caption = 'TIPO'
        end
        inherited btnNovo: TButton
          Top = 8
          ExplicitTop = 8
        end
        inherited btnDeletar: TButton
          OnClick = btnDeletarClick
        end
        inherited btnSalvar: TButton
          Left = 289
          ExplicitLeft = 289
        end
        object DBEdit1: TDBEdit
          Left = 16
          Top = 58
          Width = 49
          Height = 21
          DataField = 'ID_MOVIMENTACAO'
          DataSource = DM_Mov_Estoque.DTMovimentoEstoque
          ReadOnly = True
          TabOrder = 5
        end
        object DATE_Mov: TDBEdit
          Left = 552
          Top = 58
          Width = 81
          Height = 21
          DataField = 'DT_MOV'
          TabOrder = 6
        end
        object DBCB_Movimentacao: TDBComboBox
          Left = 96
          Top = 58
          Width = 145
          Height = 21
          DataField = 'TIPO'
          DataSource = DM_Mov_Estoque.DTMovimentoEstoque
          Items.Strings = (
            'ENTRADA DE ESTOQUE'
            'SAIDA DE ESTOQUE')
          TabOrder = 7
        end
        object DBEdit2: TDBEdit
          Left = 254
          Top = 58
          Width = 252
          Height = 21
          DataField = 'NOME_USUARIO'
          DataSource = DM_Mov_Estoque.DTMovimentoEstoque
          TabOrder = 8
        end
        object DBNavigator1: TDBNavigator
          Left = 512
          Top = 8
          Width = 225
          Height = 25
          DataSource = DM_Mov_Estoque.DTMovimentoEstoque
          VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
          TabOrder = 9
        end
      end
      object DBGrid: TDBGrid
        Left = 0
        Top = 97
        Width = 1312
        Height = 811
        Align = alClient
        DataSource = DM_Mov_Estoque.DTMovimento_estoque_item
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
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
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
