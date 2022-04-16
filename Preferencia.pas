unit Preferencia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TfrmPreferencia = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    DBE_DESCONTO: TDBEdit;
    Button3: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreferencia: TfrmPreferencia;

implementation

{$R *.dfm}

uses CadastroVendas, DMVendas, DMDados;

procedure TfrmPreferencia.Button1Click(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.Post;
end;

procedure TfrmPreferencia.Button2Click(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.Cancel;
end;

procedure TfrmPreferencia.Button3Click(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.Edit;
end;

procedure TfrmPreferencia.FormCreate(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.open();
end;

end.
