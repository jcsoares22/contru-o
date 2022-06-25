unit PesquisaAvancada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, RxToolEdit,
  Vcl.ExtCtrls;

type
  TfrmPesquisaAvancada = class(TForm)
    Panel1: TPanel;
    ComboBoxCliente: TComboBox;
    ComboBoxCidades: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBoxEstado: TComboBox;
    Label3: TLabel;
    codigoCliente: TEdit;
    btnPesquisar: TButton;
    btnLimparCriterios: TButton;
    Label4: TLabel;
    procedure FormShow(Sender: TObject);
    procedure btnLimparCriteriosClick(Sender: TObject);
  private
    { Private declarations }
    procedure Cliente;
  public
    { Public declarations }
  end;

var
  frmPesquisaAvancada: TfrmPesquisaAvancada;

implementation

{$R *.dfm}

uses DMCadastro, DMEndereco;

procedure TfrmPesquisaAvancada.FormShow(Sender: TObject);
begin
  Cliente;


end;

procedure TfrmPesquisaAvancada.btnLimparCriteriosClick(Sender: TObject);
begin
    ComboBoxCliente.Text := '';
     ComboBoxCidades.Text := '';
     ComboBoxEstado.Text := '';
     codigoCliente.Text := '';
end;

procedure TfrmPesquisaAvancada.Cliente;
begin
  ComboBoxCliente.Items.Clear;
  ComboBoxCidades.Items.Clear;
  DM_Cadastro.FDQueryCliente.Open();
  DM_Cadastro.FDQueryCliente.First;
  while not DM_Cadastro.FDQueryCliente.Eof do
  begin
    ComboBoxCliente.Items.AddObject(DM_Cadastro.FDQueryClienteNOME.AsString,
      TObject(DM_Cadastro.FDQueryClienteCODIGO.AsInteger));
    DM_Cadastro.FDQueryCliente.Next;
  end;
  ComboBoxCidades.Items.Clear;
  DM_Endereco.FDQueryCidade.Open();
  DM_Endereco.FDQueryCidade.First;
  while not DM_Endereco.FDQueryCidade.Eof do
  begin
    ComboBoxCidades.Items.AddObject(DM_Endereco.FDQueryCidadeNOME.AsString,
      TObject(DM_Endereco.FDQueryCidadeID.AsInteger));
   DM_Endereco.FDQueryCidade.Next;
  end;

  ComboBoxEstado.Items.Clear;
  DM_Endereco.FDQueryEstados.Open();
  DM_Endereco.FDQueryEstados.First;
  while not DM_Endereco.FDQueryEstados.Eof do
  begin
    ComboBoxEstado.Items.AddObject(DM_Endereco.FDQueryEstadosUF.AsString,
      TObject(DM_Endereco.FDQueryEstadosID.AsInteger));
   DM_Endereco.FDQueryEstados.Next;
  end;

end;

end.
