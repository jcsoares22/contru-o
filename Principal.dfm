object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 844
  ClientWidth = 1186
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 803
    Width = 1186
    Height = 41
    Align = alBottom
    TabOrder = 0
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1186
    Height = 49
    ActivePage = TabSheet1
    Align = alTop
    TabOrder = 1
    ExplicitLeft = 8
    object TabSheet1: TTabSheet
      Caption = 'Cadastro'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1178
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object bntCliente: TButton
          Left = 0
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Clientes'
          TabOrder = 0
          OnClick = bntClienteClick
        end
        object btnSalario: TButton
          Left = 288
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Salario'
          TabOrder = 1
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Venda'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 1178
        Height = 41
        Align = alTop
        Alignment = taLeftJustify
        Color = clSkyBlue
        ParentBackground = False
        TabOrder = 0
        object Button2: TButton
          Left = 1000
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Salario'
          TabOrder = 0
        end
        object Button3: TButton
          Left = 1
          Top = 0
          Width = 75
          Height = 25
          Caption = 'Vendas'
          TabOrder = 1
          OnClick = Venda1Click
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 997
    Top = 168
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      object Clientes1: TMenuItem
        Caption = '&Clientes'
        OnClick = bntClienteClick
      end
      object ContaSubConta1: TMenuItem
        Caption = '&Conta/SubConta'
        OnClick = ContaSubConta1Click
      end
      object Estados1: TMenuItem
        Caption = '&Estados'
        OnClick = Estados1Click
      end
      object Unidademedida1: TMenuItem
        Caption = '&Unidade Medida'
        OnClick = Unidademedida1Click
      end
      object Cores1: TMenuItem
        Caption = '&Cores'
        OnClick = Cores1Click
      end
      object Marca1: TMenuItem
        Caption = '&Marca'
        OnClick = Marca1Click
      end
      object N1: TMenuItem
        Caption = '&Cidades'
        OnClick = N1Click
      end
      object Condiaaodepagamento1: TMenuItem
        Caption = '&Condia'#231'ao de pagamento'
        OnClick = Condiaaodepagamento1Click
      end
      object Bairro1: TMenuItem
        Caption = '&Bairro'
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
        OnClick = Sair1Click
      end
      object ipoDocumento1: TMenuItem
        Caption = '&Tipo Documento'
        OnClick = ipoDocumento1Click
      end
    end
    object Produto1: TMenuItem
      Caption = '&Produto'
      object Grupo1: TMenuItem
        Caption = '&Grupo'
        OnClick = Grupo1Click
      end
      object Grupo2: TMenuItem
        Caption = '&Sub grupo'
        OnClick = Grupo2Click
      end
      object Produto2: TMenuItem
        Caption = '&Produto'
        OnClick = Produto2Click
      end
    end
    object Consulta1: TMenuItem
      Caption = 'Consulta'
      object Oramento1: TMenuItem
        Caption = 'Or'#231'amento'
        OnClick = Oramento1Click
      end
    end
    object Relatorio1: TMenuItem
      Caption = 'Relatorio'
      object Relatorio2: TMenuItem
        Caption = 'Relatorio'
      end
      object Entradadeestoque1: TMenuItem
        Caption = 'Entrada de estoque'
      end
      object Saidadeestoque1: TMenuItem
        Caption = 'Saida de estoque'
      end
      object Vendas2: TMenuItem
        Caption = '&Vendas'
      end
    end
    object vendas1: TMenuItem
      Caption = '&vendas'
      object Venda1: TMenuItem
        Caption = 'Venda'
        OnClick = Venda1Click
      end
    end
    object N3: TMenuItem
      Caption = 'Estoque'
      object Estoque2: TMenuItem
        Caption = '&Movimenta'#231#227'o'
        OnClick = Estoque2Click
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
    end
    object Configurao1: TMenuItem
      Caption = '&Configura'#231#227'o'
      object Configurao2: TMenuItem
        Caption = 'Preferencia'
        OnClick = Configurao2Click
      end
      object N4: TMenuItem
        Caption = '?'
        ShortCut = 113
      end
      object Manutencousurio1: TMenuItem
        Caption = '&Manutenc'#227'o usu'#225'rio'
        OnClick = Manutencousurio1Click
      end
    end
  end
end
