unit CadastroCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls,
  Vcl.Mask, DMEndereco, DMCadastro;

type
  TfrmCadastroCliente = class(TfrmCadastroPai)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DB_Cpf: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    DB_Nome: TDBEdit;
    DBLookupComboBoxUf: TDBLookupComboBox;
    DBLookupComboBoxCidade: TDBLookupComboBox;
    Label13: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    DB_telefone: TDBEdit;
    Label3: TLabel;
    Label5: TLabel;
    DB_Email: TDBEdit;
    Label8: TLabel;
    DB_Numero: TDBEdit;
    DB_Rua: TDBEdit;
    Label7: TLabel;
    Label6: TLabel;
    DB_Descricao: TDBEdit;
    DBNavigator1: TDBNavigator;
    Edt_bairro: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure DB_CpfKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    procedure mod_ReadOnly;
    procedure mod_ReadOnlyTrue;

  public
    { Public declarations }
  end;

var
  frmCadastroCliente: TfrmCadastroCliente;

implementation

{$R *.dfm}

procedure TfrmCadastroCliente.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryCliente.Cancel;
end;

procedure TfrmCadastroCliente.btnDeletarClick(Sender: TObject);
begin
  inherited;

  Try
    if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0)
      = mrok then
    begin
      DM_Cadastro.FDQueryCliente.Delete;
    end;
    Abort;
  Except
    on E: Exception do
    begin
      ShowMessage('Cliente vinculado em vendas, impossivel deletar');
    end;
  end;

end;

procedure TfrmCadastroCliente.btnEditClick(Sender: TObject);
begin

  inherited;
  DM_Cadastro.FDQueryCliente.Edit;
  mod_ReadOnly;
end;

procedure TfrmCadastroCliente.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin // usando a variavel prox para poder acrescentar +1 no cadastro
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryCliente.Active := true;
  mod_ReadOnly;
  DM_Cadastro.FDQueryCliente.last;
  DM_Cadastro.FDQueryCliente.Edit;
  prox := DM_Cadastro.FDQueryClienteCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryCliente.Append;
  DM_Cadastro.FDQueryClienteCODIGO.AsInteger := prox;
  DB_Nome.SetFocus; // colocando o foco no campo nome

end;

procedure TfrmCadastroCliente.btnPesquisaClick(Sender: TObject);
begin
  DM_Cadastro.FDQueryCliente.Close;
  DM_Cadastro.FDQueryCliente.Params.Clear;
  DM_Cadastro.FDQueryCliente.SQL.Add('');
  DM_Cadastro.FDQueryCliente.SQL.Clear;
  DM_Cadastro.FDQueryCliente.SQL.Add('select * from CLIENTE');
  DM_Cadastro.FDQueryCliente.SQL.Add('where 1 = 1');

  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Cadastro.FDQueryCliente.SQL.Add('where codigo =:pcodigo');
  // DM_Cadastro.FDQueryCliente.ParamByName('pcodigo').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text <> '' then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add(' AND codigo like ' +
                  QuotedStr('%' + edt_Pesquisa.Text + ''));
                // DM_Cadastro.FDQueryCliente.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND codigo like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND codigo like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));
                { DM_Cadastro.FDQueryCliente.SQL.Add
                  ('where containing codigo =:pcodigo');
                  DM_Cadastro.FDQueryCliente.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text); }
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND codigo = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
        end;
        { DM_Cadastro.FDQueryCliente.ParamByName('pbai_codigo').AsInteger :=
          StrToInt(edt_Pesquisa.Text); }
      end;

    1:
      begin // opção nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add('order by nome');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND NOME like' +
                  QuotedStr('%' + UpperCase((trim(edt_Pesquisa.Text))) + '%'));
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add('order by nome');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND NOME like' +
                  QuotedStr('%' + UpperCase((trim(edt_Pesquisa.Text))) + '%'));
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add('order by nome');
              end
              else
              begin
                DM_Cadastro.FDQueryCliente.SQL.Add
                  ('AND nome = ' + UpperCase((trim(edt_Pesquisa.Text))));
              end;
            end;
        end;

      end;

  end;

  DM_Cadastro.FDQueryCliente.Open();
end;

procedure TfrmCadastroCliente.btnSalvarClick(Sender: TObject);
begin
  inherited;
  mod_ReadOnlyTrue;
  DM_Cadastro.FDQueryCliente.Edit;
  DM_Cadastro.FDQueryCliente.Post;
  { try

    Abort;
    Except
    on E: Exception do
    begin
    ShowMessage('Erro!'+ e.Message);
    end;
    end; }

end;

procedure TfrmCadastroCliente.DB_CpfKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
if((Ord(key) < Ord('0')) or  (Ord(key) > Ord('9')))then
  begin
    key := char(0)
  end;
end;

procedure TfrmCadastroCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroCliente.Free;
    frmCadastroCliente := nil;
end;

procedure TfrmCadastroCliente.mod_ReadOnly;
begin
  DBLookupComboBoxUf.ReadOnly := false;
  DBLookupComboBoxCidade.ReadOnly := false;
  // DBLookupComboBoxBairro.ReadOnly := false;
  DB_Nome.ReadOnly := false;
  DB_telefone.ReadOnly := false;
  DB_Cpf.ReadOnly := false;
  DB_Rua.ReadOnly := false;
  DB_Email.ReadOnly := false;
  DB_Numero.ReadOnly := false;
end;

procedure TfrmCadastroCliente.mod_ReadOnlyTrue;
begin
  DBLookupComboBoxUf.ReadOnly := true;
  DBLookupComboBoxCidade.ReadOnly := true;
  // DBLookupComboBoxBairro.ReadOnly := true;
  DB_Nome.ReadOnly := true;
  DB_telefone.ReadOnly := true;
  DB_Cpf.ReadOnly := true;
  DB_Rua.ReadOnly := true;
  DB_Email.ReadOnly := true;
  DB_Numero.ReadOnly := true;
end;


end.
