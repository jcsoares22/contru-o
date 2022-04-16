object frmPreferencia: TfrmPreferencia
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Preferencia'
  ClientHeight = 704
  ClientWidth = 891
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
    Width = 891
    Height = 704
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Informa'#231#227'o'
    end
    object TabSheet2: TTabSheet
      Caption = 'venda'
      ImageIndex = 1
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 58
        Height = 13
        Caption = '% desconto'
      end
      object Panel1: TPanel
        Left = 0
        Top = 635
        Width = 883
        Height = 41
        Align = alBottom
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        ExplicitLeft = 264
        ExplicitTop = 400
        ExplicitWidth = 185
        object Button1: TButton
          Left = 640
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
        end
        object Button2: TButton
          Left = 776
          Top = 8
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
        end
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 5
        Width = 73
        Height = 21
        DataField = 'LIMITE_DESCONTO'
        DataSource = DM_Dados.DT_Preferencia
        TabOrder = 1
      end
    end
  end
end
