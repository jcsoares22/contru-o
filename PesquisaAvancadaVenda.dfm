object frmPesquisaAvancadaVenda: TfrmPesquisaAvancadaVenda
  Left = 0
  Top = 0
  Caption = 'Pesquisa Avancada Venda'
  ClientHeight = 656
  ClientWidth = 1121
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1121
    Height = 137
    Align = alTop
    TabOrder = 0
    ExplicitTop = -6
    object Label1: TLabel
      Left = 240
      Top = 29
      Width = 71
      Height = 13
      Caption = 'Data da venda'
    end
    object Label2: TLabel
      Left = 261
      Top = 69
      Width = 17
      Height = 13
      Caption = 'At'#233
    end
    object Label3: TLabel
      Left = 8
      Top = 13
      Width = 66
      Height = 13
      Caption = 'Codigo Venda'
    end
    object edtData1: TDateTimePicker
      Left = 232
      Top = 48
      Width = 97
      Height = 21
      Date = 44710.029247777780000000
      Time = 44710.029247777780000000
      TabOrder = 0
    end
    object edtData2: TDateTimePicker
      Left = 232
      Top = 88
      Width = 97
      Height = 21
      Date = 44710.029247777780000000
      Time = 44710.029247777780000000
      TabOrder = 1
    end
    object edtCodigoVenda: TEdit
      Left = 8
      Top = 32
      Width = 121
      Height = 21
      TabOrder = 2
    end
    object edtFiltro: TEdit
      Left = 8
      Top = 83
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
    end
    object Filtra: TButton
      Left = 880
      Top = 88
      Width = 75
      Height = 25
      Caption = 'Filtra'
      TabOrder = 4
      OnClick = FiltraClick
    end
    object btnImprimir: TButton
      Left = 880
      Top = 57
      Width = 75
      Height = 25
      Caption = 'Imprimir'
      TabOrder = 5
      OnClick = btnImprimirClick
    end
    object cbSituacao: TComboBox
      Left = 688
      Top = 26
      Width = 145
      Height = 21
      TabOrder = 6
      Items.Strings = (
        'FATURADO'
        'CANCELADO'
        'ORCAMENTO')
    end
    object ComboBoxVendedor: TComboBox
      Left = 688
      Top = 59
      Width = 145
      Height = 21
      TabOrder = 7
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 137
    Width = 1121
    Height = 519
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 1
    object TabSheet1: TTabSheet
      Caption = 'Venda'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1113
        Height = 450
        Align = alClient
        DataSource = DSFiltro
        TabOrder = 0
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
            FieldName = 'CODCLIENTE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATAVENDA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_FATURAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'USU_NOME'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end>
      end
      object Painel: TPanel
        Left = 0
        Top = 450
        Width = 1113
        Height = 41
        Align = alBottom
        TabOrder = 1
        object edtValorTotal: TEdit
          Left = 640
          Top = 6
          Width = 121
          Height = 21
          TabOrder = 0
          Text = 'edtValorTotal'
          OnChange = edtValorTotalChange
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Itens venda'
      ImageIndex = 1
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 1113
        Height = 491
        Align = alClient
        DataSource = DTFiltroVendaItens
        TabOrder = 0
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
            FieldName = 'VALORPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QUANTIDADE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'NOME_PRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CODPRODUTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'QTE_ESTOQUE'
            Visible = True
          end>
      end
    end
  end
  object FDQueryFiltro: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select v.codigo,'
      'v.codcliente,'
      'c.codigo,'
      'c.nome,'
      'v.datavenda,'
      'v.data_faturamento,'
      'v.valortotal,'
      'v.usu_nome,'
      'v.situacao'
      
        'from saida_venda v inner join cliente c on (v.codcliente = c.cod' +
        'igo)')
    Left = 880
    Top = 312
    object FDQueryFiltroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryFiltroCODCLIENTE: TIntegerField
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      Required = True
    end
    object FDQueryFiltroCODIGO_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'CODIGO_1'
      Origin = 'CODIGO'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQueryFiltroNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQueryFiltroDATAVENDA: TSQLTimeStampField
      FieldName = 'DATAVENDA'
      Origin = 'DATAVENDA'
      Required = True
    end
    object FDQueryFiltroDATA_FATURAMENTO: TSQLTimeStampField
      FieldName = 'DATA_FATURAMENTO'
      Origin = 'DATA_FATURAMENTO'
    end
    object FDQueryFiltroUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Size = 30
    end
    object FDQueryFiltroSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 10
    end
    object FDQueryFiltroVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
  end
  object DSFiltro: TDataSource
    DataSet = FDQueryFiltro
    Left = 872
    Top = 376
  end
  object FDQueryFiltroVendaItens: TFDQuery
    IndexFieldNames = 'CODIGO'
    MasterSource = DSFiltro
    MasterFields = 'CODIGO'
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select '
      '   *'
      'from  saida_produto'
      '')
    Left = 1008
    Top = 312
    object FDQueryFiltroVendaItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = 'CODIGO'
      Required = True
    end
    object FDQueryFiltroVendaItensVALORPRODUTO: TBCDField
      FieldName = 'VALORPRODUTO'
      Origin = 'VALORPRODUTO'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroVendaItensQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'QUANTIDADE'
      Required = True
    end
    object FDQueryFiltroVendaItensVALORTOTAL: TBCDField
      FieldName = 'VALORTOTAL'
      Origin = 'VALORTOTAL'
      Precision = 18
      Size = 2
    end
    object FDQueryFiltroVendaItensNOME_PRODUTO: TStringField
      FieldKind = fkLookup
      FieldName = 'NOME_PRODUTO'
      LookupDataSet = DM_Cadastro.FDQueryProduto
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'PRODUTO'
      KeyFields = 'CODPRODUTO'
      Origin = 'NOME_PRODUTO'
      ReadOnly = True
      Size = 40
      Lookup = True
    end
    object FDQueryFiltroVendaItensCODPRODUTO: TIntegerField
      FieldName = 'CODPRODUTO'
      Origin = 'CODPRODUTO'
      Required = True
    end
    object FDQueryFiltroVendaItensQTE_ESTOQUE: TFloatField
      FieldName = 'QTE_ESTOQUE'
      Origin = 'QTE_ESTOQUE'
    end
  end
  object DTFiltroVendaItens: TDataSource
    DataSet = FDQueryFiltroVendaItens
    Left = 1016
    Top = 376
  end
  object cdsVendedor: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 72
    Top = 352
  end
  object DSVendedor: TDataSource
    DataSet = FDQueryUsuario
    Left = 72
    Top = 400
  end
  object FDQueryUsuario: TFDQuery
    Connection = DM_Dados.DADOS
    SQL.Strings = (
      'select * from usuario')
    Left = 72
    Top = 312
    object FDQueryUsuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Origin = 'USU_CODIGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQueryUsuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Origin = 'USU_NOME'
      Required = True
      Size = 30
    end
    object FDQueryUsuarioUSU_LOGIN: TStringField
      FieldName = 'USU_LOGIN'
      Origin = 'USU_LOGIN'
      Required = True
      Size = 10
    end
    object FDQueryUsuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Origin = 'USU_SENHA'
      Required = True
      Size = 10
    end
    object FDQueryUsuarioUSU_NIVEL: TIntegerField
      FieldName = 'USU_NIVEL'
      Origin = 'USU_NIVEL'
      Required = True
    end
    object FDQueryUsuarioADM: TStringField
      FieldName = 'ADM'
      Origin = 'ADM'
      FixedChar = True
      Size = 1
    end
    object FDQueryUsuarioPREFERENCIA: TStringField
      FieldName = 'PREFERENCIA'
      Origin = 'PREFERENCIA'
      FixedChar = True
      Size = 1
    end
    object FDQueryUsuarioCAD_USU: TStringField
      FieldName = 'CAD_USU'
      Origin = 'CAD_USU'
      FixedChar = True
      Size = 1
    end
  end
end
