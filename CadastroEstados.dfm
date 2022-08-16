inherited frmCadastroEstados: TfrmCadastroEstados
  Caption = 'Estados'
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid_Bairro: TDBGrid [0]
    DataSource = DM_Endereco.DT_Estados
    Columns = <
      item
        Expanded = False
        FieldName = 'ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UF'
        Visible = True
      end>
  end
  inherited Panel1: TPanel [1]
    inherited Label2: TLabel
      Enabled = False
      Visible = False
    end
    inherited Label1: TLabel
      Enabled = False
      Visible = False
    end
    inherited btnPesquisar: TButton
      Enabled = False
      Visible = False
    end
    inherited edt_Pesquisa: TEdit
      OnChange = edt_PesquisaChange
    end
    inherited CB_Opcao2: TComboBox
      Enabled = False
      Visible = False
    end
    inherited CB_opcao: TComboBox
      Enabled = False
      Visible = False
    end
  end
  inherited Panel2: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
  end
end
