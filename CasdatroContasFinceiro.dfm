object frmContas: TfrmContas
  Left = 0
  Top = 0
  Caption = 'Contas e sub contas'
  ClientHeight = 676
  ClientWidth = 1048
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
    Width = 1048
    Height = 41
    Align = alTop
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object btnEdit: TButton
      Left = 112
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Edite'
      TabOrder = 0
    end
    object btnNovo: TButton
      Left = 16
      Top = 9
      Width = 71
      Height = 25
      Caption = 'Novo'
      TabOrder = 1
      OnClick = btnNovoClick
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
      Left = 297
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 3
    end
    object btnCancelar: TButton
      Left = 384
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1048
    Height = 256
    Align = alTop
    DataSource = DM_Cadastro.DT_Conta
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
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
        FieldName = 'BLOQUEADA'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        PickList.Strings = (
          'PAGAR'
          'RECEBER')
        Width = 64
        Visible = True
      end>
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 351
    Width = 1048
    Height = 325
    Align = alClient
    DataSource = DM_Cadastro.DT_SubConta
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'CODIGO_SUB'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Width = 64
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BLOQUEADA'
        Width = 64
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 297
    Width = 1048
    Height = 54
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 16
      Top = 6
      Width = 48
      Height = 13
      Caption = 'Sub conta'
    end
    object Label2: TLabel
      Left = 16
      Top = 22
      Width = 220
      Height = 13
      Caption = 'Digite o nome da conta , depois da sub conta.'
    end
  end
end
