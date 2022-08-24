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
  object DB_Grid: TDBGrid
    Left = 0
    Top = 41
    Width = 1185
    Height = 602
    Align = alClient
    DataSource = DM_Cadastro.DT_Grupo
    ParentColor = True
    ReadOnly = True
    TabOrder = 0
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
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1185
    Height = 41
    Align = alTop
    Color = clMenuHighlight
    ParentBackground = False
    TabOrder = 1
    object btnCancelar: TButton
      Left = 336
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = btnCancelarClick
    end
    object btnSalvar: TButton
      Left = 256
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 2
      OnClick = btnSalvarClick
    end
    object btnDeletar: TButton
      Left = 176
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Deletar'
      TabOrder = 3
    end
    object btnNovo: TButton
      Left = 16
      Top = 10
      Width = 71
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNovoClick
    end
    object btnEdit: TButton
      Left = 96
      Top = 10
      Width = 75
      Height = 25
      Caption = 'Edite'
      TabOrder = 4
      OnClick = btnEditClick
    end
  end
end
