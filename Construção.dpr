program Construção;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  DMDados in 'DMDados.pas' {DM_Dados: TDataModule},
  DMCadastro in 'DMCadastro.pas' {DM_Cadastro: TDataModule},
  CadastroPaiPrincipal in 'CadastroPaiPrincipal.pas' {frmCadastroPai},
  CadastroCliente in 'CadastroCliente.pas' {frmCadastroCliente},
  DMEndereco in 'DMEndereco.pas' {DM_Endereco: TDataModule},
  Login in 'Login.pas' {frmLogin},
  CadastroProduto in 'CadastroProduto.pas' {frmCadastroProduto},
  CadastroBasicoPai in 'CadastroBasicoPai.pas' {frmCadastroBasicoPai},
  CadastroCores in 'CadastroCores.pas' {frmCadastroCores},
  CadastroMarca in 'CadastroMarca.pas' {frmCadastroMarca},
  CadastroGrupo in 'CadastroGrupo.pas' {frmCadastroGrupo},
  CadastroSubGrupo in 'CadastroSubGrupo.pas' {frmCadastroSubGrupo},
  CadastroUnidadeMedida in 'CadastroUnidadeMedida.pas' {frmCadastroUnidadeMedida},
  CadastroEnderecoPai in 'CadastroEnderecoPai.pas' {frmCadastroEnderecoPai},
  CadastroEstados in 'CadastroEstados.pas' {frmCadastroEstados},
  CadastroCidades in 'CadastroCidades.pas' {frmCadastroCidades},
  CadastroCondPagamento2 in 'CadastroCondPagamento2.pas' {frmCadastroCondPagamento2},
  CadastroUsuarios2 in 'CadastroUsuarios2.pas' {frmCadastroUsuario2},
  CadastroVendas in 'CadastroVendas.pas' {frmCadastroVendas},
  DMVendas in 'DMVendas.pas' {DM_Vendas: TDataModule},
  CadastroTipoPagamento in 'CadastroTipoPagamento.pas' {frmCadastroTipoPagamento},
  CasdatroContasFinceiro in 'CasdatroContasFinceiro.pas' {frmContas},
  ConfigBanco in 'ConfigBanco.pas' {ConfiguraBanco},
  DMFinanceiro in 'DMFinanceiro.pas' {DM_Finaceiro: TDataModule},
  CadastroFinanceiro in 'CadastroFinanceiro.pas' {frmCadastroFinanceiro},
  CadastroDocumento in 'CadastroDocumento.pas' {frmCadastroDocumento},
  DMMovimentoEstoque in 'DMMovimentoEstoque.pas' {DM_Mov_Estoque: TDataModule},
  MovimentoEstoque in 'MovimentoEstoque.pas' {frmMovimento_estoque},
  Preferencia in 'Preferencia.pas' {frmPreferencia},
  Biblioteca in 'Biblioteca.pas',
  Orcamento in 'Orcamento.pas' {frmOrcamento},
  Vcl.Themes,
  Vcl.Styles,
  CadastroRapidoCliente in 'CadastroRapidoCliente.pas' {frmCadastroRapidoCliente},
  PesquisaCliente in 'PesquisaCliente.pas' {frmPesquisaCliente},
  LoginPreferencia in 'LoginPreferencia.pas' {frmLoginPreferencia},
  LoginMenu in 'LoginMenu.pas' {frmLoginMenu},
  CadastroUsuarios in 'CadastroUsuarios.pas' {frmCadastroUsuario},
  PesquisaAvancada in 'PesquisaAvancada.pas' {frmPesquisaAvancada},
  PesquisaAvancadaVenda in 'PesquisaAvancadaVenda.pas' {frmPesquisaAvancadaVenda},
  EstoqueMinimo in 'EstoqueMinimo.pas' {frmEstoqueminimo},
  EstoqueProduto in 'EstoqueProduto.pas' {frmEstoque},
  CadastroCondPagamento in 'CadastroCondPagamento.pas' {frmCadastroCondPagamento},
  LancamentoFinanceiro in 'LancamentoFinanceiro.pas' {frmLancamentoFinanceiro},
  informacao in 'informacao.pas' {frmInformacao},
  Criptografia in 'Criptografia.pas';

{$R *.res}

var
  usuarios: TfrmLogin;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDM_Dados, DM_Dados);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM_Cadastro, DM_Cadastro);
  Application.CreateForm(TDM_Endereco, DM_Endereco);
  Application.CreateForm(TDM_Vendas, DM_Vendas);
  Application.CreateForm(TDM_Finaceiro, DM_Finaceiro);
  Application.CreateForm(TDM_Mov_Estoque, DM_Mov_Estoque);
  Application.CreateForm(TfrmEstoque, frmEstoque);
  Application.CreateForm(TfrmInformacao, frmInformacao);
  usuarios := TfrmLogin.Create(nil);
    if usuarios.ShowModal = 1 then
    begin
    usuarios.Free;
    Application.Run;
    end
    else
    begin
    usuarios.Free;
    end;
  // retirar do comentario mais tarde }
  Application.Run;

end.
