unit CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, DMCadastro;

type
  TfrmCadastroProduto = class(TfrmCadastroPai)
    btn_foto: TButton;
    DB_Codigo: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit9: TDBEdit;
    DBLookupComboBoxCor: TDBLookupComboBox;
    DBLookupComboBoxMarca: TDBLookupComboBox;
    DBLookupComboBoxUNMedida: TDBLookupComboBox;
    DB_Qte_Saida: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    Foto: TImage;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Nome_produto: TDBEdit;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    DB_Avista: TDBEdit;
    DBEdit7: TDBEdit;
    TabSheet4: TTabSheet;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DB_APrazo: TDBEdit;
    Label17: TLabel;
    DB_DT_Cad: TDBEdit;
    Label26: TLabel;
    DB_DT_Venda: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label27: TLabel;
    DB_Qte_Entrada: TDBEdit;
    Label28: TLabel;
    DB_Qte_Atual: TDBEdit;
    procedure DB_APrazoExit(Sender: TObject);
    procedure DB_AvistaExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

procedure TfrmCadastroProduto.btnCancelarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Cancel;
end;

procedure TfrmCadastroProduto.btnDeletarClick(Sender: TObject);
begin
  inherited;

  Try
    if MessageDlg('Desja deletar?', TMsgDlgType.mtConfirmation, [mbok, mbNo], 0)
      = mrok then
    begin
      DM_Cadastro.FDQueryProduto.Delete;
    end;
    Abort;
  Except
    on E: Exception do
    begin
      ShowMessage('Não a itens para ser deletados');
    end;
  end;
end;

procedure TfrmCadastroProduto.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Edit;
end;

procedure TfrmCadastroProduto.btnNovoClick(Sender: TObject);
var
  prox: Integer;
begin
  inherited;
  prox := 1;
  DM_Cadastro.FDQueryProduto.Active := true;
  DM_Cadastro.FDQueryProduto.Last;
  DM_Cadastro.FDQueryProduto.Edit;
  prox := DM_Cadastro.FDQueryProdutoCODIGO.AsInteger + 1;
  DM_Cadastro.FDQueryProduto.Append;
  DM_Cadastro.FDQueryProdutoCODIGO.AsInteger := prox;
  Nome_produto.SetFocus;

  DBLookupComboBoxCor.ReadOnly := false;
  DBLookupComboBoxMarca.ReadOnly := false;
  DBLookupComboBoxUNMedida.ReadOnly := false;
  DB_DT_Venda.Text := DateToStr(Now);
  DB_DT_Cad.Text := DateToStr(Now);
end;

procedure TfrmCadastroProduto.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Close;
  DM_Cadastro.FDQueryProduto.Params.Clear;
  DM_Cadastro.FDQueryProduto.SQL.Add('');
  DM_Cadastro.FDQueryProduto.SQL.Clear;
  DM_Cadastro.FDQueryProduto.SQL.Add('select * from produto');
  DM_Cadastro.FDQueryProduto.SQL.Add('WHERE 1 = 1');
  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Cadastro.FDQueryProduto.SQL.Add('where codigo =:pcodigo');
  // DM_Cadastro.FDQueryProduto.ParamByName('pcodigo').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('AND codigo like'+ QuotedStr('%' +edt_Pesquisa.Text));
                {DM_Cadastro.FDQueryProduto.SQL.Add('where codigo =:pcodigo');
                                DM_Cadastro.FDQueryProduto.ParamByName('pcodigo').AsInteger :=
                                                  StrToInt(edt_Pesquisa.Text);}
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('AND codigo like'+ QuotedStr('%' +edt_Pesquisa.Text  +'%'));

                { DM_Cadastro.FDQueryProduto.SQL.Add('AND codigo like =:pcodigo');
                  DM_Cadastro.FDQueryProduto.ParamByName('pcodigo').AsInteger :=
                  StrToInt('%'+ edt_Pesquisa.Text + '%'); }
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('AND codigo = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
        end;
        { DM_Cadastro.FDQueryProduto.ParamByName('pbai_codigo').AsInteger :=
          StrToInt(edt_Pesquisa.Text); }
      end;

    1:
      begin // opção nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by produto');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('AND produto like'+ QuotedStr('%' +edt_Pesquisa.Text  +'%'));
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by produto');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('AND produto like'+ QuotedStr('%' +edt_Pesquisa.Text  +'%'));
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by produto');
              end
              else
              begin
                 DM_Cadastro.FDQueryProduto.SQL.Add('AND produto = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
          // DM_Cadastro.FDQueryProduto.SQL.Add('order by bai_codigo');
          // DM_Cadastro.FDQueryProduto.SQL.Add('where bai_codigo like =:pcodigo');

        end;

      end;

  end;

  DM_Cadastro.FDQueryProduto.Open();
end;

procedure TfrmCadastroProduto.btnSalvarClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Edit;
  DM_Cadastro.FDQueryProduto.Post;
end;

procedure TfrmCadastroProduto.DB_APrazoExit(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProdutoPRECO_PRAZO_VENDA.Value :=
    ((DM_Cadastro.FDQueryProdutoPRECO_PRAZO_CUSTO.Value *
    DM_Cadastro.FDQueryProdutoPRECENTO_PRAZO_LUCRO.Value) / 100) +
    DM_Cadastro.FDQueryProdutoPRECO_PRAZO_CUSTO.Value;

end;

procedure TfrmCadastroProduto.DB_AvistaExit(Sender: TObject);
begin
  inherited;
  DM_Cadastro.fdQueryProdutoPRECO_VENDA.Value :=
    ((DM_Cadastro.FDQueryProdutoPRECO_CUSTO.Value *
    DM_Cadastro.FDQueryProdutoPRECENTO_LUCRO.Value) / 100) +
    DM_Cadastro.FDQueryProdutoPRECO_CUSTO.Value;
end;

end.
