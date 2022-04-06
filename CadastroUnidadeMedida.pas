unit CadastroUnidadeMedida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro, DMDados;

type
  TfrmCadastroUnidadeMedida = class(TfrmCadastroBasicoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUnidadeMedida: TfrmCadastroUnidadeMedida;

implementation

{$R *.dfm}

procedure TfrmCadastroUnidadeMedida.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryUnMedida.Cancel;
end;

procedure TfrmCadastroUnidadeMedida.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Cadastro.FDQueryUnMedida.Delete;
  end;
  Abort;

end;

procedure TfrmCadastroUnidadeMedida.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryUnMedida.Edit;
end;

procedure TfrmCadastroUnidadeMedida.btnNovoClick(Sender: TObject);

var
  prox: integer;
begin
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryUnMedida.Active := true;
  DM_Cadastro.FDQueryUnMedida.last;
  prox := DM_Cadastro.FDQueryUnMedidaID.AsInteger + 1;
  DM_Cadastro.FDQueryUnMedida.Append;
  DM_Cadastro.FDQueryUnMedidaID.AsInteger := prox;

end;

procedure TfrmCadastroUnidadeMedida.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryUnMedida.Post;
end;

procedure TfrmCadastroUnidadeMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmCadastroUnidadeMedida);
end;

end.
