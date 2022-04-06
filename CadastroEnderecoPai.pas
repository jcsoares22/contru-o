unit CadastroEnderecoPai;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, DMEndereco, DMDados;

type
  TfrmCadastroEnderecoPai = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnDeletar: TButton;
    btnEdit: TButton;
    btnPesquisar: TButton;
    CB_opcao: TComboBox;
    edt_Pesquisa: TEdit;
    CB_Opcao2: TComboBox;
    btnCancelar: TButton;
    DBGrid_Bairro: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure DBGrid_BairroKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEnderecoPai: TfrmCadastroEnderecoPai;

implementation

{$R *.dfm}

procedure TfrmCadastroEnderecoPai.btnEditClick(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  btnNovo.Enabled := false;
  btnDeletar.Enabled := false;
  btnEdit.Enabled := false;
  DBGrid_Bairro.ReadOnly := false;
end;

procedure TfrmCadastroEnderecoPai.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
end;

procedure TfrmCadastroEnderecoPai.btnNovoClick(Sender: TObject);
begin
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
  DBGrid_Bairro.ReadOnly := false;
  DBGrid_Bairro.SetFocus;
  DBGrid_Bairro.SelectedIndex := 1;
end;

procedure TfrmCadastroEnderecoPai.btnSalvarClick(Sender: TObject);
begin
  btnSalvar.Enabled := true;
  btnNovo.Enabled := true;
  btnDeletar.Enabled := true;
  btnEdit.Enabled := true;
  DBGrid_Bairro.ReadOnly := true;
end;

procedure TfrmCadastroEnderecoPai.DBGrid_BairroKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TfrmCadastroEnderecoPai.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   DM_Endereco.FDQueryCidade.close;
    DM_Endereco.FDQueryEstados.close;

end;

procedure TfrmCadastroEnderecoPai.FormCreate(Sender: TObject);
begin

    DM_Endereco.FDQueryCidade.Open();
    DM_Endereco.FDQueryEstados.Open();
end;

end.
