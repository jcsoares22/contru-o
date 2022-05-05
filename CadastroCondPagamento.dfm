inherited frmCadastroCondPagamento: TfrmCadastroCondPagamento
  Caption = 'Condi'#231#227'o de pagamento'
  Enabled = False
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
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO_VISTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BLOQUEAR'
            Visible = True
          end>
      end
    end
    inherited TabSheet2: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DB_Codigo
      end
      object Label2: TLabel [1]
        Left = 104
        Top = 56
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DB_nome
      end
      object Label3: TLabel [2]
        Left = 560
        Top = 56
        Width = 90
        Height = 13
        Caption = 'DESCONTO_VISTA'
        FocusControl = DB_desc_avista
      end
      inherited Panel1: TPanel
        inherited btnDeletar: TButton
          OnClick = btnDeletarClick
        end
      end
      object DB_Codigo: TDBEdit
        Left = 16
        Top = 72
        Width = 54
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        TabOrder = 1
      end
      object DB_nome: TDBEdit
        Left = 104
        Top = 72
        Width = 394
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        ReadOnly = True
        TabOrder = 2
      end
      object DB_desc_avista: TDBEdit
        Left = 560
        Top = 72
        Width = 134
        Height = 21
        DataField = 'DESCONTO_VISTA'
        DataSource = DM_Cadastro.Dt_Condicao_pagamento
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
end
