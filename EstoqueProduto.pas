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
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet;

type
  TfrmEstoque = class(TForm)
    FDQueryEstoque: TFDQuery;
    DTEsttoque: TDataSource;
    frEstoque: TfrxReport;
    frxEstoque: TfrxDBDataset;
    FDQueryEstoqueQUANTIDADE_ATUAL: TIntegerField;
    FDQueryEstoqueCODIGO: TIntegerField;
    FDQueryEstoqueMARCA: TStringField;
    FDQueryEstoquePRODUTO: TStringField;
    FDQueryEstoqueUN_MEDIDA: TStringField;
    btnImprimir: TButton;
    Button1: TButton;
    edtCodigoProduto: TEdit;
    CheckBoxBloqueado: TCheckBox;
    procedure FormCreate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
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
var bloqueado: String;
begin
  bloqueado := 'T';
  FDQueryEstoque.Close;
  FDQueryEstoque.SQL.Clear;
  FDQueryEstoque.SQL.Add(' select produto.quantidade_atual,');
  FDQueryEstoque.SQL.Add(' produto.codigo,');
  FDQueryEstoque.SQL.Add(' produto.marca,');
  FDQueryEstoque.SQL.Add(' produto.produto,');
  FDQueryEstoque.SQL.Add(' produto.un_medida');
  FDQueryEstoque.SQL.Add(' produto.situacao,');
  FDQueryEstoque.SQL.Add(' from produto');
  FDQueryEstoque.SQL.Add(' Where 1 = 1');
  if trim(edtCodigoProduto.Text) <> '' then
  begin
    FDQueryEstoque.SQL.Add(' AND codigo =  ' +
      QuotedStr(edtCodigoProduto.Text));
  end;
  {if CheckBoxBloqueado.Checked <> True then
    begin
         FDQueryEstoque.SQL.Add(' AND codigo =  ' + QuotedStr(edtCodigoProduto.Text) + ' and produto.situacao <> ' + bloqueado );
           end;
           }
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
  edtCodigoProduto.Text := '';
end;

end.
