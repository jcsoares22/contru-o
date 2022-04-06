unit CadastroCondPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB, Vcl.Mask,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  DMCadastro;

type
  TfrmCadastroCondPagamento = class(TfrmCadastroPai)
    DB_Codigo: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    DB_nome: TDBEdit;
    DB_desc_avista: TDBEdit;
    Label3: TLabel;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCondPagamento: TfrmCadastroCondPagamento;

implementation

{$R *.dfm}

procedure TfrmCadastroCondPagamento.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DB_nome.ReadOnly := true;
  DB_desc_avista.ReadOnly := true;
  DM_Cadastro.FDQueryCondição_pagamento.Cancel;
end;

procedure TfrmCadastroCondPagamento.btnDeletarClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Cadastro.FDQueryCondição_pagamento.Delete;
  end;
  Abort;

end;

procedure TfrmCadastroCondPagamento.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCondição_pagamento.Edit;
  DB_nome.ReadOnly := false;
  DB_desc_avista.ReadOnly := false;
end;

procedure TfrmCadastroCondPagamento.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  DB_nome.ReadOnly := false;
  DB_desc_avista.ReadOnly := false;
  DM_Cadastro.FDQueryCondição_pagamento.last;
  prox := DM_Cadastro.FDQueryCondição_pagamentoCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryCondição_pagamento.Append;
  DM_Cadastro.FDQueryCondição_pagamentoCODIGO.AsInteger := prox;
end;

procedure TfrmCadastroCondPagamento.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCondição_pagamento.Post;
  DB_nome.ReadOnly := true;
  DB_desc_avista.ReadOnly := true;
end;

end.
