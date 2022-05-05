inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'Cadastro Usuarios'
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
        Top = 57
        Height = 851
        DataSource = DM_Dados.DT_Usuario
        Columns = <
          item
            Expanded = False
            FieldName = 'USU_CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_LOGIN'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_SENHA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NIVEL'
            Visible = True
          end>
      end
      inherited Panel2: TPanel
        Height = 57
        ExplicitHeight = 57
        inherited Label9: TLabel
          Enabled = False
          Visible = False
        end
        inherited Label10: TLabel
          Enabled = False
          Visible = False
        end
        inherited Label11: TLabel
          Enabled = False
          Visible = False
        end
        object Label6: TLabel [3]
          Left = 16
          Top = 6
          Width = 116
          Height = 13
          Caption = 'Dgite o nome do usuario'
        end
        inherited CB_Opcao2: TComboBox
          Enabled = False
          Visible = False
        end
        inherited CB_opcao: TComboBox
          Top = 14
          Enabled = False
          ItemIndex = -1
          Visible = False
          Items.Strings = (
            'CODIGO'
            'NOME'
            'DIGITA'#199#195'O')
          ExplicitTop = 14
        end
        inherited edt_Pesquisa: TEdit
          Left = 11
          Top = 26
          OnChange = edt_PesquisaChange
          ExplicitLeft = 11
          ExplicitTop = 26
        end
        inherited btnPesquisa: TButton
          Enabled = False
          Visible = False
          OnClick = btnPesquisaClick
        end
      end
    end
    inherited TabSheet2: TTabSheet
      object Label1: TLabel [0]
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label3: TLabel [1]
        Left = 184
        Top = 56
        Width = 31
        Height = 13
        Caption = 'LOGIN'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [2]
        Left = 352
        Top = 56
        Width = 33
        Height = 13
        Caption = 'SENHA'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [3]
        Left = 456
        Top = 104
        Width = 87
        Height = 13
        Caption = 'NIVEL DE ACESSO'
        FocusControl = DBEdit5
      end
      object Label2: TLabel [4]
        Left = 16
        Top = 104
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DB_Nome
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 72
        Width = 134
        Height = 21
        DataField = 'USU_CODIGO'
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 1
      end
      object DB_Nome: TDBEdit
        Left = 16
        Top = 120
        Width = 394
        Height = 21
        DataField = 'USU_NOME'
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 184
        Top = 75
        Width = 134
        Height = 21
        DataField = 'USU_LOGIN'
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 352
        Top = 72
        Width = 134
        Height = 21
        DataField = 'USU_SENHA'
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 456
        Top = 120
        Width = 134
        Height = 21
        DataField = 'USU_NIVEL'
        DataSource = DM_Dados.DT_Usuario
        TabOrder = 5
      end
    end
  end
end
