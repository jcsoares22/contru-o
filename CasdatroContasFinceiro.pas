unit CasdatroContasFinceiro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DMCadastro, Vcl.StdCtrls, Vcl.DBCtrls, StrUtils;

type
  TfrmContas = class(TForm)
    Panel1: TPanel;
    DBGridConta: TDBGrid;
    DBGrid2: TDBGrid;
    btnEdit: TButton;
    btnNovo: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGridContaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridContaDblClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmContas: TfrmContas;

implementation

uses
  System.Math;

{$R *.dfm}

procedure TfrmContas.btnNovoClick(Sender: TObject);
VAR
  prox: Integer;
begin
  prox := 1;
  DM_Cadastro.FDQueryConta.Last;
  prox := DM_Cadastro.FDQueryContaCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryConta.Append;
  DM_Cadastro.FDQueryContaCODIGO.AsInteger := prox;
end;

procedure TfrmContas.DBGridContaDblClick(Sender: TObject);
begin
{ if ((Sender as TDBGrid).DataSource.DBGridConta.IsEmpty) then
    Exit;

      (Sender as TDBGrid).DBGridConta.Dataset.Edit;

        (Sender as TDBGrid).DataSource.Dataset.FieldByName('BLOQUEADA').AsInteger :=
            IfThen((Sender as TDBGrid).DataSource.Dataset.FieldByName('BLOQUEADA').AsInteger = 1, 0, 1);

              (Sender as TDBGrid).DataSource.Dataset.Post;}
end;

procedure TfrmContas.DBGridContaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
begin
  inherited;

  {if ((Sender as TDBGrid).DataSource.Dataset.IsEmpty) then
      Exit;

        // Desenha um checkbox no dbgrid
          if Column.FieldName = 'BLOQUEADA' then
            begin
                TDBGrid(Sender).Canvas.FillRect(Rect);

                    if ((Sender as TDBGrid).DataSource.Dataset.FieldByName('BLOQUEADA').AsInteger = 1) then
                          Check := DFCS_CHECKED
                              else
                                    Check := 0;

                                        R := Rect;
                                            InflateRect(R, -2, -2); { Diminue o tamanho do CheckBox }
                                               { DrawFrameControl(TDBGrid(Sender).Canvas.Handle, R, DFC_BUTTON,
                                                      DFCS_BUTTONCHECK or Check);
                                                        end;}
end;

procedure TfrmContas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmContas);
end;

procedure TfrmContas.FormCreate(Sender: TObject);
begin
  DM_Cadastro.FDQueryConta.Open();
  DM_Cadastro.FDQuerySubConta.Open();
  DM_Cadastro.FDQueryTIPO_CONTA.Open();
end;

end.
