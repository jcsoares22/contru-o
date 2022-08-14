inherited frmCadastroUnidadeMedida: TfrmCadastroUnidadeMedida
  Caption = 'UnidadeMedida'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DB_Grid: TDBGrid
    DataSource = DM_Cadastro.Dt_medida
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SIGLA_MEDIDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FRACIONADO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FATOR_CONVERSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO_CONVERSAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end>
  end
end
