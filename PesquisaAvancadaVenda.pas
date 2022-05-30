unit PesquisaAvancadaVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, DMDados, Vcl.ExtCtrls,
  Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Vcl.DBCtrls;

type
  TfrmPesquisaAvancadaVenda = class(TForm)
    FDQueryFiltro: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    edtData1: TDateTimePicker;
    edtData2: TDateTimePicker;
    Label2: TLabel;
    DSFiltro: TDataSource;
    edtCodigoVenda: TEdit;
    Label3: TLabel;
    CheckBox1: TCheckBox;
    edtFiltro: TEdit;
    Filtra: TButton;
    btnImprimir: TButton;
    frPesquisaavancadaVenda: TfrxReport;
    frxFiltrovenda: TfrxDBDataset;
    FDQueryFiltroVendaItens: TFDQuery;
    DTFiltroVendaItens: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid3: TDBGrid;
    FDQueryFiltroVendaItensCODIGO: TIntegerField;
    FDQueryFiltroVendaItensVALORPRODUTO: TBCDField;
    FDQueryFiltroVendaItensQUANTIDADE: TIntegerField;
    FDQueryFiltroVendaItensVALORTOTAL: TBCDField;
    FDQueryFiltroVendaItensNOME_PRODUTO: TStringField;
    FDQueryFiltroVendaItensCODPRODUTO: TIntegerField;
    FDQueryFiltroVendaItensQTE_ESTOQUE: TFloatField;
    frxFiltroVendaItens: TfrxDBDataset;
    Painel: TPanel;
    FDQueryFiltroCODIGO: TIntegerField;
    FDQueryFiltroCODCLIENTE: TIntegerField;
    FDQueryFiltroCODIGO_1: TIntegerField;
    FDQueryFiltroNOME: TStringField;
    FDQueryFiltroDATAVENDA: TSQLTimeStampField;
    FDQueryFiltroDATA_FATURAMENTO: TSQLTimeStampField;
    FDQueryFiltroVALORTOTAL: TBCDField;
    edtValorTotal: TEdit;
    FDQueryFiltroUSU_NOME: TStringField;
    procedure FiltraClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtValorTotalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
    procedure FiltrarItens;
    procedure somaTotal;
  public
    { Public declarations }

  end;

var
  frmPesquisaAvancadaVenda: TfrmPesquisaAvancadaVenda;

implementation

uses Biblioteca, DMCadastro;

{$R *.dfm}
{ TfrmPesquisaAvancadaVenda }

procedure TfrmPesquisaAvancadaVenda.btnImprimirClick(Sender: TObject);
begin
  CarregaRelatorio(frPesquisaavancadaVenda);
end;


procedure TfrmPesquisaAvancadaVenda.edtValorTotalChange(Sender: TObject);
begin
edtValorTotal.Text:= FormatFloat('0.00', StrtoFloat(edtValorTotal.Text));
end;

procedure TfrmPesquisaAvancadaVenda.FiltraClick(Sender: TObject);
begin
  Filtrar;
  // FiltrarItens;
   somaTotal;

end;

procedure TfrmPesquisaAvancadaVenda.Filtrar;

begin
  FDQueryFiltro.Close;
  FDQueryFiltroVendaItens.Close;
  FDQueryFiltro.SQL.Clear;
  FDQueryFiltro.SQL.Add('select v.codigo,');
  FDQueryFiltro.SQL.Add('v.codcliente,');
  FDQueryFiltro.SQL.Add('c.codigo,');
  FDQueryFiltro.SQL.Add('c.nome,');
  FDQueryFiltro.SQL.Add('v.datavenda,');
  FDQueryFiltro.SQL.Add('v.VALORTOTAL,');
  FDQueryFiltro.SQL.Add('v.usu_nome, ');
  FDQueryFiltro.SQL.Add('v.data_faturamento');
  FDQueryFiltro.SQL.Add
    (' from saida_venda v inner join cliente c on (v.codcliente = c.codigo)');
  FDQueryFiltro.SQL.Add(' WHERE 1=1');

  if trim(edtFiltro.Text) <> '' then
  begin
    FDQueryFiltro.SQL.Add(' AND c.nome like ' +
      QuotedStr('%' + UpperCase((trim(edtFiltro.Text))) + '%'));
  end;
  if edtData1.Date > 0 then
  begin
    FDQueryFiltro.SQL.Add(' AND v.datavenda >=  ' +
      QuotedStr(FormatDateTime('dd.mm.yyyy', edtData1.DateTime)))
  end;
  if edtData2.Date > 0 then
  begin
    FDQueryFiltro.SQL.Add(' AND v.datavenda <=  ' +
      QuotedStr(FormatDateTime('dd.mm.yyyy', edtData2.DateTime)))
  end;

  { if edtCodigoVenda.Text <> '' then
    begin
    FDQueryFiltro.SQL.Add(' AND v.codigo = ' + edtCodigoVenda.Text);
    end; }

  FDQueryFiltro.Open();
  FDQueryFiltroVendaItens.Open();

end;

procedure TfrmPesquisaAvancadaVenda.FiltrarItens;
begin
  FDQueryFiltroVendaItens.Close;
  FDQueryFiltroVendaItens.SQL.Clear;

  FDQueryFiltroVendaItens.SQL.Add('select cliente.codigo,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_venda.codigo,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_venda.codcliente,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.codigo,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.valorproduto,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.nome_produto,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.quantidade,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.valortotal,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.codproduto,');
  FDQueryFiltroVendaItens.SQL.Add(' saida_produto.qte_estoque');
  FDQueryFiltroVendaItens.SQL.Add
    (' from saida_venda inner join cliente on (saida_venda.codcliente = cliente.codigo) ');
  FDQueryFiltroVendaItens.SQL.Add
    ('   inner join saida_produto on (saida_venda.codigo = saida_produto.codigo) ');

  if trim(edtCodigoVenda.Text) <> '' then
  begin
    FDQueryFiltro.SQL.Add(' AND saida_produto.codigo =  saida_venda.codigo' +
      QuotedStr(edtCodigoVenda.Text));

  end;
  FDQueryFiltro.Open();
end;

procedure TfrmPesquisaAvancadaVenda.FormCreate(Sender: TObject);
begin
DM_Dados.FDQueryUsuario.Open();
end;

procedure TfrmPesquisaAvancadaVenda.somaTotal;
var
  soma: Currency;
begin
  while not FDQueryFiltro.Eof do
  begin
    soma := soma + FDQueryFiltroVALORTOTAL.CurValue;
    FDQueryFiltro.Next;
  end;
  edtValorTotal.Text := CurrToStr(soma);
end;

end.
