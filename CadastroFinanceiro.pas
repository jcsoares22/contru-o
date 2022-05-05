unit CadastroFinanceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadastroFinanceiro = class(TfrmCadastroPai)
    Label1: TLabel;
    DB_IdVenda: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroFinanceiro: TfrmCadastroFinanceiro;

implementation

{$R *.dfm}

uses DMFinanceiro;

procedure TfrmCadastroFinanceiro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroFinanceiro.Free;
  frmCadastroFinanceiro := nil;
end;

end.
