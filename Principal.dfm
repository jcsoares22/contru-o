object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal'
  ClientHeight = 844
  ClientWidth = 1186
  Color = clBtnFace
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
    ExplicitWidth = 1087
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1186
    Height = 65
    ActivePage = TabSheet2
    Align = alTop
    TabOrder = 1
    ExplicitTop = 600
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
        ExplicitWidth = 1079
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
        ExplicitWidth = 1079
        object SpeedButton1: TSpeedButton
          Left = 0
          Top = 0
          Width = 65
          Height = 33
          Glyph.Data = {
            DE200000424DDE20000000000000360000002800000032000000370000000100
            180000000000A8200000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            CCD4DC91A2B491A2B491A2B491A2B491A2B491A2B491A2B491A2B491A2B491A2
            B491A2B490A2B391A3B491A2B491A2B491A2B491A2B491A2B491A2B491A2B491
            A2B491A2B491A2B4E4E8ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDAE0E624476B1B40
            641B40641B40641B40641B40641B40641B40641B40641B40641B40644F4A6431
            44641B40641B40641B40641B40641B40641B40641B40641B40641B40643A5978
            F5F6F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4CDD63656773656771B40641B
            40641B40641B40641B40641C40645B4C645B4C64D86566C561664247641B4064
            1B40641B40641B40641B40641B40641B40644B6885E0E5EAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFF6F7F9F6F7F9B3BFCB7C90A65F5A73614D65
            805365BD5F66E56767E56767E66867E66867E26766AE5D667752655E4D646265
            7E62657E8599ACC3CCD6FCFCFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEB8F8DE66867E66867E66867E668
            67E66867E66867E66867E66867E66867E66867E66867EFAEAEEFAEAED8E3EED0
            DDEBFCFDFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFE79F9EE07D7CE07D7CE07D7CE07D7CE07D7CE07D7CE0
            7D7CE07D7CE07D7CE07D7CE07D7CBE99A6BE99A684A6CA85A7CBBBCEE1FFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD9E2EB346598A7BDD2FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFDADADACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCAAB9C9AAB9C985A6CA85A7CB9DB8D5FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCC
            D9E51A528902407E4E7AA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADACCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3
            B4B3B3B4949CA48DA1B5B3C6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCD9E51A528902407E
            4E7AA6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDADADACCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3B4B3B3B4949CA48D
            A1B5B3C6D8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFEFEFE
            FFFFFFFFFFFFFFFFFFFFFFFFBECEDE114C8502407E2C619684A0BDC1C1C3FDFD
            FDFDFDFDFFFFFFFFFFFFDADADACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3B3B3B3B3999999999999DCDCDCFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBBFBFBFC0C0C0FFFFFFFFFFFFFFFF
            FFAFC3D60B478202407E35689C85A3C2969A9E999999B8B8B8B8B8B8FAFAFAFF
            FFFFDADADACCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCB3B3B3B3B3B39999999D9D9DF8F8F8FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFEFEFEB8B8B8999999ACACACFFFFFF9FB6CD9FB6CD07448002407E74
            96B8A1BAD3959BA1999999999999999999999999B1B1B1F8F8F8DADADACCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3
            B3B3B3B3999999B6B6B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDBD
            BDBDA5A5A59D9D9DBBBCBC7784927784920B447F8AA7C3FFFFFFF9F9F9B4B4B4
            999999999999999999999999999999A9A9A9D2D2D2CCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3B3B3B3B3999999D6
            D6D6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDB9B9B9
            989898989898989898BDC4CBFFFFFFFFFFFFFFFFFFFBFBFBB9B9B99999999999
            99999999999999999999BEBEBECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCCCCCCCCCCCCCCCCCB3B3B3B3B3B39A9A9AF4F4F4FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCBEBEBE9A9A9A9A9A
            9AD9D9D9FFFFFFFFFFFFFFFFFFFFFFFFFCFCFCBFBFBF98989898989899999999
            9999BEBEBECCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCC
            CCCCCCCCCCCCB3B3B3B3B3B3B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE2E2E2E2E2E2BABABAC8C8C8F8
            F8F8FFFFFFFFFFFFFFFFFFFEFEFEC6C6C6C6C6C6989898999999BEBEBECCCCCC
            CBCBCBCACACAC9C9C9C9C9C9C8C8C8C8C8C8C9C9C9CACACACBCBCBCCCCCCB3B3
            B3B3B3B3CFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFEFEFEFEFEFECCCCCC9A9A9AAAAAAB989EA57788996079915170
            8D51708D4B6C8B4B6C8B52708D617A927A8B9B9CA1A7A6A6A6A6A6A6F0F0F0FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFE
            FEFEFEFECCCCCC9A9A9AAAAAAB989EA577889960799151708D51708D4B6C8B4B
            6C8B52708D617A927A8B9B9CA1A7A6A6A6A6A6A6F0F0F0FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE0E7EF5D
            7F9F194F8302427F0A48841C568F28609628609630669A2F659A275F951A558D
            07468303427F1E53851E538585A4C1E9EEF4FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFEAF0F56B91B56B91B50948832B62975683B0759BC1
            7FA0C37697B97090B37090B36E8EB06E8EB07191B37797BA7FA1C47198BF507E
            AC507EAC225B920D4A8582A2C1F6F8FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFF
            C6D6E62A61951E58901E58907197BF7899BB6E8EAF6C8CAE7090B27899BB789B
            BF789BBF779ABF779ABF799BBF7798BB7090B26C8CAE6F8EB06F8EB07B9CC066
            8FB9104D884374A3DCE6F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBED0E44676A600417F789C
            C2789CC27697BA7C9DC1658FB94374A5265E95104D8806458206458204448104
            448106468213508A2B62974979A96C94BD6C94BD7A9CBF7899BC5D89B400417F
            628CB7D5E1EDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFD8E3EE84A6CA235C9300417F3E70A23E70A22D639809
            488402428015518B34699D4B7BAA436D98436D986384A65E80A3436F9B4778A8
            2D64990E4C8700417F00417F0F4C8734699C2F659A00417F4274A589A9CCEEF3
            F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F5F9BF
            D1E493B0D185A7CB608BB62860962960962960963C6FA15885B1779CC284A6CA
            85A7CB84A6CA83A5C983A5C985A7CB85A7CB83A5C985A7CB85A7CB83A5CA7097
            BF7097BF517FAD376B9E275E952D64997399C085A7CB9DB7D4C7D6E7C7D6E7F9
            FAFCFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F7FA90AED085A7CB85A7CB85A7CB
            85A7CB85A7CB85A7CB85A7CB93B1D0CDDBE9EEF2F7F1F5F9D8E3EE9FBAD685A7
            CB85A7CB85A7CB85A7CB85A7CBAEC4DCE0E9F2F3F6F9E9EFF5E9EFF5C1D2E48A
            ABCD85A7CB85A7CB85A7CB85A7CB85A7CB85A7CB85A7CBA2BCD6FEFEFEFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFD6E1ED85A7CB85A7CB85A7CB85A7CB85A7CB85A7CB9BB6
            D49BB6D4F5F7FAFFFFFFDEDEDEB1B1B1D9D9D9FCFDFEB1C6DDB1C6DD85A7CB85
            A7CBC9D8E8FCFDFDCBCBCBB4B4B4ECECECECECECFFFFFFE8EEF58DADCE85A7CB
            85A7CB85A7CB85A7CB85A7CB85A7CB85A7CBF1F5F9FFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFD6E1ED85A7CB85A7CB85A7CB85A7CB85A7CB85A7CB9BB6D49BB6D4F5F7FAFF
            FFFFDEDEDEB1B1B1D9D9D9FCFDFEB1C6DDB1C6DD85A7CB85A7CBC9D8E8FCFDFD
            CBCBCBB4B4B4ECECECECECECFFFFFFE8EEF58DADCE85A7CB85A7CB85A7CB85A7
            CB85A7CB85A7CB85A7CBF1F5F9FFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFF4F989A9CC85
            A7CB85A7CB85A7CB85A7CB85A7CBE7EDF4E7EDF4FFFFFF929292050505000000
            030303818181F8FAFCF8FAFC91B0D0A6BFD9F8F8F85353530000000000001111
            11111111BEBEBEFFFFFFCCDAE985A7CB85A7CB85A7CB85A7CB85A7CB85A7CB95
            B3D1FDFDFEFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE3EBF3628CB435699D759BC2
            85A7CB9AB6D4FEFEFEFEFEFEE1E1E1070707000000000000000000030303D2D2
            D2D2D2D2B8CCE0D3DFEC9E9E9E000000000000000000000000000000242424FC
            FCFCF8FAFC86A7CB85A7CB668FB933689C83A4C683A4C6EFF3F8FFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F7AA601417F4D7CAB85A7CBA9C1DAFFFF
            FFFFFFFFB7B7B70000000000000101013D3D3D1D1D1DA5A5A5A5A5A5C7D6E7E1
            E9F26D6D6D0000000000000909094949494949490D0D0DE9E9E9FFFFFF8EADCE
            85A7CB30669A01417F86A4C286A4C2FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFE6ECF20544811D578F759BC29BB7D4FEFEFEFEFEFEDFDFDF06
            0606000000676767FEFEFE8B8B8BD0D0D0D0D0D0B9CCE1D3DFEC9B9B9B000000
            000000ADADADFFFFFFFFFFFF646464FBFBFBF9FAFC86A8CB6790BA0E4B87275D
            92FEFEFEFEFEFEFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC
            FCFD5983AC01417F32689C85A7CBE8EFF5E8EFF5FFFFFF8C8C8C020202575757
            A2A2A2929292F9FAFCF9FAFC92B0D0A8C0D9F7F7F74B4B4B0000008A8A8A8E8E
            8E8E8E8EBCBCBCFFFFFFCEDCEA84A6CA16528B01417F8DAAC6FFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDEE6EE01417F
            1A548D7FA2C79CB7D49CB7D4F5F8FBFFFFFFDBDBDBABABABD5D5D5FCFDFEB3C8
            DEB3C8DE85A7CB85A7CBCBDAE9FDFDFEC4C4C4AEAEAEEAEAEAEAEAEAFFFFFFE9
            EFF58EADCE759AC106468217518BFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE5785AD014582114E886E95
            BE6E95BE95B2D2D0DDEBF0F4F8F2F6F9DBE5F0A3BCD785A7CB85A7CB85A7CB85
            A7CB85A7CBB1C7DDE3EBF3F4F7FAECF1F7ECF1F7C5D5E68CACCE5A86B3074783
            0348838BABC6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFA6D0DF1D86AD177DA6237EA8237EA84793B853
            97BC5F9BC0699FC36FA0C474A1C678A3C778A3C77AA3C77AA3C778A3C774A1C6
            6EA0C4699FC35E9BBF5E9BBF5297BC4593B81A79A4187EA72089B0D0E6EEFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFA6D0DF1D86AD177DA6237EA8237EA84793B85397BC5F9BC0699FC3
            6FA0C474A1C678A3C778A3C77AA3C77AA3C778A3C774A1C66EA0C4699FC35E9B
            BF5E9BBF5297BC4593B81A79A4187EA72089B0D0E6EEFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAFDFF
            51C0EB3DB5E137ACD737ACD731A5CF2D9EC82595BE2090B8218FB7208DB41C88
            AE1C88AE1B87AE1C88AE1C88AF208DB4218FB62090B82697C02697C02D9FC832
            A6D038AED93EB6E371CCEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF93D9F343BDEA43BD
            EA43BDEA43BDEA43BDEA34AFDC31ADDA41BBE83EB7E42399C42399C42399C423
            99C4259CC742BCE93EB9E631ADDA38B3E038B3E043BDEA43BDEA43BDEA43BDEA
            B7E6F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBF8FD4FC1EB43BDEA43BDEA43BDEA40
            BAE731ADDA36B1DE42BCE93EB7E42399C42399C42399C42399C4259CC742BCE9
            42BCE932AEDB32AEDB32AEDB42BCE943BDEA43BDEA60C8EDFAFDFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFBEE8F743BDE943BDE943BDEA3AB5E231ADDA3BB6E3
            43BDEA3EB7E42399C42399C42399C42399C4259CC742BCE943BDEA37B3E031AD
            DA31ADDA3EB9E643BDEA48BEEAD7F1FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB1E4F6B1E4F646BFEA35B0DD31ADDA41BBE843BDEA3EB7E42399
            C42399C42399C42399C4259CC742BCE943BDEA3DB8E531ADDA31ADDA39B4E14A
            C0EBC4EAF8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFCAECF837AEDA35B0DD42BCE943BDEA3EB7E42399C42399C42399C423
            99C4259CC742BCE943BDEA42BCE931ADDA31ADDA49B7E0DAF2FBFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDA
            F0F9A9DFF274CFEF4CBFEB3FB7E42399C42399C42399C42399C4259CC743BCE9
            4CBFEA79CFEFAADEF1AADEF1E9F6FBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            F6FCFED2EDF784C6DE84C6DE6DBCD771BDD892CDE2DAF2FBF6FCFEFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6FCFED2EDF784C6
            DE84C6DE6DBCD771BDD892CDE2DAF2FBF6FCFEFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            0000}
          OnClick = bntClienteClick
        end
        object Button2: TButton
          Left = 1000
          Top = 9
          Width = 75
          Height = 25
          Caption = 'Salario'
          TabOrder = 0
        end
        object Button3: TButton
          Left = 96
          Top = 9
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
