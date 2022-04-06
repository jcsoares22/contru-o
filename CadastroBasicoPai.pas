unit CadastroBasicoPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  DMDados, DMCadastro,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadastroBasicoPai = class(TForm)
    Panel1: TPanel;
    DB_Grid: TDBGrid;
    btnNovo: TButton;
    btnEdit: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btn_NovoClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure DB_GridKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroBasicoPai: TfrmCadastroBasicoPai;

implementation

{$R *.dfm}

procedure TfrmCadastroBasicoPai.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
end;

procedure TfrmCadastroBasicoPai.btnEditClick(Sender: TObject);
begin
  DB_Grid.ReadOnly := false;
  btnSalvar.Enabled := true;
  btnNovo.Enabled := false;
  btnDeletar.Enabled := false;
  btnEdit.Enabled := false;

end;

procedure TfrmCadastroBasicoPai.btnNovoClick(Sender: TObject);
begin
  DB_Grid.ReadOnly := false;
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
  DB_Grid.SetFocus;
  DB_Grid.SelectedIndex := 1;
end;

procedure TfrmCadastroBasicoPai.btnSalvarClick(Sender: TObject);
begin
  DB_Grid.ReadOnly := true;
  btnSalvar.Enabled := true;
  btnNovo.Enabled := true;
  btnDeletar.Enabled := true;
  btnEdit.Enabled := true;
end;

procedure TfrmCadastroBasicoPai.btn_NovoClick(Sender: TObject);
begin
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
end;

procedure TfrmCadastroBasicoPai.DB_GridKeyPress(Sender: TObject; var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TfrmCadastroBasicoPai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Dm_Cadastro.FDQueryCores.close;
  Dm_Cadastro.FDQueryMarca.close;
  Dm_Cadastro.FDQueryGrupo.close;
  Dm_Cadastro.FDQuerySub_grupo.close;
  Dm_Cadastro.FDQueryUnMedida.close;
end;

procedure TfrmCadastroBasicoPai.FormCreate(Sender: TObject);
begin
  DM_Cadastro.FDQueryProduto.Open();
  Dm_Cadastro.FDQueryCores.Open();
  Dm_Cadastro.FDQueryMarca.Open();
  Dm_Cadastro.FDQueryGrupo.Open();
  Dm_Cadastro.FDQuerySub_grupo.Open();
  Dm_Cadastro.FDQueryUnMedida.Open();
  DM_Cadastro.FDQueryTipoPgto.Open();
  DM_Cadastro.FDQueryCliente.Open();
end;

end.
