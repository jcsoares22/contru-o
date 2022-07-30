unit LocalProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroLocalProduto = class(TfrmCadastroBasicoPai)
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroLocalProduto: TfrmCadastroLocalProduto;

implementation

{$R *.dfm}

procedure TfrmCadastroLocalProduto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryLocalProd.Cancel;
end;

procedure TfrmCadastroLocalProduto.btnDeletarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryLocalProd.Delete;
end;

procedure TfrmCadastroLocalProduto.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryLocalProd.Edit;
end;

procedure TfrmCadastroLocalProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  if not(DM_Cadastro.FDQueryLocalProd.State in [dsEdit, dsInsert]) then
  begin
    DM_Cadastro.FDQueryLocalProd.Insert;
  end;

end;

procedure TfrmCadastroLocalProduto.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryLocalProd.Post;
end;

procedure TfrmCadastroLocalProduto.FormCreate(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryLocalProd.Open();
end;

end.
