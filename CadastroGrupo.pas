unit CadastroGrupo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroGrupo = class(TfrmCadastroBasicoPai)
    DBGridSubGrupo: TDBGrid;
    Panel2: TPanel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroGrupo: TfrmCadastroGrupo;

implementation

{$R *.dfm}

procedure TfrmCadastroGrupo.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryGrupo.Cancel;
end;

procedure TfrmCadastroGrupo.btnDeletarClick(Sender: TObject);
var
 i: Integer;
begin
  inherited;
  Try

    if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0)
      = mrok then
    begin
      for I := 0 to DB_Grid.SelectedRows.Count - 1 do
      begin
        DM_Cadastro.FDQueryGrupo.GotoBookmark(DB_Grid.SelectedRows.Items[i]);
        DM_Cadastro.FDQueryGrupo.Delete;
    end;
    Abort;
    end;
  Except
    on E: Exception do
    begin
      ShowMessage('impossivel deletar Grupo Vinculado em Produtos');
    end;
  end;


end;

procedure TfrmCadastroGrupo.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryGrupo.Edit;
end;

procedure TfrmCadastroGrupo.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryGrupo.last;
  prox := DM_Cadastro.FDQueryGrupoCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryGrupo.Append;
  DM_Cadastro.FDQueryGrupoCODIGO.AsInteger := prox;
  DM_Cadastro.FDQuerySub_grupo.Edit;
  DM_Cadastro.FDQueryUnMedida.Edit;
  DBGridSubGrupo.ReadOnly := false;
end;

procedure TfrmCadastroGrupo.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryGrupo.Edit;
  DM_Cadastro.FDQueryGrupo.Post;
end;

procedure TfrmCadastroGrupo.FormCreate(Sender: TObject);
begin
  inherited;
frmCadastroGrupo.Free;
frmCadastroGrupo := nil;
end;

end.
