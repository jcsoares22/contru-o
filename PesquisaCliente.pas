unit PesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaCliente = class(TForm)
    Panel2: TPanel;
    DBGridPesquisa: TDBGrid;
    ComboBoxCliente: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPesquisaDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
   procedure Cliente;
  public
    { Public declarations }
  end;

var
  frmPesquisaCliente: TfrmPesquisaCliente;

implementation

{$R *.dfm}
uses CadastroCliente, DMVendas, DMCadastro, CadastroVendas;
procedure TfrmPesquisaCliente.DBGridPesquisaDblClick(Sender: TObject);
begin
//frmCadastroVendas;//.DBECod_Cliente.text := IntToStr(DBGridPesquisa.Fields[0].Value);
end;

procedure TfrmPesquisaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 DM_Cadastro.FDQueryCliente.close;
end;

procedure TfrmPesquisaCliente.FormCreate(Sender: TObject);
begin
    DM_Cadastro.FDQueryCliente.open();
end;

procedure TfrmPesquisaCliente.FormShow(Sender: TObject);
begin
  Cliente;
end;

procedure TfrmPesquisaCliente.Cliente;
begin
       ComboBoxCliente.Items.Clear;
       DM_Cadastro.FDQueryCliente.Open();
        DM_Cadastro.FDQueryCliente.First;
        while not  DM_Cadastro.FDQueryCliente.Eof do
        begin
            ComboBoxCliente.Items.AddObject(DM_Cadastro.FDQueryClienteNOME.AsString, TObject(DM_Cadastro.FDQueryClienteCODIGO.AsInteger));
            DM_Cadastro.FDQueryCliente.Next;
        end;

end;
end.
