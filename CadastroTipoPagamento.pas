unit CadastroTipoPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroBasicoPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, DMCadastro;

type
  TfrmCadastroTipoPagamento = class(TfrmCadastroBasicoPai)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroTipoPagamento: TfrmCadastroTipoPagamento;

implementation

{$R *.dfm}

procedure TfrmCadastroTipoPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroTipoPagamento.Free;
  frmCadastroTipoPagamento := nil;
end;

end.
