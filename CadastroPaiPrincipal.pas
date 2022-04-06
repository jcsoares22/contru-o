unit CadastroPaiPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls;

type
  TfrmCadastroPai = class(TForm)
    Cadastro: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid_Cliente: TDBGrid;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CB_Opcao2: TComboBox;
    CB_opcao: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    btnNovo: TButton;
    btnEdit: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid_ClienteDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroPai: TfrmCadastroPai;

implementation

{$R *.dfm}

uses DMDados, DMEndereco, DMCadastro, DMMovimentoEstoque;

procedure TfrmCadastroPai.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
end;

procedure TfrmCadastroPai.btnEditClick(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  btnNovo.Enabled := false;
  btnDeletar.Enabled := false;
  btnEdit.Enabled := false;
end;

procedure TfrmCadastroPai.btnNovoClick(Sender: TObject);
begin
  DM_Cadastro.FDQueryCliente.Active := true;
  DM_Cadastro.FDQueryCliente.Last;
  DM_Cadastro.FDQueryCliente.Edit;
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
end;

procedure TfrmCadastroPai.btnSalvarClick(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  btnNovo.Enabled := true;
  btnDeletar.Enabled := true;
  btnEdit.Enabled := true;
end;

procedure TfrmCadastroPai.DBGrid_ClienteDblClick(Sender: TObject);
begin
  Cadastro.TabIndex := 1;
end;

procedure TfrmCadastroPai.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //Action := caFree;
  DM_Cadastro.FDQueryCliente.close;
  DM_Endereco.FDQueryCidade.close;
  DM_Endereco.FDQueryEstados.close;
  DM_Cadastro.FDQueryProduto.close;
  DM_Cadastro.FDQueryCores.close;
  DM_Cadastro.FDQueryMarca.close;
  DM_Cadastro.FDQueryGrupo.close;
  DM_Cadastro.FDQuerySub_grupo.close;
  DM_Cadastro.FDQueryUnMedida.close;
  DM_Cadastro.FDQueryCondição_pagamento.close;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.close;
  DM_Dados.FDQueryUsuario.close;
  DM_Dados.FDUSUARIO.close;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.close;
end;

procedure TfrmCadastroPai.FormCreate(Sender: TObject);
begin
  DM_Endereco.FDQueryCidade.Open();
  DM_Endereco.FDQueryEstados.Open();
  DM_Cadastro.FDQueryCliente.Open();
  DM_Cadastro.FDQueryProduto.Open();
  DM_Cadastro.FDQueryCores.Open();
  DM_Cadastro.FDQueryMarca.Open();
  DM_Cadastro.FDQueryGrupo.Open();
  DM_Cadastro.FDQuerySub_grupo.Open();
  DM_Cadastro.FDQueryUnMedida.Open();
  DM_Cadastro.FDQueryCondição_pagamento.Open();
  DM_Cadastro.FDQueryProduto.Open();
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Open();
  DM_Dados.FDQueryUsuario.Open();
  DM_Dados.FDUSUARIO.Open();
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Open();
end;

end.
