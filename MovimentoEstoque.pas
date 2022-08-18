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
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label4: TLabel;
    DBCB_Movimentacao: TDBComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DATE_Mov: TDBEdit;
    Label3: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimento_estoque: TfrmMovimento_estoque;

implementation

{$R *.dfm}

uses DMCadastro, DMMovimentoEstoque, DMDados, Principal;

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
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Edit;
end;

procedure TfrmMovimento_estoque.btnNovoClick(Sender: TObject);

begin // usando a variavel prox para poder acrescentar +1 no cadastro
  inherited;
  if not(DM_Mov_Estoque.FDQueryMovimentoEstoque.State in [dsEdit, dsInsert])
  then
  begin
    DM_Mov_Estoque.FDQueryMovimentoEstoque.Insert;
  END;
  // colocando o foco no campo nome
  DBGrid.SetFocus;
  DBGrid.SelectedIndex := 1;
  DM_Mov_Estoque.FDQueryMovimentoEstoqueNOME_USUARIO.Text :=
    frmPrincipal.StatusBar1.Panels[1].Text;
  DATE_Mov.Text := DateToStr(now);
end;

procedure TfrmMovimento_estoque.btnSalvarClick(Sender: TObject);
begin
  inherited;
  { DM_Cadastro.FDQueryProduto.Edit;
    case frmMovimento_estoque.DBCB_Movimentacao.ItemIndex of
    0: // entrada de estoque
    begin
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
    end; }
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Mov_Estoque.FDQueryMovimentoEstoque.Edit;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Edit;

  DM_Mov_Estoque.FDQueryMovimentoEstoque.Post;
  DM_Cadastro.FDQueryProduto.Post;
  DM_Mov_Estoque.FDQuery_Movimento_estoque_item.Post;
end;

procedure TfrmMovimento_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmMovimento_estoque);
end;

end.
