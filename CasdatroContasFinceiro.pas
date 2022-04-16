unit CasdatroContasFinceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DMCadastro, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TfrmContas = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    btnEdit: TButton;
    btnNovo: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

{$R *.dfm}

procedure TfrmContas.btnNovoClick(Sender: TObject);
VAR
  prox: integer;
begin
  prox := 1;
  DM_Cadastro.FDQueryConta.Last;
  prox := DM_Cadastro.FDQueryContaCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryConta.Append;
  DM_Cadastro.FDQueryContaCODIGO.AsInteger := prox;
end;



procedure TfrmContas.FormCreate(Sender: TObject);
begin
  DM_Cadastro.FDQueryConta.Open();
  DM_Cadastro.FDQuerySubConta.Open();
  DM_Cadastro.FDQueryTIPO_CONTA.Open();
end;

end.
