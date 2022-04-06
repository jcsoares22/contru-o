unit DMMovimentoEstoque;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DMDados, DMCadastro;

type
  TDM_Mov_Estoque = class(TDataModule)
    FDQueryMovimentoEstoque: TFDQuery;
    DT_MovimentoEstoque: TDataSource;
    FDQuery_Movimento_estoque_item: TFDQuery;
    DT_Movimento_estoque_item: TDataSource;
    FDQueryMovimentoEstoqueID_MOVIMENTACAO: TIntegerField;
    FDQueryMovimentoEstoqueNOME_USUARIO: TStringField;
    FDQueryMovimentoEstoqueDT_MOV: TSQLTimeStampField;
    FDQuery_Movimento_estoque_itemID_MOVIMENTACAO: TIntegerField;
    FDQuery_Movimento_estoque_itemCODPRODUTO: TIntegerField;
    FDQuery_Movimento_estoque_itemQUANTIDADE: TIntegerField;
    FDQuery_Movimento_estoque_itemNOME_PRODUTO: TStringField;
    FDQueryMovimentoEstoqueTIPO: TStringField;
    FDQuery_Movimento_estoque_itemQTE_ATUAL: TIntegerField;
    procedure FDQuery_Movimento_estoque_itemAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Mov_Estoque: TDM_Mov_Estoque;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

uses MovimentoEstoque;

procedure TDM_Mov_Estoque.FDQuery_Movimento_estoque_itemAfterPost
  (DataSet: TDataSet);
begin

  {case frmMovimento_estoque.DBCB_Movimentacao.ItemIndex of
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
  end;}
end;

end.
