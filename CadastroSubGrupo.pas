unit CadastroSubGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  DMCadastro,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroSubGrupo = class(TfrmCadastroBasicoPai)
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
  frmCadastroSubGrupo: TfrmCadastroSubGrupo;

implementation

{$R *.dfm}

procedure TfrmCadastroSubGrupo.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQuerySub_grupo.Cancel;
end;

procedure TfrmCadastroSubGrupo.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Cadastro.FDQuerySub_grupo.delete;
  end;
  Abort;

end;

procedure TfrmCadastroSubGrupo.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQuerySub_grupo.edit;
end;

procedure TfrmCadastroSubGrupo.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  { DM_Cadastro.FDQuerySub_grupo.Edit;
    DM_Cadastro.FDQueryUnMedida.Edit;
    DB_Grid.ReadOnly := false;
    DM_Cadastro.FDQuerySub_grupo.Last;
    prox := DM_Cadastro.FDQuerySub_grupoCODIGO_SUB_GRUPO.AsInteger + 1;
    DM_Cadastro.FDQuerySub_grupo.Append;
    DM_Cadastro.FDQuerySub_grupoCODIGO_SUB_GRUPO.AsInteger := prox; }
end;

procedure TfrmCadastroSubGrupo.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQuerySub_grupo.edit;
  DM_Cadastro.FDQuerySub_grupo.post;
  DB_Grid.ReadOnly := true;
end;

procedure TfrmCadastroSubGrupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroSubGrupo.Free;
  frmCadastroSubGrupo := nil;
end;

end.
