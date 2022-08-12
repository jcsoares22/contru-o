inherited frmCadastroCliente: TfrmCadastroCliente
  Caption = 'CadastroCliente'
  ClientHeight = 639
  ClientWidth = 1009
  PopupMenu = PopupMenu1
  ExplicitWidth = 1025
  ExplicitHeight = 678
  PixelsPerInch = 96
  TextHeight = 13
  object PaintBox1: TPaintBox [0]
    Left = 496
    Top = 640
    Width = 105
    Height = 105
  end
  inherited Cadastro: TPageControl
    Width = 1009
    Height = 564
    ExplicitTop = 41
    ExplicitWidth = 1009
    ExplicitHeight = 564
    inherited TabSheet1: TTabSheet
      ExplicitWidth = 1001
      ExplicitHeight = 536
      inherited DBGrid_Cliente: TDBGrid
        Width = 1001
        Height = 495
        DataSource = DM_Cadastro.DT_cliente
        Columns = <
          item
            Expanded = False
            FieldName = 'CODIGO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TELEFONE'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CPF'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'EMAIL'
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
            FieldName = 'RUA'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NUMERO'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UF_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CIDADE_ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'BAIRRO'
            Width = 64
            Visible = True
          end>
      end
      inherited Panel2: TPanel
        Width = 1001
        ExplicitWidth = 1001
        inherited btnPesquisa: TButton
          OnClick = btnPesquisaClick
        end
      end
    end
    inherited TabSheet2: TTabSheet
      ExplicitWidth = 1001
      ExplicitHeight = 536
      object Label1: TLabel
        Left = 16
        Top = 56
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 112
        Top = 56
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = DB_Cpf
      end
      object Label2: TLabel
        Left = 283
        Top = 51
        Width = 29
        Height = 13
        Caption = 'NOME'
        FocusControl = DB_Nome
      end
      object Label13: TLabel
        Left = 632
        Top = 101
        Width = 33
        Height = 13
        Caption = 'Cidade'
        FocusControl = DB_Numero
      end
      object Label12: TLabel
        Left = 552
        Top = 101
        Width = 13
        Height = 13
        Caption = 'UF'
        FocusControl = DB_Numero
      end
      object Label15: TLabel
        Left = 861
        Top = 101
        Width = 28
        Height = 13
        Caption = 'Bairro'
        FocusControl = DB_Numero
      end
      object Label3: TLabel
        Left = 16
        Top = 104
        Width = 50
        Height = 13
        Caption = 'TELEFONE'
        FocusControl = DB_telefone
      end
      object Label5: TLabel
        Left = 182
        Top = 101
        Width = 30
        Height = 13
        Caption = 'EMAIL'
        FocusControl = DB_Email
      end
      object Label8: TLabel
        Left = 368
        Top = 157
        Width = 43
        Height = 13
        Caption = 'NUMERO'
        FocusControl = DB_Numero
      end
      object Label7: TLabel
        Left = 16
        Top = 160
        Width = 21
        Height = 13
        Caption = 'RUA'
        FocusControl = DB_Rua
      end
      object Label6: TLabel
        Left = 16
        Top = 208
        Width = 59
        Height = 13
        Caption = 'DESCRICAO'
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 75
        Width = 75
        Height = 21
        DataField = 'CODIGO'
        DataSource = DM_Cadastro.DT_cliente
        ReadOnly = True
        TabOrder = 0
      end
      object DB_Cpf: TDBEdit
        Left = 112
        Top = 74
        Width = 147
        Height = 21
        CharCase = ecUpperCase
        DataField = 'CPF'
        DataSource = DM_Cadastro.DT_cliente
        MaxLength = 14
        ReadOnly = True
        TabOrder = 1
        OnKeyPress = DB_CpfKeyPress
      end
      object DB_Nome: TDBEdit
        Left = 283
        Top = 72
        Width = 654
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NOME'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 2
      end
      object DBLookupComboBoxUf: TDBLookupComboBox
        Left = 552
        Top = 120
        Width = 57
        Height = 21
        DataField = 'UF_ID'
        DataSource = DM_Cadastro.DT_cliente
        KeyField = 'ID'
        ListField = 'UF'
        ListSource = DM_Endereco.DT_Estados
        ReadOnly = True
        TabOrder = 3
      end
      object DBLookupComboBoxCidade: TDBLookupComboBox
        Left = 632
        Top = 120
        Width = 209
        Height = 21
        DataField = 'CIDADE_ID'
        DataSource = DM_Cadastro.DT_cliente
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = DM_Endereco.Dt_Cidade
        ReadOnly = True
        TabOrder = 4
      end
      object DB_telefone: TDBEdit
        Left = 16
        Top = 120
        Width = 143
        Height = 21
        CharCase = ecUpperCase
        DataField = 'TELEFONE'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 5
        OnKeyPress = DB_CpfKeyPress
      end
      object DB_Email: TDBEdit
        Left = 182
        Top = 120
        Width = 346
        Height = 21
        CharCase = ecUpperCase
        DataField = 'EMAIL'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 6
      end
      object DB_Numero: TDBEdit
        Left = 368
        Top = 176
        Width = 160
        Height = 21
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 7
      end
      object DB_Rua: TDBEdit
        Left = 16
        Top = 176
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'RUA'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 8
      end
      object Edt_bairro: TDBEdit
        Left = 861
        Top = 120
        Width = 329
        Height = 21
        CharCase = ecUpperCase
        DataField = 'BAIRRO'
        DataSource = DM_Cadastro.DT_cliente
        ImeName = 'Portuguese (Brazilian ABNT)'
        ReadOnly = True
        TabOrder = 10
      end
      object DBListBox1: TDBListBox
        Left = 16
        Top = 227
        Width = 369
        Height = 97
        DataField = 'DESCRICAO'
        DataSource = DM_Cadastro.DT_cliente
        ItemHeight = 13
        TabOrder = 9
      end
    end
  end
  inherited Panel1: TPanel
    Width = 1009
    TabOrder = 2
    ExplicitLeft = 0
    ExplicitTop = 0
    ExplicitWidth = 1009
    inherited btnNovo: TButton
      Width = 63
      ExplicitWidth = 63
    end
    inherited btnEdit: TButton
      Width = 71
      ExplicitWidth = 71
    end
    inherited btnDeletar: TButton
      Width = 71
      OnClick = btnDeletarClick
      ExplicitWidth = 71
    end
    inherited btnSalvar: TButton
      Left = 297
      Width = 71
      ExplicitLeft = 297
      ExplicitWidth = 71
    end
    inherited btnCancelar: TButton
      Width = 71
      ExplicitWidth = 71
    end
    object DBNavigator1: TDBNavigator
      Left = 697
      Top = 9
      Width = 240
      Height = 25
      DataSource = DM_Cadastro.DT_cliente
      TabOrder = 5
    end
    object btnImprimir: TButton
      Left = 472
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 6
      OnClick = btnImprimirClick
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 605
    Width = 1009
    Height = 34
    Align = alBottom
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 1
    object Button1: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object frCliente: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44709.994380011600000000
    ReportOptions.LastChange = 44710.001783090280000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 876
    Top = 216
    Datasets = <
      item
        DataSet = frxCliente
        DataSetName = 'frxCliente'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 472.441250000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 46.488213390000000000
          Width = 52.913420000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Cliente:')
        end
        object frxClienteNOME: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 71.811070000000000000
          Top = 46.488213390000000000
          Width = 400.630180000000000000
          Height = 18.897650000000000000
          DataField = 'NOME'
          DataSet = frxCliente
          DataSetName = 'frxCliente'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente."NOME"]')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 215.433210000000000000
          Top = 7.559060000000000000
          Width = 340.157700000000000000
          Height = 34.015770000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -27
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cadastro de cliente')
          ParentFont = False
        end
        object frxClienteTELEFONE: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 75.590600000000000000
          Top = 75.590600000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'TELEFONE'
          DataSet = frxCliente
          DataSetName = 'frxCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente."TELEFONE"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 75.590600000000000000
          Width = 56.692950000000010000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Telefone: ')
        end
        object frxClienteCPF: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 566.929499999999900000
          Top = 45.354360000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          DataField = 'CPF'
          DataSet = frxCliente
          DataSetName = 'frxCliente'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxCliente."CPF"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 480.000310000000000000
          Top = 46.488213390000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'CPF/CNJP.:')
          ParentFont = False
        end
      end
    end
  end
  object frxCliente: TfrxDBDataset
    UserName = 'frxCliente'
    CloseDataSource = False
    DataSource = DM_Cadastro.DT_cliente
    BCDToCurrency = False
    DataSetOptions = []
    Left = 804
    Top = 216
  end
  object fdQueryFiltroCliente: TFDQuery
    SQL.Strings = (
      'select '
      '    cliente.codigo,'
      '    cliente.telefone,'
      '    cliente.cpf,'
      '    cliente.email,'
      '    cliente.nome,'
      '    cliente.descricao,'
      '    cliente.rua,'
      '    cliente.numero,'
      '    cliente.uf_id,'
      '    cliente.cidade_id,'
      '    cliente.bairro,'
      '    estados.uf,'
      '    cidades.nome'
      'from cidades'
      '   inner join cliente on (cidades.id = cliente.cidade_id)'
      '   inner join estados on (cliente.uf_id = estados.id)')
    Left = 800
    Top = 264
  end
  object PopupMenu1: TPopupMenu
    Left = 880
    Top = 264
    object PesquisaAvanadas1: TMenuItem
      Caption = 'Pesquisa Avan'#231'adas'
      OnClick = Button1Click
    end
  end
end
