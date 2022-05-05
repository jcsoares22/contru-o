object frmOrcamento: TfrmOrcamento
  Left = 0
  Top = 0
  Caption = 'Or'#231'amento'
  ClientHeight = 701
  ClientWidth = 1112
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1112
    Height = 701
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Pesquisa'
      object DBGrid1: TDBGrid
        Left = 0
        Top = 65
        Width = 1104
        Height = 608
        Align = alClient
        DataSource = DM_Vendas.DtOrcamento
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
            FieldName = 'VALORTOTAL'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'OBS'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'FRETE'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'COND_PAGAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_CONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_SUBCONTA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ID_TIPO_PGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCONTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO_DESC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'SITUACAO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_FATURAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_CANCELAMENTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_ORCAMENTO'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1104
        Height = 65
        Align = alTop
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 1
        object Label9: TLabel
          Left = 19
          Top = 4
          Width = 65
          Height = 13
          Caption = 'Pesquisar por'
        end
        object Label11: TLabel
          Left = 219
          Top = 6
          Width = 60
          Height = 13
          Caption = 'Procurar por'
        end
        object Label10: TLabel
          Left = 116
          Top = 6
          Width = 35
          Height = 13
          Caption = 'Crit'#233'rio'
        end
        object CB_opcao: TComboBox
          Left = 19
          Top = 23
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          ItemIndex = 0
          TabOrder = 0
          Text = 'CODIGO'
          Items.Strings = (
            'CODIGO'
            'NOME')
        end
        object CB_Opcao2: TComboBox
          Left = 116
          Top = 23
          Width = 91
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 1
          Text = 'INICIADO COM'
          Items.Strings = (
            'INICIADO COM'
            'QUE CONT'#202'M'
            'IGUAL')
        end
        object edt_Pesquisa: TEdit
          Left = 219
          Top = 23
          Width = 449
          Height = 21
          CharCase = ecUpperCase
          TabOrder = 2
        end
        object btnPesquisa: TButton
          Left = 688
          Top = 21
          Width = 75
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 3
          OnClick = btnPesquisaClick
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Or'#231'amento'
      ImageIndex = 1
    end
  end
end
