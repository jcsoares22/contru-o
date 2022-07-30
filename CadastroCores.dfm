inherited frmCadastroCores: TfrmCadastroCores
  Caption = 'Cores'
  ExplicitWidth = 1201
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
  end
  inherited DB_Grid: TDBGrid
    DataSource = DM_Cadastro.DT_Cores
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        ReadOnly = False
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
end
