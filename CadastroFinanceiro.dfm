inherited frmCadastroFinanceiro: TfrmCadastroFinanceiro
  Caption = 'Financeiro'
  ExplicitWidth = 1336
  ExplicitHeight = 975
  PixelsPerInch = 96
  TextHeight = 13
  inherited Cadastro: TPageControl
    ActivePage = TabSheet1
    inherited TabSheet1: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1312
      ExplicitHeight = 908
      inherited DBGrid_Cliente: TDBGrid
        DataSource = DM_Finaceiro.DT_Financeiro
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1312
      ExplicitHeight = 908
      object Label1: TLabel [0]
        Left = 16
        Top = 64
        Width = 50
        Height = 13
        Caption = 'ID_VENDA'
        FocusControl = DB_IdVenda
      end
      object Label2: TLabel [1]
        Left = 176
        Top = 64
        Width = 72
        Height = 13
        Caption = 'NUN_PARCELA'
        FocusControl = DBEdit2
      end
      object Label3: TLabel [2]
        Left = 328
        Top = 64
        Width = 51
        Height = 13
        Caption = 'VLR_PARC'
        FocusControl = DBEdit3
      end
      object Label4: TLabel [3]
        Left = 16
        Top = 120
        Width = 59
        Height = 13
        Caption = 'DATA_VENC'
        FocusControl = DBEdit4
      end
      object Label5: TLabel [4]
        Left = 16
        Top = 173
        Width = 60
        Height = 13
        Caption = 'DATA_PGTO'
        FocusControl = DBEdit5
      end
      object Label6: TLabel [5]
        Left = 24
        Top = 224
        Width = 33
        Height = 13
        Caption = 'JUROS'
        FocusControl = DBEdit6
      end
      object Label7: TLabel [6]
        Left = 16
        Top = 368
        Width = 55
        Height = 13
        Caption = 'DESCONTO'
        FocusControl = DBEdit7
      end
      object Label8: TLabel [7]
        Left = 16
        Top = 424
        Width = 51
        Height = 13
        Caption = 'VLR_PGTO'
        FocusControl = DBEdit8
      end
      object Label12: TLabel [8]
        Left = 16
        Top = 488
        Width = 66
        Height = 13
        Caption = 'PARC_SALDO'
        FocusControl = DBEdit9
      end
      object Label13: TLabel [9]
        Left = 16
        Top = 528
        Width = 63
        Height = 13
        Caption = 'COD_BANCO'
        FocusControl = DBEdit10
      end
      object DB_IdVenda: TDBEdit
        Left = 16
        Top = 80
        Width = 134
        Height = 21
        DataField = 'ID_VENDA'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 176
        Top = 80
        Width = 134
        Height = 21
        DataField = 'NUN_PARCELA'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 2
      end
      object DBEdit3: TDBEdit
        Left = 328
        Top = 80
        Width = 251
        Height = 21
        DataField = 'VLR_PARC'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 3
      end
      object DBEdit4: TDBEdit
        Left = 16
        Top = 136
        Width = 446
        Height = 21
        DataField = 'DATA_VENC'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 4
      end
      object DBEdit5: TDBEdit
        Left = 16
        Top = 192
        Width = 446
        Height = 21
        DataField = 'DATA_PGTO'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 5
      end
      object DBEdit6: TDBEdit
        Left = 24
        Top = 240
        Width = 251
        Height = 21
        DataField = 'JUROS'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 6
      end
      object DBEdit7: TDBEdit
        Left = 16
        Top = 384
        Width = 251
        Height = 21
        DataField = 'DESCONTO'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 7
      end
      object DBEdit8: TDBEdit
        Left = 16
        Top = 440
        Width = 251
        Height = 21
        DataField = 'VLR_PGTO'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 8
      end
      object DBEdit9: TDBEdit
        Left = 16
        Top = 504
        Width = 251
        Height = 21
        DataField = 'PARC_SALDO'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 9
      end
      object DBEdit10: TDBEdit
        Left = 16
        Top = 544
        Width = 147
        Height = 21
        DataField = 'COD_BANCO'
        DataSource = DM_Finaceiro.DT_Financeiro
        TabOrder = 10
      end
    end
  end
end
