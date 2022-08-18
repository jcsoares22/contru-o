inherited frmMovimento_estoque: TfrmMovimento_estoque
  Caption = 'Movimento Estoque'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    Top = 97
    Height = 839
    ExplicitTop = 97
    ExplicitHeight = 839
    inherited TabSheet1: TTabSheet
      ExplicitHeight = 811
      inherited DBGrid_Cliente: TDBGrid
        Height = 770
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
      ExplicitHeight = 811
      object DBGrid: TDBGrid
        Left = 0
        Top = 0
        Width = 1312
        Height = 811
        Align = alClient
        DataSource = DM_Mov_Estoque.DTMovimento_estoque_item
        TabOrder = 0
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
  inherited Panel1: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
    inherited btnSalvar: TButton
      Left = 289
      ExplicitLeft = 289
    end
    inherited btnCancelar: TButton
      Left = 384
      ExplicitLeft = 384
    end
    object DBNavigator1: TDBNavigator
      Left = 512
      Top = 8
      Width = 225
      Height = 25
      DataSource = DM_Mov_Estoque.DTMovimentoEstoque
      VisibleButtons = [nbFirst, nbPrior, nbNext, nbLast, nbInsert]
      TabOrder = 5
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 41
    Width = 1320
    Height = 56
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 10
      Width = 33
      Height = 13
      Caption = 'Codigo'
      FocusControl = DBEdit1
    end
    object Label4: TLabel
      Left = 96
      Top = 10
      Width = 24
      Height = 13
      Caption = 'TIPO'
    end
    object Label2: TLabel
      Left = 254
      Top = 10
      Width = 81
      Height = 13
      Caption = 'NOME_USUARIO'
    end
    object Label3: TLabel
      Left = 552
      Top = 10
      Width = 41
      Height = 13
      Caption = 'DT_MOV'
      FocusControl = DATE_Mov
    end
    object DBEdit1: TDBEdit
      Left = 16
      Top = 29
      Width = 49
      Height = 21
      DataField = 'ID_MOVIMENTACAO'
      DataSource = DM_Mov_Estoque.DTMovimentoEstoque
      ReadOnly = True
      TabOrder = 0
    end
    object DBCB_Movimentacao: TDBComboBox
      Left = 96
      Top = 29
      Width = 145
      Height = 21
      DataField = 'TIPO'
      DataSource = DM_Mov_Estoque.DTMovimentoEstoque
      Items.Strings = (
        'ENTRADA DE ESTOQUE'
        'SAIDA DE ESTOQUE')
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 254
      Top = 29
      Width = 252
      Height = 21
      DataField = 'NOME_USUARIO'
      DataSource = DM_Mov_Estoque.DTMovimentoEstoque
      TabOrder = 2
    end
    object DATE_Mov: TDBEdit
      Left = 552
      Top = 29
      Width = 81
      Height = 21
      DataField = 'DT_MOV'
      TabOrder = 3
    end
  end
end
