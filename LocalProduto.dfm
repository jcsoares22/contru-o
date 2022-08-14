inherited frmCadastroLocalProduto: TfrmCadastroLocalProduto
  Caption = 'Local produto'
  ExplicitWidth = 1201
  ExplicitHeight = 682
  PixelsPerInch = 96
  TextHeight = 13
  inherited DB_Grid: TDBGrid
    DataSource = DM_Cadastro.DT_LocalProd
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LOCAL'
        Visible = True
      end>
  end
end
