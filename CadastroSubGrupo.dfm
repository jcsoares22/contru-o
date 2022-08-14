inherited frmCadastroSubGrupo: TfrmCadastroSubGrupo
  Caption = 'SubGrupo'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DB_Grid: TDBGrid
    DataSource = nil
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CODIGO_SUB_GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE_MEDIDA'
        ReadOnly = False
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE_CONSUMO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SUB_SECAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESC_SUB_GRUPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'GRUPO'
        Visible = True
      end>
  end
end
