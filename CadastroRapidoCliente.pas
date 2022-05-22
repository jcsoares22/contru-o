unit CadastroRapidoCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmCadastroRapidoCliente = class(TForm)
    DBEditCodigo: TDBEdit;
    DB_Cpf: TDBEdit;
    DB_Nome: TDBEdit;
    Edt_bairro: TDBEdit;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    DBLookupComboBoxUf: TDBLookupComboBox;
    DB_Numero: TDBEdit;
    DB_Rua: TDBEdit;
    DB_Descricao: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label12: TLabel;
    Label5: TLabel;
    DB_Email: TDBEdit;
    DB_telefone: TDBEdit;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label9: TLabel;
    BntSalvar: TButton;
    bntCancelar: TButton;
    procedure FormCreate(Sender: TObject);
    procedure BntSalvarClick(Sender: TObject);
    procedure bntCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroRapidoCliente: TfrmCadastroRapidoCliente;

implementation

{$R *.dfm}

uses CadastroCliente, DMCadastro, DMEndereco, CadastroVendas;

procedure TfrmCadastroRapidoCliente.bntCancelarClick(Sender: TObject);
begin
  DM_Cadastro.FDQueryCliente.Cancel;
end;

procedure TfrmCadastroRapidoCliente.BntSalvarClick(Sender: TObject);
begin
  try
    DM_Cadastro.FDQueryCliente.Edit;
    DM_Cadastro.FDQueryCliente.Post;
  finally
   frmCadastroRapidoCliente.Close;
    // := DBEditCodigo.Text;
    // freeAndNil(frmCadastroRapidoCliente);
  end;

end;

procedure TfrmCadastroRapidoCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_Cadastro.FDQueryCliente.close;
  DM_Endereco.FDQueryCidade.close;
  DM_Endereco.FDQueryEstados.close;
 // FreeAndNil(frmCadastroRapidoCliente);
end;

procedure TfrmCadastroRapidoCliente.FormCreate(Sender: TObject);
var
  prox: integer;
begin
  DM_Cadastro.FDQueryCliente.open();
  DM_Endereco.FDQueryCidade.open();
  DM_Endereco.FDQueryEstados.open();
  // prox := 1;
  // DM_Cadastro.FDQueryCliente.Active := true;
  // mod_ReadOnly;
  DM_Cadastro.FDQueryCliente.last;
  DM_Cadastro.FDQueryCliente.Edit;
  prox := DM_Cadastro.FDQueryClienteCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryCliente.Append;
  DM_Cadastro.FDQueryClienteCODIGO.AsInteger := prox;
  // DB_Nome.SetFocus; // colocando o foco no campo nome
end;

end.
