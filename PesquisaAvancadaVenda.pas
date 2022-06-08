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
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Vcl.DBCtrls,
  Datasnap.DBClient, Vcl.Mask;

type
  TfrmPesquisaAvancadaVenda = class(TForm)
    FDQueryFiltro: TFDQuery;
    Panel1: TPanel;
    DSFiltro: TDataSource;
    edtCodigoVenda: TEdit;
    Label3: TLabel;
    edtFiltro: TEdit;
    Filtra: TButton;
    btnImprimir: TButton;
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
    Painel: TPanel;
    FDQueryFiltroCODIGO: TIntegerField;
    FDQueryFiltroCODCLIENTE: TIntegerField;
    FDQueryFiltroCODIGO_1: TIntegerField;
    FDQueryFiltroNOME: TStringField;
    FDQueryFiltroDATAVENDA: TSQLTimeStampField;
    FDQueryFiltroDATA_FATURAMENTO: TSQLTimeStampField;
    edtValorTotal: TEdit;
    FDQueryFiltroUSU_NOME: TStringField;
    cbSituacao: TComboBox;
    ComboBoxVendedor: TComboBox;
    FDQueryUsuario: TFDQuery;
    FDQueryUsuarioUSU_CODIGO: TIntegerField;
    FDQueryUsuarioUSU_NOME: TStringField;
    FDQueryUsuarioUSU_LOGIN: TStringField;
    FDQueryUsuarioUSU_SENHA: TStringField;
    FDQueryUsuarioUSU_NIVEL: TIntegerField;
    FDQueryUsuarioADM: TStringField;
    FDQueryUsuarioPREFERENCIA: TStringField;
    FDQueryUsuarioCAD_USU: TStringField;
    frPesquisaavancadaVenda: TfrxReport;
    frxVenda: TfrxDBDataset;
    frxVendaItens: TfrxDBDataset;
    FDQueryFiltroVALORTOTAL: TBCDField;
    FDQueryFiltroDATA_CANCELAMENTO: TSQLTimeStampField;
    FDQueryFiltroDATA_ORCAMENTO: TSQLTimeStampField;
    FDQueryFiltroDATA_FATURAMENTO_1: TSQLTimeStampField;
    Label5: TLabel;
    DateFaturamentoFinal: TDateTimePicker;
    DateFaturamentoIni: TDateTimePicker;
    Label4: TLabel;
    Label1: TLabel;
    edtData1: TDateTimePicker;
    Label2: TLabel;
    edtData2: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    ProgressBar1: TProgressBar;
    procedure FiltraClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure edtValorTotalChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edtData2Change(Sender: TObject);
  private
    { Private declarations }
    procedure Filtrar;
    procedure FiltrarItens;
    procedure somaTotal;
    procedure Vendedor; // usando o combo box para pegar os vendedor
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

procedure TfrmPesquisaAvancadaVenda.edtData2Change(Sender: TObject);
begin
edtData2.Format := EmptyStr;
end;

procedure TfrmPesquisaAvancadaVenda.edtValorTotalChange(Sender: TObject);
begin
  edtValorTotal.Text := FormatFloat('0.00', StrtoFloat(edtValorTotal.Text));
end;

procedure TfrmPesquisaAvancadaVenda.FiltraClick(Sender: TObject);
begin
      FDQueryFiltro.Close;
 // FDQueryFiltroVendaItens.Close;
  FDQueryFiltro.SQL.Clear;
  Filtrar;
  // FiltrarItens;
  somaTotal;

end;

procedure TfrmPesquisaAvancadaVenda.Filtrar;

begin
  FDQueryFiltro.Close;
 // FDQueryFiltroVendaItens.Close;
  FDQueryFiltro.SQL.Clear;
  FDQueryFiltro.SQL.Add('select v.codigo,');
  FDQueryFiltro.SQL.Add('v.codcliente,');
  FDQueryFiltro.SQL.Add('c.codigo,');
  FDQueryFiltro.SQL.Add('c.nome,');
  FDQueryFiltro.SQL.Add('v.datavenda,');
  FDQueryFiltro.SQL.Add('v.VALORTOTAL,');
  FDQueryFiltro.SQL.Add('v.usu_nome, ');
  FDQueryFiltro.SQL.Add('v.situacao, ');
    FDQueryFiltro.SQL.Add('v.DATA_FATURAMENTO, ');
  FDQueryFiltro.SQL.Add('v.DATA_CANCELAMENTO,');
  FDQueryFiltro.SQL.Add('v.DATA_ORCAMENTO, ');
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
  if DateFaturamentoIni.Date > 0 then
  begin
    FDQueryFiltro.SQL.Add(' AND v.DATA_FATURAMENTO >=  ' +
      QuotedStr(FormatDateTime('dd.mm.yyyy', DateFaturamentoIni.DateTime)))
  end;
  if DateFaturamentoFinal.Date > 0 then
  begin
    FDQueryFiltro.SQL.Add(' AND v.DATA_FATURAMENTO <=  ' +
      QuotedStr(FormatDateTime('dd.mm.yyyy', DateFaturamentoFinal.DateTime)))
  end;
  case cbSituacao.ItemIndex of
    0:
      Begin
        if cbSituacao.Text = 'FATURADO' then
        begin
          FDQueryFiltro.SQL.Add(' AND v.situacao = ' +
            QuotedStr(cbSituacao.Text));
        end;
      End;
    1:
      begin
        if cbSituacao.Text = 'CANCELADO' then
        begin
          FDQueryFiltro.SQL.Add(' AND v.situacao = ' +
            QuotedStr(cbSituacao.Text))
        end;
      end;
    2:
      begin
        if cbSituacao.Text = 'ORCAMENTO' then
        begin
          FDQueryFiltro.SQL.Add(' AND v.situacao = ' +
            QuotedStr(cbSituacao.Text))
        end;
      end;

  end;
  if ComboBoxVendedor.Text <> EmptyStr then
  begin
    FDQueryFiltro.SQL.Add(' AND v.usu_nome = ' +
      QuotedStr(ComboBoxVendedor.Text));
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

procedure TfrmPesquisaAvancadaVenda.FormShow(Sender: TObject);
begin
  Vendedor;
end;

procedure TfrmPesquisaAvancadaVenda.somaTotal;
var
  soma: Currency;
begin
  soma := 0;
  while not FDQueryFiltro.Eof do
  begin
    soma := soma + FDQueryFiltroVALORTOTAL.CurValue;
    FDQueryFiltro.Next;
  end;
  edtValorTotal.Text := CurrToStr(soma);
end;

procedure TfrmPesquisaAvancadaVenda.Vendedor;
begin
  ComboBoxVendedor.Items.Clear;
  FDQueryUsuario.Close;
  FDQueryUsuario.Open;
  FDQueryUsuario.First;
  while not FDQueryUsuario.Eof do
  begin
    ComboBoxVendedor.Items.AddObject(FDQueryUsuarioUSU_NOME.AsString,
      TObject(FDQueryUsuarioUSU_CODIGO.AsInteger));
    FDQueryUsuario.Next;
  end;
  // ComboBoxVendedor.ItemIndex := 0;
end;

end.
