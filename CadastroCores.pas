unit CadastroCores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroCores = class(TfrmCadastroBasicoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DB_GridKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCores: TfrmCadastroCores;

implementation

{$R *.dfm}

procedure TfrmCadastroCores.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCores.Cancel;
end;

procedure TfrmCadastroCores.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Cadastro.FDQueryCores.Delete;
  end;
  Abort;
end;

procedure TfrmCadastroCores.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCores.Edit;
end;

procedure TfrmCadastroCores.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  DM_Cadastro.FDQueryCores.last;
  prox := DM_Cadastro.FDQueryCoresID.AsInteger + 1;
  DM_Cadastro.FDQueryCores.Append;
  DM_Cadastro.FDQueryCoresID.AsInteger := prox;
  /// colocando o setfocus para ir na primeira 2 grid do
end;

procedure TfrmCadastroCores.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCores.Edit;
  DM_Cadastro.FDQueryCores.Post;
end;

procedure TfrmCadastroCores.DB_GridKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  Key := UpCase(Key);
end;

procedure TfrmCadastroCores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroCores.Free;
  frmCadastroCores := nil;
end;

end.
