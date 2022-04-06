unit MovimentoEstoque;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TfrmMovimento_estoque = class(TfrmCadastroPai)
    DBGrid: TDBGrid;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBCB_Movimentacao: TDBComboBox;
    DBNavigator1: TDBNavigator;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimento_estoque: TfrmMovimento_estoque;

implementation

{$R *.dfm}

uses DMCadastro, DMMovimentoEstoque, DMDados;

procedure TfrmMovimento_estoque.btnCancelarClick(Sender: TObject);
begin
  inherited;
     DM_Mov_Estoque.FDQueryMovimentoEstoque.Cancel;
end;

procedure TfrmMovimento_estoque.btnDeletarClick(Sender: TObject);
begin
  inherited;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Delete;
end;

procedure TfrmMovimento_estoque.btnEditClick(Sender: TObject);
begin
  inherited;
   DM_Mov_Estoque.FDQueryMovimentoEstoque.Edit;
   DM_Mov_Estoque.FDQuery_Movimento_estoque_item.edit;
end;

procedure TfrmMovimento_estoque.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin // usando a variavel prox para poder acrescentar +1 no cadastro
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Edit;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Open();
  DM_Mov_Estoque.FDQueryMovimentoEstoque.last;
  prox := DM_Mov_Estoque.FDQueryMovimentoEstoqueID_MOVIMENTACAO.AsInteger + 1;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Append;
  DM_Mov_Estoque.FDQueryMovimentoEstoqueID_MOVIMENTACAO.AsInteger := prox;
  // colocando o foco no campo nome
  DBGrid.SetFocus;
  DBGrid.SelectedIndex := 1;

end;

procedure TfrmMovimento_estoque.btnSalvarClick(Sender: TObject);
begin
  inherited;

  case frmMovimento_estoque.DBCB_Movimentacao.ItemIndex of
    0: // entrada de estoque
      begin
        DM_Cadastro.FDQueryProduto.Open();
        DM_Cadastro.FDQueryProduto.Edit;
        DM_Cadastro.FDQueryProdutoQUANTIDADE_ENTRADA.Value  :=
          (DM_Cadastro.FDQueryProdutoQUANTIDADE_ENTRADA.Value +
          DM_Mov_Estoque.FDQuery_Movimento_estoque_itemQUANTIDADE.Value);
        //DM_Cadastro.FDQueryProduto.post;
        ///COLOCAR ELE PARA CALCULAR A ENTRADA MAIS A QUANTIDADE ATUAL
      end;
    1:  // SAIDA DE ESTOQUE
      begin
        DM_Cadastro.FDQueryProduto.Open();
        DM_Cadastro.FDQueryProduto.Edit;
        DM_Cadastro.FDQueryProdutoQUANTIDADE_SAIDA.Value :=
          (DM_Cadastro.FDQueryProdutoQUANTIDADE_SAIDA.Value -
          DM_Mov_Estoque.FDQuery_Movimento_estoque_itemQUANTIDADE.Value);
       // DM_Cadastro.FDQueryProduto.post;
      end;
  end;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Edit;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.edit;
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Post;
  DM_Cadastro.FDQueryProduto.Post;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Post;
end;

end.
