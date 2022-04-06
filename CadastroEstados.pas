unit CadastroEstados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroEnderecoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMEndereco, DMDados;

type
  TfrmCadastroEstados = class(TfrmCadastroEnderecoPai)
    procedure btnNovoClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroEstados: TfrmCadastroEstados;

implementation

{$R *.dfm}

procedure TfrmCadastroEstados.btnCancelarClick(Sender: TObject);
begin
  inherited;
    DM_Endereco.FDQueryEstados.Cancel;
end;

procedure TfrmCadastroEstados.btnDeletarClick(Sender: TObject);
begin
  inherited;

   Try
    if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0) = mrok
  then
  begin
    DM_Endereco.FDQueryEstados.Delete;
  end;
  Abort;
  Except
    on E: Exception do
    begin
      ShowMessage('estado vinculado no cadastro de cliente');
    end;
  end;
end;

procedure TfrmCadastroEstados.btnNovoClick(Sender: TObject);
var
    prox: Integer;
begin
  inherited;
  prox := 1;
    DM_Endereco.FDQueryEstados.Active := true;
    DM_Endereco.FDQueryEstados.Last;
    prox := DM_Endereco.FDQueryEstadosID.AsInteger + 1;
    DM_Endereco.FDQueryEstados.Append;
    DM_Endereco.FDQueryEstadosID.AsInteger := prox;
end;

procedure TfrmCadastroEstados.edt_PesquisaChange(Sender: TObject);
begin
  inherited;
DM_Endereco.FDQueryEstados.Locate('NOME', edt_Pesquisa.Text,
    [loPartialKey, loCaseInsensitive]);
end;

end.
