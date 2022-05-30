unit EstoqueMinimo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, DMDados, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, frxClass, frxDBSet, Biblioteca, CadastroProduto;

type
  TfrmEstoqueminimo = class(TForm)
    DBGrid1: TDBGrid;
    FDQueryEstoqeMinimo: TFDQuery;
    DTEstoqueMinimo: TDataSource;
    Panel1: TPanel;
    btnRelatorioEstoqueMinimo: TButton;
    frEstoqueminimo: TfrxReport;
    frxEstoqueminimo: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure btnRelatorioEstoqueMinimoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEstoqueminimo: TfrmEstoqueminimo;

implementation

{$R *.dfm}

procedure TfrmEstoqueminimo.btnRelatorioEstoqueMinimoClick(Sender: TObject);
begin
  CarregaRelatorio(frEstoqueminimo);
end;

procedure TfrmEstoqueminimo.FormCreate(Sender: TObject);
var estoqueMinimo: Currency;
begin
FDQueryEstoqeMinimo.Open();
{
     estoqueMinimo := DM_Dados.FDQueryPreferenciaESTOQUE_MINIMO.CurValue;
       FDQueryEstoqeMinimo.close;
         FDQueryEstoqeMinimo.SQL.Clear;
           FDQueryEstoqeMinimo.SQL.Add('select p.codigo, ');
             FDQueryEstoqeMinimo.SQL.Add(' p.produto, ');
               FDQueryEstoqeMinimo.SQL.Add(' p.quantidade_atual, ');
                 FDQueryEstoqeMinimo.SQL.Add(' p.un_medida ');
                   FDQueryEstoqeMinimo.SQL.Add(' from produto p ');
                     FDQueryEstoqeMinimo.SQL.Add(' where p.quantidade_atual < ' + frmCadastroProduto.DB_Qte_Atual.Text);//DM_Dados.edtEstoqueMinimo.Text);
                      // FDQueryEstoqeMinimo.SQL.Add(' p.quantidade_atual < ' + estoqueMinimo);
                        FDQueryEstoqeMinimo.Open(); end;}

end;
  end.
