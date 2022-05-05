unit CadastroMarca;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroMarca = class(TfrmCadastroBasicoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroMarca: TfrmCadastroMarca;

implementation

{$R *.dfm}

procedure TfrmCadastroMarca.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryMarca.Cancel;
end;

procedure TfrmCadastroMarca.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Cadastro.FDQueryMarca.Delete;
  end;
  Abort;

end;

procedure TfrmCadastroMarca.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryMarca.Edit;
end;

procedure TfrmCadastroMarca.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  DM_Cadastro.FDQueryMarca.Active := true;
  DM_Cadastro.FDQueryMarca.last;
  prox := DM_Cadastro.FDQueryMarcaID.AsInteger + 1;
  DM_Cadastro.FDQueryMarca.Append;
  DM_Cadastro.FDQueryMarcaID.AsInteger := prox;
end;

procedure TfrmCadastroMarca.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryMarca.Edit;
  DM_Cadastro.FDQueryMarca.Post;
end;

procedure TfrmCadastroMarca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroMarca.Free;
  frmCadastroMarca := nil;
end;

end.
