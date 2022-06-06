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
    DBE_DESCONTO: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    DBEdit8: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox1: TDBLookupComboBox;
    Panel1: TPanel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Produto: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPreferencia: TfrmPreferencia;

implementation

{$R *.dfm}

uses DMDados, DMEndereco, LoginPreferencia;

procedure TfrmPreferencia.Button1Click(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.Edit;
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

procedure TfrmPreferencia.Button4Click(Sender: TObject);
begin
  frmPreferencia.CloseModal;
end;

procedure TfrmPreferencia.FormActivate(Sender: TObject);
begin
  frmLoginPreferencia.Visible := false;
end;

procedure TfrmPreferencia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM_Dados.FDQueryPreferencia.close;
  DM_Endereco.FDQueryCidade.close;
  DM_Endereco.FDQueryEstados.close;
  frmLoginPreferencia.close;
end;

procedure TfrmPreferencia.FormCreate(Sender: TObject);
begin
  DM_Dados.FDQueryPreferencia.open();
  DM_Endereco.FDQueryCidade.open();
  DM_Endereco.FDQueryEstados.open();
end;

end.
