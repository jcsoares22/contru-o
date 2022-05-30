inherited frmCadastroGrupo: TfrmCadastroGrupo
  Caption = 'Grupo'
  ClientHeight = 667
  ExplicitWidth = 1201
  ExplicitHeight = 706
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited btnDeletar: TButton
      OnClick = btnDeletarClick
    end
  end
  inherited DB_Grid: TDBGrid
    Height = 272
    Align = alTop
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECAO'
        Visible = True
      end>
  end
  object DBGridSubGrupo: TDBGrid
    Left = 0
    Top = 362
    Width = 1185
    Height = 305
    Align = alClient
    DataSource = DM_Cadastro.DT_SubGrupo
    ParentColor = True
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_GRUPO'
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
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE_CONSUMO'
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 321
    Width = 1185
    Height = 41
    Align = alTop
    TabOrder = 3
  end
end
