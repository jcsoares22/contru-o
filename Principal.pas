unit Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.StdCtrls, Vcl.ExtCtrls,
  Preferencia,
  Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin, Vcl.ActnMan, Vcl.ActnCtrls,
  Vcl.ActnMenus, Vcl.Imaging.pngimage, Vcl.Imaging.jpeg, RxShell;

type
  TfrmPrincipal = class(TForm)
    MainMenu1: TMainMenu;
    Cadastro1: TMenuItem;
    Clientes1: TMenuItem;
    Estados1: TMenuItem;
    Unidademedida1: TMenuItem;
    Cores1: TMenuItem;
    Marca1: TMenuItem;
    N1: TMenuItem;
    Condiaaodepagamento1: TMenuItem;
    Bairro1: TMenuItem;
    N2: TMenuItem;
    Sair1: TMenuItem;
    Produto1: TMenuItem;
    Grupo1: TMenuItem;
    Grupo2: TMenuItem;
    Produto2: TMenuItem;
    Consulta1: TMenuItem;
    Oramento1: TMenuItem;
    Relatorio1: TMenuItem;
    Relatorio2: TMenuItem;
    Entradadeestoque1: TMenuItem;
    Saidadeestoque1: TMenuItem;
    Vendas2: TMenuItem;
    vendas1: TMenuItem;
    Venda1: TMenuItem;
    N3: TMenuItem;
    Estoque2: TMenuItem;
    Estoque1: TMenuItem;
    Configurao1: TMenuItem;
    Configurao2: TMenuItem;
    N4: TMenuItem;
    Manutencousurio1: TMenuItem;
    Panel2: TPanel;
    ContaSubConta1: TMenuItem;
    ipoDocumento1: TMenuItem;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    TabSheet2: TTabSheet;
    Cliente: TSpeedButton;
    Conta_SubConta: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton7: TSpeedButton;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Button2: TButton;
    Panel4: TPanel;
    Button1: TButton;
    Lancamento_finaceiro: TSpeedButton;
    Foto: TImage;
    Oramentos1: TMenuItem;
    LocalProduto1: TMenuItem;
    fecharJanelas1: TMenuItem;

    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bntClienteClick(Sender: TObject);
    procedure Estados1Click(Sender: TObject);
    procedure Unidademedida1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure Marca1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Grupo1Click(Sender: TObject);
    procedure Grupo2Click(Sender: TObject);
    procedure Produto2Click(Sender: TObject);
    procedure Manutencousurio1Click(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure Condiaaodepagamento1Click(Sender: TObject);
    procedure ContaSubConta1Click(Sender: TObject);
    procedure bntFinanceiroClick(Sender: TObject);
    procedure ipoDocumento1Click(Sender: TObject);
    procedure Estoque2Click(Sender: TObject);
    procedure Configurao2Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    procedure Lancamento_finaceiroClick(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure LocalProduto1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure fecharJanelas1Click(Sender: TObject);
  private
    { Private declarations }
    procedure fecharTela;

  public
    { Public declarations }

  end;

var
  frmPrincipal: TfrmPrincipal;
  formAberto: TForm = nil;

implementation

{$R *.dfm}

uses CadastroCliente, CadastroFinanceiro, CadastroCondPagamento,
  LoginPreferencia, CasdatroContasFinceiro, CadastroCores, CadastroEstados,
  EstoqueMinimo, MovimentoEstoque, DMDados, CadastroGrupo, CadastroSubGrupo,
  CadastroDocumento, LancamentoFinanceiro, LocalProduto, LoginMenu,
  CadastroMarca, CadastroCidades, informacao, Orcamento, CadastroProduto,
  CadastroUnidadeMedida, CadastroVendas, CadastroUsuarios;

procedure TfrmPrincipal.bntClienteClick(Sender: TObject);
begin
  fecharTela;
  // frmCliente := TfrmCliente.Create(self);
  if (frmCadastroCliente = nil) then
    frmCadastroCliente := TFrmCadastroCliente.Create(self);
  if (not frmCadastroCliente.showing) then
    frmCadastroCliente.Show;
  begin
    if frmCadastroCliente.Visible = False then
      frmCadastroCliente.Visible := True;
    frmCadastroCliente.BringToFront;
  end;
end;

procedure TfrmPrincipal.bntFinanceiroClick(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroFinanceiro = nil) then
    frmCadastroFinanceiro := TFrmCadastroFinanceiro.Create(self);
  if (not frmCadastroFinanceiro.showing) then
    frmCadastroFinanceiro.Show;
  begin
    if frmCadastroFinanceiro.Visible = False then
      frmCadastroFinanceiro.Visible := True;
    frmCadastroFinanceiro.BringToFront;
  end;

end;

procedure TfrmPrincipal.Condiaaodepagamento1Click(Sender: TObject);
begin

  fecharTela;
  if (frmCadastroCondPagamento = nil) then
    frmCadastroCondPagamento := TFrmCadastroCondPagamento.Create(self);
  if (not frmCadastroCondPagamento.showing) then
    frmCadastroCondPagamento.Show;
  begin
    if frmCadastroCondPagamento.Visible = False then
      frmCadastroCondPagamento.Visible := True;
    frmCadastroCondPagamento.BringToFront;
  end;
end;

procedure TfrmPrincipal.Configurao2Click(Sender: TObject);
begin // criando uma janela modal onde ele destroi o form quando fecha
  frmLoginPreferencia := TfrmLoginPreferencia.Create(self);
  try
    frmLoginPreferencia.showModal;
  finally
    FreeAndNil(frmLoginPreferencia);
  end;

end;

procedure TfrmPrincipal.ContaSubConta1Click(Sender: TObject);
begin
  fecharTela;
  if (frmContas = nil) then
    frmContas := TFrmContas.Create(self);
  if (not frmContas.showing) then
    frmContas.Show;
  begin
    if frmContas.Visible = False then
      frmContas.Visible := True;
    frmContas.BringToFront;
  end;
end;

procedure TfrmPrincipal.Cores1Click(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroCores = nil) then
    frmCadastroCores := TFrmCadastroCores.Create(self);
  if (not frmCadastroCores.showing) then
    frmCadastroCores.Show;
  begin
    if frmCadastroCores.Visible = False then
      frmCadastroCores.Visible := True;
    frmCadastroCores.BringToFront;
  end;
end;

procedure TfrmPrincipal.Estados1Click(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroEstados = nil) then
    frmCadastroEstados := TFrmCadastroEstados.Create(self);
  if (not frmCadastroEstados.showing) then
    frmCadastroEstados.Show;
  begin
    if frmCadastroEstados.Visible = False then
      frmCadastroEstados.Visible := True;
    frmCadastroEstados.BringToFront;
  end;
end;

procedure TfrmPrincipal.Estoque1Click(Sender: TObject);
begin
  frmEstoqueminimo := TFrmEstoqueminimo.Create(self);
  try
    frmEstoqueminimo.showModal;
  finally
    FreeAndNil(frmEstoqueminimo);

  end;
end;

procedure TfrmPrincipal.Estoque2Click(Sender: TObject);
begin

  fecharTela;
  if (frmMovimento_estoque = nil) then
    frmMovimento_estoque := TFrmMovimento_estoque.Create(self);
  if (not frmMovimento_estoque.showing) then
    frmMovimento_estoque.Show;
  begin
    if frmMovimento_estoque.Visible = False then
      frmMovimento_estoque.Visible := True;
    frmMovimento_estoque.BringToFront;
  end;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MessageDlg('Desja sair do sistema ?', TMsgDlgType.mtConfirmation,
    [mbok, mbNo], 0) = mrok then
  begin
    Application.Terminate;
  end;
  Abort;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.Open();
  try
    // DM_Cadastro.FDQueryProduto.Prior;

    Foto.Picture.LoadFromFile(DM_Dados.FDQueryPreferenciaFOTO.Value);
  except
    Foto.Picture := Nil;
  end;
end;

procedure TfrmPrincipal.Grupo1Click(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroGrupo = nil) then
    frmCadastroGrupo := TFrmCadastroGrupo.Create(self);
  if (not frmCadastroGrupo.showing) then
    frmCadastroGrupo.Show;
  begin
    if frmCadastroGrupo.Visible = False then
      frmCadastroGrupo.Visible := True;
    frmCadastroGrupo.BringToFront;
  end;
end;

procedure TfrmPrincipal.Grupo2Click(Sender: TObject);
begin

  fecharTela;
  if (frmCadastroSubGrupo = nil) then
    frmCadastroSubGrupo := TFrmCadastroSubGrupo.Create(self);
  if (not frmCadastroSubGrupo.showing) then
    frmCadastroSubGrupo.Show;
  begin
    if frmCadastroSubGrupo.Visible = False then
      frmCadastroSubGrupo.Visible := True;
    frmCadastroSubGrupo.BringToFront;
  end;
end;

procedure TfrmPrincipal.ipoDocumento1Click(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroDocumento = nil) then
    frmCadastroDocumento := TfrmCadastroDocumento.Create(self);
  if (not frmCadastroDocumento.showing) then
    frmCadastroDocumento.Show;
  begin
    if frmCadastroDocumento.Visible = False then
      frmCadastroDocumento.Visible := True;
    frmCadastroDocumento.BringToFront;
  end;
end;

procedure TfrmPrincipal.Lancamento_finaceiroClick(Sender: TObject);
begin

  fecharTela;
  if (frmLancamentoFinanceiro = nil) then
    frmLancamentoFinanceiro := TFrmLancamentoFinanceiro.Create(self);
  if (not frmLancamentoFinanceiro.showing) then
    frmLancamentoFinanceiro.Show;
  begin
    if frmLancamentoFinanceiro.Visible = False then
      frmLancamentoFinanceiro.Visible := True;
    frmLancamentoFinanceiro.BringToFront;
  end;
end;

procedure TfrmPrincipal.LocalProduto1Click(Sender: TObject);
begin
  fecharTela;
  if (frmCadastroLocalProduto = nil) then
    frmCadastroLocalProduto := TFrmCadastroLocalProduto.Create(self);
  if (not frmCadastroLocalProduto.showing) then
    frmCadastroLocalProduto.Show;
end;

procedure TfrmPrincipal.Manutencousurio1Click(Sender: TObject);
begin
  // DM_Dados.FDQueryUsuario.Open();

  try
    if (DM_Dados.FDQueryUsuario.recordCount > 0) and
      (DM_Dados.FDQueryUsuarioCAD_USU.Value = 'T') then
    begin
      frmCadastroUsuario := TFrmCadastroUsuario.Create(self);
      try
        frmCadastroUsuario.showModal;
      finally
        FreeAndNil(frmCadastroUsuario);
      end
    end
    else
    begin
      frmLoginMenu := TFrmLoginMenu.Create(self);
      try
        frmLoginMenu.showModal;
      finally
        FreeAndNil(frmLoginMenu);
      end;
    end;
  Except
    on E: Exception do
    BEGIN
      ShowMessage('errooo');
    END;
  end;
end;

  procedure TfrmPrincipal.Marca1Click(Sender: TObject);
  begin
    fecharTela;
    if (frmCadastroMarca = nil) then
      frmCadastroMarca := TFrmCadastroMarca.Create(self);
    if (not frmCadastroMarca.showing) then
      frmCadastroMarca.Show;
    begin
      if frmCadastroMarca.Visible = False then
        frmCadastroMarca.Visible := True;
      frmCadastroMarca.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.N1Click(Sender: TObject);
  begin
    // fecharTela;
    if (frmCadastroCidades = nil) then
      frmCadastroCidades := TFrmCadastroCidades.Create(self);
    if (not frmCadastroCidades.showing) then
      frmCadastroCidades.Show;
    begin
      if frmCadastroCidades.Visible = False then
        frmCadastroCidades.Visible := True;
      frmCadastroCidades.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.N4Click(Sender: TObject);
  begin
    frmInformacao := TfrmInformacao.Create(self);
    try
      frmInformacao.showModal;
    finally
      FreeAndNil(frmInformacao);
    end;

  end;

  procedure TfrmPrincipal.Oramento1Click(Sender: TObject);
  begin

    // fecharTela;
    if (frmOrcamento = nil) then
      frmOrcamento := TFrmOrcamento.Create(self);
    if (not frmOrcamento.showing) then
      frmOrcamento.Show;
    begin
      if frmOrcamento.Visible = False then
        frmOrcamento.Visible := True;
      frmOrcamento.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.Produto2Click(Sender: TObject);
  begin

    // fecharTela;
    if (frmCadastroProduto = nil) then
      frmCadastroProduto := TFrmCadastroProduto.Create(self);
    if (not frmCadastroProduto.showing) then
      frmCadastroProduto.Show;
    begin
      if frmCadastroProduto.Visible = False then
        frmCadastroProduto.Visible := True;
      frmCadastroProduto.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.Sair1Click(Sender: TObject);
  begin
    Close;
  end;

  procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
  begin
    StatusBar1.Panels[2].Text := 'Hora.: ' + TimeToStr(time);
    StatusBar1.Panels[3].Text := 'Data.: ' + DateToStr(Date);
  end;

  procedure TfrmPrincipal.Unidademedida1Click(Sender: TObject);
  begin
    // fecharTela;
    if (frmCadastroUnidadeMedida = nil) then
      frmCadastroUnidadeMedida := TFrmCadastroUnidadeMedida.Create(self);
    if (not frmCadastroUnidadeMedida.showing) then
      frmCadastroUnidadeMedida.Show;
    begin
      if frmCadastroUnidadeMedida.Visible = False then
        frmCadastroUnidadeMedida.Visible := True;
      frmCadastroUnidadeMedida.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.Venda1Click(Sender: TObject);
  begin
    // fecharTela;
    if (frmCadastroVendas = nil) then
      frmCadastroVendas := TFrmCadastroVendas.Create(self);
    if (not frmCadastroVendas.showing) then
      frmCadastroVendas.Show;
    begin
      if frmCadastroVendas.Visible = False then
        frmCadastroVendas.Visible := True;
      frmCadastroVendas.BringToFront;
    end;
  end;

  procedure TfrmPrincipal.fecharJanelas1Click(Sender: TObject);
  begin
    // frmCadastroProduto.CloseModal;
    { frmCadastroVendas.CloseQuery;
      frmCadastroUnidadeMedida.CloseModal;
      frmCadastroProduto.CloseModal;
      frmOrcamento.CloseModal;
      frmCadastroCidades.CloseModal;
      frmCadastroMarca.CloseModal;
      frmCadastroLocalProduto.CloseModal;
      frmLancamentoFinanceiro.CloseModal;
      frmCadastroDocumento.CloseModal;
      frmCadastroSubGrupo.CloseModal;
      frmCadastroGrupo.CloseModal;
      frmMovimento_estoque.CloseModal;
      frmCadastroEstados.CloseModal;
      frmContas.CloseModal;
      frmCadastroCondPagamento.CloseModal;
      frmCadastroFinanceiro.CloseModal;
      frmCadastroCliente.CloseModal; }
  end;

  procedure TfrmPrincipal.fecharTela;
  begin
    if formAberto <> nil then
    begin
      formAberto.Close;
      FreeAndNil(formAberto);
    end;
  end;

end.
