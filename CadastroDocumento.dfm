inherited frmCadastroDocumento: TfrmCadastroDocumento
  Caption = 'Cadastro Documento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
  end
  inherited DB_Grid: TDBGrid
    DataSource = DM_Cadastro.DT_Tipo_Pgto
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
