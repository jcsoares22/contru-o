object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 844
  ClientWidth = 1087
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1087
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    Color = clSkyBlue
    ParentBackground = False
    TabOrder = 0
    object bntCliente: TButton
      Left = 15
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Clientes'
      TabOrder = 0
      OnClick = bntClienteClick
    end
    object btnSalario: TButton
      Left = 1000
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Salario'
      TabOrder = 1
    end
    object btnVendas: TButton
      Left = 96
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Vendas'
      TabOrder = 2
      OnClick = Venda1Click
    end
    object bntFinanceiro: TButton
      Left = 184
      Top = 9
      Width = 75
      Height = 25
      Caption = 'Financeiro'
      TabOrder = 3
      OnClick = bntFinanceiroClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 803
    Width = 1087
    Height = 41
    Align = alBottom
    TabOrder = 1
  end
  object AdvGridFilterPanel1: TAdvGridFilterPanel
    Left = 96
    Top = 192
    Width = 670
    Height = 350
    ButtonAddIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D0000000467414D410000B18F0BFC6105000000097048597300000EC100000E
      C101B8916BED0000001874455874536F667477617265007061696E742E6E6574
      20342E302E34128202F3000001B749444154384F8DD3BF4B56511CC7F1478DD4
      D60802C51F20450405E92462630EBAF91738382864354835A743A2E024E22085
      81E9223808FE46512428210A0407C12548FB85190411BEDF1794E3E3FDF17CE0
      25F71CAEDFE79C73CF3797904BB8851E4C60090B788D6EDC40310A8A2FCFE20F
      3E60044FF11CA3F88863CCA00E8929423B8EE06A5C61DC2A9CABC72A0EF100B1
      B1D82F3CC1652732E23BCFE0025A9D08E36A7EC362AEB4D0F8EE0B7C43AD13C6
      0FB0883924ADEC33B6501E8DCEA7142B9844744477E007F06324E53BF670251A
      5DCC3DB8F50A07BDD844DA56B30ABA4ABFFE4307D318F221255905CD2B582BB7
      8E473E04799FE71FFE623B98D3359CA60FD68AFE3CF621C8D73CFF61D183604E
      D7719A7E4405DF62D8872057F3FCC03E2A83398517DF16B55674F7DE21AD37B3
      CEB00C9FD0E5E036ECCDBB0E129255B01176597404259887973BE962A715F4CA
      6CC02D9F5DBD9BB07DECCDB8FBE8C57507F9C7E2625EE20B6A9C08D3026FBBBD
      E9AF66C5772CE6FFDC77222E6D70A56B68405CEFBAED26D8DBAEAC19A9A9C638
      FCE51DD8F40318C41476F11363A84241F1ACEC824EBCC132FC681E7C07BC8331
      679DCB9D00C07367E3D22B14540000000049454E44AE426082}
    ButtonRemoveIcon.Data = {
      89504E470D0A1A0A0000000D49484452000000140000001408060000008D891D
      0D0000000467414D410000B18F0BFC6105000000097048597300000EC100000E
      C101B8916BED0000001874455874536F667477617265007061696E742E6E6574
      20342E302E34128202F3000001E649444154384F8DD33D4855611CC7F15B6AA5
      6B8881680A924490A04D2239EA909B9B930D0E09A50E65AD65422F8A53458328
      0AA94BD0209A9A28460816684450BB8B4251B6A97DBF8773E3E1706EF7FEE073
      B9E7E19CFFF99FE7259323C5B8885B98C232DE6212BDB880932828DEFC067FF0
      11CF30887B78816D1CE035EA903327D0895FB01B3B4CEBC2B126AC620F6D488D
      C57E6200A71CC813EFB90B1BB8E64018BBF90D8BD969A1F1DE07D847AD03C605
      58C23C0AE92C99D378875788A6E8325C0017234C15EEC31766E30377905C8C46
      F8E9955EDCC67B849FEA83767C843194C41EC7630B28423676E9EADFF4620E23
      FE49A4029F6001B7CE300EF105769FCC04AC9559479F7F52528ECF388685BFE3
      1CD232046B453FFDFE49899F390A0BEA793C969687880ACEC0794AC67974CEFC
      4C3BDB825D7A5AC285CAC6236AAD68EF6D225AF2382E90736601E7CCCF744E77
      E2B12708EF3F03A7E6861797E0D96CF0228E05BBE0A2840B60D10FE846B82B9A
      E1298BE6D7E55F849B3BB9B17D7332DE131673CB6CC04FFE375E0F8F8F6733BC
      395F6CE6117651E3409876B8DB3D9BBE355FBCC7623ED3EA405A3A60A76BB882
      52245386163897767615FFCD798CC3377F8587DEEDF314B3F8861F78896A1414
      B784A7A407D358818BE6C45FC759A4CC7526F3175BBA64A888F2C2FF00000000
      49454E44AE426082}
    Ctl3D = True
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clBlack
    LabelFont.Height = -11
    LabelFont.Name = 'Tahoma'
    LabelFont.Style = []
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWhite
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Title = 'Grid Filter'
    UI.ApplyButton = 'Apply Filter'
    UI.ApplyDialogText = 'Are you sure you want to apply the filter?'
    UI.ColumnLabel = 'Column'
    UI.ColumnHint = 'The column from the selected grid'
    UI.CaseLabel = 'Case'
    UI.CaseHint = 'Is the value case sensitive'
    UI.HintApplyFilter = 'Applies the new filter conditions'
    UI.HintClearFilter = 
      'Clears the visual filter conditions, but remains the active grid' +
      ' filter'
    UI.HintFilterAdd = 'Add a new filter'
    UI.HintFilterRemove = 'Remove this filter'
    UI.HintRestoreFilter = 'Restores the active grid filter to the filter panel'
    UI.OperationLabel = 'Filter operation'
    UI.OperationHint = 'Select an operation'
    UI.OperationEqual = 'Equal'
    UI.OperationNotEqual = 'Not equal'
    UI.OperationContains = 'Contains'
    UI.OperationBeginsWith = 'Begins with'
    UI.OperationEndsWith = 'Ends with'
    UI.OperationSmallerThen = 'Smaller than'
    UI.OperationLargerThen = 'Larger than'
    UI.OperationSmallerOrEqual = 'Smaller or equal'
    UI.OperationLargerOrEqual = 'Larger or equal'
    UI.OperationTrueFalse = 'True/False'
    UI.OperatorAnd = 'And'
    UI.OperatorOr = 'Or'
    UI.ClearButton = 'Clear Filter'
    UI.ClearDialogText = 'Are you sure you want to clear the filter?'
    UI.RestoreButton = 'Restore Filter'
    UI.RestoreDialogText = 'Are you sure you want to restore the filter?'
    UI.ValueLabel = 'Value'
    UI.ValueTextHint = 'Select a column first'
    Version = '1.0.0.0'
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
