unit EstoqueProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, IWVCLBaseControl, IWBaseControl,
  IWBaseHTMLControl, IWControl, IWCompListbox, IWDBStdCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, RxToolEdit,
  RxLookup, RxCtrls, Vcl.Grids, Vcl.DBGrids, RxDBCtrl, Vcl.ExtCtrls, RxDBComb;

type
  TfrmEstoque = class(TForm)
    btnImprimir: TButton;
    Button1: TButton;
    FDQueryEstoque: TFDQuery;
    DataSourceEstoque: TDataSource;
    FDQueryEstoqueCODIGO: TIntegerField;
    FDQueryEstoquePRODUTO: TStringField;
    FDQueryEstoqueUN_MEDIDA: TStringField;
    FDQueryEstoquePRECO_CUSTO: TBCDField;
    FDQueryEstoquePRECO_VENDA: TBCDField;
    FDQueryEstoqueSITUACAO: TStringField;
    FDQueryEstoqueOBS: TStringField;
    FDQueryEstoqueDATACAD: TSQLTimeStampField;
    FDQueryEstoqueDATAVENDA: TSQLTimeStampField;
    FDQueryEstoqueCOR: TStringField;
    FDQueryEstoqueFOTO: TStringField;
    FDQueryEstoqueMARCA: TStringField;
    FDQueryEstoquePRECENTO_LUCRO: TCurrencyField;
    FDQueryEstoquePRECO_PRAZO_CUSTO: TBCDField;
    FDQueryEstoquePRECO_PRAZO_VENDA: TBCDField;
    FDQueryEstoquePRECENTO_PRAZO_LUCRO: TCurrencyField;
    FDQueryEstoqueQUANTIDADE_SAIDA: TIntegerField;
    FDQueryEstoqueID_GRUPO: TIntegerField;
    FDQueryEstoqueID_SUBGRUPO: TIntegerField;
    FDQueryEstoqueQUANTIDADE_ENTRADA: TIntegerField;
    FDQueryEstoqueQUANTIDADE_ATUAL: TIntegerField;
    FDQueryEstoqueQTE_MINIMA: TIntegerField;
    RxLookupProdutos: TRxLookupEdit;
    frEstoque: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    RxDBGrid1: TRxDBGrid;
    codigoProduto: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    maiorQue: TEdit;
    menorQue: TEdit;
    Label2: TLabel;
    RxDBComboBoxGrupo: TRxDBComboBox;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RxLookupProdutosChange(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
    procedure limparCampo;
  public
    { Public declarations }
  end;

var
  frmEstoque: TfrmEstoque;

implementation

{$R *.dfm}

uses DMCadastro, DMDados, Biblioteca;

procedure TfrmEstoque.btnImprimirClick(Sender: TObject);
begin

  CarregaRelatorio(frEstoque);
end;

procedure TfrmEstoque.Button1Click(Sender: TObject);
begin
  Filtrar;
end;

procedure TfrmEstoque.Filtrar;
var
  bloqueado: String;
begin
  bloqueado := 'I';
  FDQueryEstoque.Close;
  FDQueryEstoque.SQL.Clear;
  FDQueryEstoque.SQL.Add(' select produto.codigo, ');
  FDQueryEstoque.SQL.Add('produto.produto, ');
  FDQueryEstoque.SQL.Add('produto.un_medida, ');
  FDQueryEstoque.SQL.Add('produto.preco_custo, ');
  FDQueryEstoque.SQL.Add('produto.preco_venda, ');
  FDQueryEstoque.SQL.Add(' produto.situacao, ');
  FDQueryEstoque.SQL.Add('produto.obs, ');
  FDQueryEstoque.SQL.Add('produto.datacad, ');
  FDQueryEstoque.SQL.Add('produto.datavenda, ');
  FDQueryEstoque.SQL.Add('produto.cor, ');
  FDQueryEstoque.SQL.Add('produto.foto, ');
  FDQueryEstoque.SQL.Add('produto.marca, ');
  FDQueryEstoque.SQL.Add('produto.precento_lucro, ');
  FDQueryEstoque.SQL.Add('produto.preco_prazo_custo, ');
  FDQueryEstoque.SQL.Add('produto.preco_prazo_venda, ');
  FDQueryEstoque.SQL.Add('produto.precento_prazo_lucro, ');
  FDQueryEstoque.SQL.Add('produto.quantidade_saida, ');
  FDQueryEstoque.SQL.Add('produto.id_grupo, ');
  FDQueryEstoque.SQL.Add('produto.id_subgrupo, ');
  FDQueryEstoque.SQL.Add('produto.quantidade_entrada, ');
  FDQueryEstoque.SQL.Add('produto.quantidade_atual, ');
  FDQueryEstoque.SQL.Add('produto.qte_minima ');
  FDQueryEstoque.SQL.Add('from produto ');
  FDQueryEstoque.SQL.Add(' WHERE 1=1 ');
  if codigoProduto.Text <> '' then
  begin
    FDQueryEstoque.SQL.Add(' AND  produto.codigo = ' +
      QuotedStr(codigoProduto.Text));
   // FDQueryEstoque.SQL.Add(' AND  produto.situacao <>  ' + bloqueado);
  end;
  if menorQue.Text <> '' then
  begin
  FDQueryEstoque.SQL.Add(' and produto.quantidade_atual <=  '+ QuotedStr(menorQue.Text) );
  end;
  if maiorQue.Text <> '' then
  begin
  FDQueryEstoque.SQL.Add(' and produto.quantidade_atual >=  '+ QuotedStr(maiorQue.Text) );
  end;

  FDQueryEstoque.Open();
end;

procedure TfrmEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmEstoque);
end;

procedure TfrmEstoque.FormCreate(Sender: TObject);
begin
  FDQueryEstoque.Open();
  limparCampo;
 
end;

procedure TfrmEstoque.limparCampo;
begin
  // edtCodigoProduto.Text := '';
end;

procedure TfrmEstoque.RxLookupProdutosChange(Sender: TObject);
begin
  { FDQueryEstoque.Close;
    FDQueryEstoque.SQL.Clear;

    codigoProduto.Text := FDQueryEstoquePRODUTO.Value; }
end;

end.
