unit PesquisaCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmPesquisaCliente = class(TForm)
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CB_Opcao2: TComboBox;
    CB_opcao: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    DBGridPesquisa: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridPesquisaDblClick(Sender: TObject);
  private
    { Private declarations }
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

end.
