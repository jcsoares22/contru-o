unit CadastroCondPagamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadastroCondPagamento = class(TForm)
    Cadastro: TPageControl;
    TabSheet2: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBRadioGroupSitiacao: TDBRadioGroup;
    DB_Codigo: TDBEdit;
    DB_nome: TDBEdit;
    DB_desc_avista: TDBEdit;
    RadioButtonAPrazo: TRadioButton;
    RadioButtonAVista: TRadioButton;
    TabSheet1: TTabSheet;
    DBGrid_Cliente: TDBGrid;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    CB_Opcao2: TComboBox;
    CB_opcao: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    Panel1: TPanel;
    btnNovo: TButton;
    btnEdit: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroCondPagamento: TfrmCadastroCondPagamento;

implementation

{$R *.dfm}

uses DMCadastro;

procedure TfrmCadastroCondPagamento.btnEditClick(Sender: TObject);
begin
  DM_Cadastro.FDQueryCondição_pagamento.Edit;
  DB_nome.ReadOnly := false;
  DB_desc_avista.ReadOnly := false;
end;

procedure TfrmCadastroCondPagamento.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  DB_nome.ReadOnly := false;
  DB_desc_avista.ReadOnly := false;
  DM_Cadastro.FDQueryCondição_pagamento.last;
  prox := DM_Cadastro.FDQueryCondição_pagamentoCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryCondição_pagamento.Append;
  DM_Cadastro.FDQueryCondição_pagamentoCODIGO.AsInteger := prox;
end;

procedure TfrmCadastroCondPagamento.btnSalvarClick(Sender: TObject);
begin
  { if DBRadioGroupSitiacao. = 'A' then
    begin
    DM_Cadastro.FDQueryCondição_pagamentoTIPO_PAGAMENTO.Value := 'A'
    end; }

  DM_Cadastro.FDQueryCondição_pagamento.Post;
  DB_nome.ReadOnly := true;
  DB_desc_avista.ReadOnly := true;
end;

procedure TfrmCadastroCondPagamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmCadastroCondPagamento.Free;
  frmCadastroCondPagamento := nil;
  DM_Cadastro.FDQueryCondição_pagamento.Close;
end;

procedure TfrmCadastroCondPagamento.FormCreate(Sender: TObject);
begin
  DM_Cadastro.FDQueryCondição_pagamento.Open();

end;

end.
