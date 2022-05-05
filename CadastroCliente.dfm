inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'CadastroCliente'
  ClientHeight = 806
  ClientWidth = 1095
  ExplicitWidth = 1111
  ExplicitHeight = 845
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    Width = 1095
    Height = 806
    ActivePage = TabSheet2
    ExplicitWidth = 1095
    ExplicitHeight = 806
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1087
      ExplicitHeight = 778
      inherited DBGrid_Cliente: TDBGrid
        Width = 1087
        Height = 737
        DataSource = DM_Cadastro.DT_cliente
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
      inherited Panel2: TPanel
        Width = 1087
        ExplicitWidth = 1087
        inherited btnPesquisa: TButton
          OnClick = btnPesquisaClick
        end
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1087
      ExplicitHeight = 778
      object Label1: TLabel [0]
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label4: TLabel [1]
        Left = 112
        Top = 56
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DB_Cpf
      end
      object Label2: TLabel [2]
        Left = 283
        Top = 51
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DB_Nome
      end
      object Label13: TLabel [3]
        Left = 632
        Top = 101
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DB_Numero
      end
      object Label12: TLabel [4]
        Left = 552
        Top = 101
        Width = 13
        Height = 13
        Caption = 'UF'
        FocusControl = DB_Numero
      end
      object Label15: TLabel [5]
        Left = 861
        Top = 101
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DB_Numero
      end
      object Label3: TLabel [6]
        Left = 16
        Top = 104
        Width = 50
        Height = 13
        Caption = 'TELEFONE'
        FocusControl = DB_telefone
      end
      object Label5: TLabel [7]
        Left = 182
        Top = 101
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DB_Email
      end
      object Label8: TLabel [8]
        Left = 368
        Top = 157
        Width = 43
        Height = 13
        Caption = 'NUMERO'
        FocusControl = DB_Numero
      end
      object Label7: TLabel [9]
        Left = 16
        Top = 160
        Width = 21
        Height = 13
        Caption = 'RUA'
        FocusControl = DB_Rua
      end
      object Label6: TLabel [10]
        Left = 16
        Top = 208
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
        FocusControl = DB_Descricao
      end
      inherited Panel1: TPanel
        Width = 1087
        ExplicitWidth = 1087
        inherited btnNovo: TButton
          Width = 63
          ExplicitWidth = 63
        end
        inherited btnEdit: TButton
          Width = 71
          ExplicitWidth = 71
        end
        inherited btnDeletar: TButton
          Width = 71
          OnClick = btnDeletarClick
          ExplicitWidth = 71
        end
        inherited btnSalvar: TButton
          Left = 297
          Width = 71
          ExplicitLeft = 297
          ExplicitWidth = 71
        end
        inherited btnCancelar: TButton
          Width = 71
          ExplicitWidth = 71
        end
        object DBNavigator1: TDBNavigator
          Left = 560
          Top = 9
          Width = 240
          Height = 25
          DataSource = DM_Cadastro.DT_cliente
          TabOrder = 5
        end
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 72
        Width = 75
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.DT_cliente
        ReadOnly = True
        TabOrder = 1
      end
      object DB_Cpf: TDBEdit
        Left = 112
        Top = 74
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = DM_Cadastro.DT_cliente
        ReadOnly = True
        TabOrder = 2
      end
      object DB_Nome: TDBEdit
        Left = 283
        Top = 72
        Width = 654
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBoxUf: TDBLookupComboBox
        Left = 552
        Top = 120
        Width = 57
        Height = 21
        DataField = 'UF_ID'
        DataSource = DM_Cadastro.DT_cliente
        KeyField = 'ID'
        ListField = 'UF'
        ListSource = DM_Endereco.DT_Estados
        ReadOnly = True
        TabOrder = 4
      end
      object DBLookupComboBoxCidade: TDBLookupComboBox
        Left = 632
        Top = 120
        Width = 209
        Height = 21
        DataField = 'CIDADE_ID'
        DataSource = DM_Cadastro.DT_cliente
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DM_Endereco.Dt_Cidade
        ReadOnly = True
        TabOrder = 5
      end
      object DB_telefone: TDBEdit
        Left = 16
        Top = 120
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 6
      end
      object DB_Email: TDBEdit
        Left = 182
        Top = 120
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMAIL'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 7
      end
      object DB_Numero: TDBEdit
        Left = 368
        Top = 176
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 8
      end
      object DB_Rua: TDBEdit
        Left = 16
        Top = 176
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RUA'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 9
      end
      object DB_Descricao: TDBEdit
        Left = 16
        Top = 235
        Width = 321
        Height = 21
        CharCase = ecUpperCase
        DataField = 'DESCRICAO'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 10
      end
      object Edt_bairro: TDBEdit
        Left = 861
        Top = 120
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 11
      end
    end
  end
end
