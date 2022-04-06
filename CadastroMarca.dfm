inherited frmCadastroMarca: TfrmCadastroMarca
  Caption = 'Marca'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
  end
  inherited DB_Grid: TDBGrid
    DataSource = DM_Cadastro.DT_Marca
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end>
  end
end
