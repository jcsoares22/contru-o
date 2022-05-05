unit CadastroDocumento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroDocumento = class(TfrmCadastroBasicoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroDocumento: TfrmCadastroDocumento;

implementation

{$R *.dfm}

procedure TfrmCadastroDocumento.btnDeletarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryTipoPgto.Delete;
end;

procedure TfrmCadastroDocumento.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryTipoPgto.Edit;
end;

procedure TfrmCadastroDocumento.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryTipoPgto.last;
  prox := DM_Cadastro.FDQueryTipoPgtoID.AsInteger + 1;
  DM_Cadastro.FDQueryTipoPgto.Append;
  DM_Cadastro.FDQueryTipoPgtoID.AsInteger := prox;
end;

procedure TfrmCadastroDocumento.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryTipoPgto.Edit;
  DM_Cadastro.FDQueryTipoPgto.Post;
end;

procedure TfrmCadastroDocumento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroDocumento.Free;
  frmCadastroDocumento := nil;
end;

end.
