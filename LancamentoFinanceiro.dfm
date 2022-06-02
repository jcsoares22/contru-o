object frmLancamentoFinanceiro: TfrmLancamentoFinanceiro
  Left = 0
  Top = 0
  Caption = 'Lancamento Financeiro'
  ClientHeight = 807
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 807
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 224
    ExplicitTop = 440
    ExplicitWidth = 289
    ExplicitHeight = 193
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      ExplicitWidth = 281
      ExplicitHeight = 165
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 1118
        Height = 779
        Align = alClient
        DataSource = DataSource1
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
            FieldName = 'SEQ_PARCELA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PARC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_VENC'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DATA_PGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'VLR_PGTO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TIPO'
            Visible = True
          end>
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitWidth = 281
      ExplicitHeight = 165
      object Label1: TLabel
        Left = 208
        Top = 232
        Width = 41
        Height = 13
        Caption = 'CODIGO'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 208
        Top = 272
        Width = 71
        Height = 13
        Caption = 'SEQ_PARCELA'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 208
        Top = 312
        Width = 51
        Height = 13
        Caption = 'VLR_PARC'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 208
        Top = 352
        Width = 59
        Height = 13
        Caption = 'DATA_VENC'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 208
        Top = 392
        Width = 60
        Height = 13
        Caption = 'DATA_PGTO'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 208
        Top = 472
        Width = 24
        Height = 13
        Caption = 'TIPO'
        FocusControl = DBEdit7
      end
      object Label6: TLabel
        Left = 208
        Top = 432
        Width = 51
        Height = 13
        Caption = 'VLR_PGTO'
        FocusControl = DBEdit6
      end
      object DBEdit1: TDBEdit
        Left = 208
        Top = 248
        Width = 134
        Height = 21
        DataField = 'CODIGO'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 208
        Top = 288
        Width = 134
        Height = 21
        DataField = 'SEQ_PARCELA'
        DataSource = DataSource1
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 208
        Top = 328
        Width = 251
        Height = 21
        DataField = 'VLR_PARC'
        DataSource = DataSource1
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 208
        Top = 368
        Width = 446
        Height = 21
        DataField = 'DATA_VENC'
        DataSource = DataSource1
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 208
        Top = 408
        Width = 446
        Height = 21
        DataField = 'DATA_PGTO'
        DataSource = DataSource1
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 208
        Top = 448
        Width = 251
        Height = 21
        DataField = 'VLR_PGTO'
        DataSource = DataSource1
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 208
        Top = 488
        Width = 30
        Height = 21
        DataField = 'TIPO'
        DataSource = DataSource1
        TabOrder = 6
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DM_Finaceiro.FDQueryFinanceiro
    Left = 560
    Top = 408
  end
end
