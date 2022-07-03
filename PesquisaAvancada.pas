unit PesquisaAvancada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, RxDBCtrl, Vcl.Buttons, frxClass,
  frxDBSet;

type
  TfrmPesquisaAvancada = class(TForm)
    Panel1: TPanel;
    ComboBoxCliente: TComboBox;
    ComboBoxCidades: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBoxEstado: TComboBox;
    UF: TLabel;
    codigoCliente: TEdit;
    btnPesquisar: TButton;
    btnLimparCriterios: TButton;
    Label4: TLabel;
    FDQueryPesquisaAvancadas: TFDQuery;
    MaskEdit1: TMaskEdit;
    FDQueryPesquisaAvancadasCODIGO: TIntegerField;
    FDQueryPesquisaAvancadasTELEFONE: TStringField;
    FDQueryPesquisaAvancadasCPF: TStringField;
    FDQueryPesquisaAvancadasEMAIL: TStringField;
    FDQueryPesquisaAvancadasNOME: TStringField;
    FDQueryPesquisaAvancadasDESCRICAO: TStringField;
    FDQueryPesquisaAvancadasRUA: TStringField;
    FDQueryPesquisaAvancadasNUMERO: TStringField;
    FDQueryPesquisaAvancadasBAIRRO: TStringField;
    FDQueryPesquisaAvancadasNOME_1: TStringField;
    FDQueryPesquisaAvancadasNOME_2: TStringField;
    DataSource1: TDataSource;
    RxDBGrid1: TRxDBGrid;
    frxReportClientes: TfrxReport;
    frxDBDatasetClientes: TfrxDBDataset;
    procedure btnLimparCriteriosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnPesquisarClick(Sender: TObject);
  private
    { Private declarations }
    procedure Cliente;
  public
    { Public declarations }
  end;

var
  frmPesquisaAvancada: TfrmPesquisaAvancada;

implementation

{$R *.dfm}

uses DMCadastro, DMEndereco, DMDados;

procedure TfrmPesquisaAvancada.btnLimparCriteriosClick(Sender: TObject);
begin
  ComboBoxCliente.Text := '';
  ComboBoxCidades.Text := '';
  ComboBoxEstado.Text := '';
  codigoCliente.Text := '';
end;

procedure TfrmPesquisaAvancada.btnPesquisarClick(Sender: TObject);
begin
  FDQueryPesquisaAvancadas.Close;
  FDQueryPesquisaAvancadas.SQL.Clear;
  FDQueryPesquisaAvancadas.SQL.Add('select cliente.codigo, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.telefone, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.cpf, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.email, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.nome, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.descricao, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.rua, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.numero, ');
  FDQueryPesquisaAvancadas.SQL.Add(' cliente.bairro, ');
  FDQueryPesquisaAvancadas.SQL.Add(' estados.nome, ');
   FDQueryPesquisaAvancadas.SQL.Add('cliente.cidade_id, ');
    FDQueryPesquisaAvancadas.SQL.Add('cliente.bairro,  ');
    FDQueryPesquisaAvancadas.SQL.Add('cidades.id,  ');
  FDQueryPesquisaAvancadas.SQL.Add(' cidades.nome ');
  FDQueryPesquisaAvancadas.SQL.Add
    ('from cidades inner join cliente on (cidades.id = cliente.cidade_id) inner join estados on (cliente.uf_id = estados.id)');
  FDQueryPesquisaAvancadas.SQL.Add(' WHERE 1=1 ');

   if trim(ComboBoxCliente.Text) <> '' then
  begin
    FDQueryPesquisaAvancadas.SQL.Add(' AND cliente.nome like ' +
      QuotedStr('%' + UpperCase((trim(ComboBoxCliente.Text))) + '%'));
  end;
  {
    if codigoCliente.Text <> '' then
    begin
    FDQueryPesquisaAvancadas.SQL.Add(' AND cliente.codigo = ' +
    codigoCliente.Text);
    end;
    if Trim(ComboBoxCliente.Text) <> '' then
    begin
    FDQueryPesquisaAvancadas.SQL.Add(' AND cliente.nome like ' +
    QuotedStr(UpperCase(Trim(ComboBoxCliente.Text))));
    end;
    if trim(ComboBoxCidades.Text) <> '' then
    begin
    FDQueryPesquisaAvancadas.SQL.Add(' AND cidades.nome like ' +
    QuotedStr('%' + UpperCase((Trim(ComboBoxCidades.Text)))+ '%'));
    end;
    if Trim(ComboBoxEstado.Text) <> '' then
    begin
    FDQueryPesquisaAvancadas.SQL.Add(' AND estados.nome = ' +
    QuotedStr(UpperCase(Trim(ComboBoxEstado.Text))));
    end; }

  FDQueryPesquisaAvancadas.Open();
end;

procedure TfrmPesquisaAvancada.Cliente;
begin
  ComboBoxCliente.Items.Clear;
  DM_Cadastro.FDQueryCliente.Close;
  DM_Cadastro.FDQueryCliente.Open();
  DM_Cadastro.FDQueryCliente.First;
  while not DM_Cadastro.FDQueryCliente.Eof do
  begin
    ComboBoxCliente.Items.AddObject(DM_Cadastro.FDQueryClienteNOME.AsString,
      TObject(DM_Cadastro.FDQueryClienteCODIGO.AsInteger));
    DM_Cadastro.FDQueryCliente.Next;
  end;
  ComboBoxCidades.Items.Clear;
  DM_Endereco.FDQueryCidade.Close;
  DM_Endereco.FDQueryCidade.Open();
  DM_Endereco.FDQueryCidade.First;
  while not DM_Endereco.FDQueryCidade.Eof do
  begin
    ComboBoxCidades.Items.AddObject(DM_Endereco.FDQueryCidadeNOME.AsString,
      TObject(DM_Endereco.FDQueryCidadeID.AsInteger));
    DM_Endereco.FDQueryCidade.Next;
  end;

  ComboBoxEstado.Items.Clear;
  DM_Endereco.FDQueryEstados.Close;
  DM_Endereco.FDQueryEstados.Open();
  DM_Endereco.FDQueryEstados.First;
  while not DM_Endereco.FDQueryEstados.Eof do
  begin
    ComboBoxEstado.Items.AddObject(DM_Endereco.FDQueryEstadosUF.AsString,
      TObject(DM_Endereco.FDQueryEstadosID.AsInteger));
    DM_Endereco.FDQueryEstados.Next;
  end;

end;

procedure TfrmPesquisaAvancada.FormShow(Sender: TObject);
begin
  Cliente;
end;

end.
