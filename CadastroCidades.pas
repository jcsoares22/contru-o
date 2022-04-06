unit CadastroCidades;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroEnderecoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMEndereco;

type
  TfrmCadastroCidades = class(TfrmCadastroEnderecoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCidades: TfrmCadastroCidades;

implementation

{$R *.dfm}

procedure TfrmCadastroCidades.btnCancelarClick(Sender: TObject);
begin
  inherited;
    DM_Endereco.FDQueryCidade.Cancel;
end;

procedure TfrmCadastroCidades.btnDeletarClick(Sender: TObject);
begin
  inherited;
   if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Endereco.FDQueryCidade.Delete;
  end;
  Abort;

end;

procedure TfrmCadastroCidades.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Endereco.FDQueryCidade.Edit;
end;

procedure TfrmCadastroCidades.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  inherited;
  DM_Endereco.FDQueryCidade.Last;
  prox := DM_Endereco.FDQueryCidadeID.AsInteger + 1;
  DM_Endereco.FDQueryCidade.Append;
  DM_Endereco.FDQueryCidadeID.AsInteger := prox;
end;

procedure TfrmCadastroCidades.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Endereco.FDQueryCidade.Edit;
  DM_Endereco.FDQueryCidade.Post;
end;
     procedure TfrmCadastroCidades.FormCreate(Sender: TObject);
begin
  inherited;

end;

//verificar o por que o cancelar não esta funcionando
end.
