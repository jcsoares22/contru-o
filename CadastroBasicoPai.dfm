object frmCadastroBasicoPai: TfrmCadastroBasicoPai
  Left = 0
  Top = 0
  Caption = 'frmCadastroBasicoPai'
  ClientHeight = 643
  ClientWidth = 1185
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 49
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object btnNovo: TButton
      Left = 16
      Top = 9
      Width = 71
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 112
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Edite'
      TabOrder = 1
      OnClick = btnEditClick
    end
    object btnDeletar: TButton
      Left = 200
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 2
    end
    object btnSalvar: TButton
      Left = 281
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = btnSalvarClick
    end
    object btnCancelar: TButton
      Left = 384
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelarClick
    end
  end
  object DB_Grid: TDBGrid
    Left = 0
    Top = 49
    Width = 1185
    Height = 594
    Align = alClient
    DataSource = DM_Cadastro.DT_Grupo
    ParentColor = True
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnKeyPress = DB_GridKeyPress
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        ImeMode = imHanguel
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SECAO'
        Visible = True
      end>
  end
end
