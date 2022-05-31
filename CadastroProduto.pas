unit CadastroProduto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask, DMCadastro, Biblioteca;

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
    DBLookupComboBoxGrupo: TDBLookupComboBox;
    DBLookupComboBoxSubGrupo: TDBLookupComboBox;
    Label27: TLabel;
    DB_Qte_Entrada: TDBEdit;
    Label28: TLabel;
    DB_Qte_Atual: TDBEdit;
    DBImage1: TDBImage;
    DBNavigator1: TDBNavigator;
    Panel3: TPanel;
    btnEstoque: TButton;
    Label20: TLabel;
    DBEdtQTE_Minima: TDBEdit;
    procedure DB_APrazoExit(Sender: TObject);
    procedure DB_AvistaExit(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEstoqueClick(Sender: TObject);
  private
    { Private declarations }
    procedure mod_ReadOnlyFalse;
    procedure mod_ReadOnlyTrue;
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

{$R *.dfm}

uses EstoqueProduto;

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
      ShowMessage('N�o a itens para ser deletados');
    end;
  end;
end;

procedure TfrmCadastroProduto.btnEditClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Edit;
  mod_ReadOnlyFalse;
end;

procedure TfrmCadastroProduto.btnEstoqueClick(Sender: TObject);
begin
  inherited;
  fecharTela;
  if (frmEstoque = nil) then
    frmEstoque := TFrmEstoque.Create(self);
  if (not frmEstoque.showing) then
    frmEstoque.Show;
  begin
    if frmEstoque.Visible = False then
      frmEstoque.Visible := True;
    frmEstoque.BringToFront;
  end;
end;

procedure TfrmCadastroProduto.btnNovoClick(Sender: TObject);
begin
  inherited;
  if not(DM_Cadastro.FDQueryProduto.State in [dsEdit, dsInsert]) then
  begin
    DM_Cadastro.FDQueryProduto.Insert;
  end;
  { prox := 1;
    DM_Cadastro.FDQueryProduto.Active := true;
    DM_Cadastro.FDQueryProduto.Last;
    DM_Cadastro.FDQueryProduto.Edit;
    prox := DM_Cadastro.FDQueryProdutoCODIGO.AsInteger + 1;
    DM_Cadastro.FDQueryProduto.Append;
    DM_Cadastro.FDQueryProdutoCODIGO.AsInteger := prox; }
  Nome_produto.SetFocus;

  DBLookupComboBoxCor.ReadOnly := False;
  DBLookupComboBoxMarca.ReadOnly := False;
  DBLookupComboBoxUNMedida.ReadOnly := False;
  DB_DT_Venda.Text := DateToStr(Now);
  DB_DT_Cad.Text := DateToStr(Now);
  mod_ReadOnlyFalse;
end;

procedure TfrmCadastroProduto.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM_Cadastro.FDQueryProduto.Close;
  /// DM_Cadastro.FDQueryProduto.Params.Clear;
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
            begin // valida��o para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND codigo like' + QuotedStr('%' + edt_Pesquisa.Text));
                { DM_Cadastro.FDQueryProduto.SQL.Add('where codigo =:pcodigo');
                  DM_Cadastro.FDQueryProduto.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text); }
              end;

            end;
          1: // QUE CONT�M
            begin // valida��o para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND codigo like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));

                { DM_Cadastro.FDQueryProduto.SQL.Add('AND codigo like =:pcodigo');
                  DM_Cadastro.FDQueryProduto.ParamByName('pcodigo').AsInteger :=
                  StrToInt('%'+ edt_Pesquisa.Text + '%'); }
              end;

            end;
          2: // IGUAL
            begin // valida��o para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND codigo = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
        end;
        { DM_Cadastro.FDQueryProduto.ParamByName('pbai_codigo').AsInteger :=
          StrToInt(edt_Pesquisa.Text); }
      end;

    1:
      begin // op��o nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add('order by produto');
              end
              else
              begin
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND produto like' + QuotedStr('%' + edt_Pesquisa.Text));
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
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND produto like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));
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
                DM_Cadastro.FDQueryProduto.SQL.Add
                  ('AND produto = ' + QuotedStr(edt_Pesquisa.Text));
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

  if DBEdtQTE_Minima.Text = '' then
  begin
    ShowMessage('Quantidade minima deve ser informada');
    DBEdtQTE_Minima.SetFocus;
  end;
  if DBLookupComboBoxUNMedida.Text = '' then
  begin
    ShowMessage('Informe a unidade de medida');
    DBLookupComboBoxUNMedida.SetFocus;
  end;
  if DBEdtQTE_Minima.Text <> '' then
  begin
    DM_Cadastro.FDQueryProduto.Edit;
    DM_Cadastro.FDQueryProduto.Post;
    mod_ReadOnlyTrue;
  end;

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

procedure TfrmCadastroProduto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  frmCadastroProduto.Free;
  frmCadastroProduto := nil;
end;

procedure TfrmCadastroProduto.mod_ReadOnlyFalse;
begin
  DBEdit3.ReadOnly := False;
  DBEdit9.ReadOnly := False;
  DBLookupComboBoxCor.ReadOnly := False;
  DBLookupComboBoxMarca.ReadOnly := False;
  DBLookupComboBoxUNMedida.ReadOnly := False;
  DBRadioGroup1.ReadOnly := False;
  Nome_produto.ReadOnly := False;
  DBEdit5.ReadOnly := False;
  DB_Avista.ReadOnly := False;
  DBEdit7.ReadOnly := False;
  DBEdit12.ReadOnly := False;
  DBEdit13.ReadOnly := False;
  DB_APrazo.ReadOnly := False;
  DBLookupComboBoxGrupo.ReadOnly := False;
  DBLookupComboBoxSubGrupo.ReadOnly := False;

end;

procedure TfrmCadastroProduto.mod_ReadOnlyTrue;
begin
  DBEdit9.ReadOnly := True;
  DBLookupComboBoxCor.ReadOnly := True;
  DBLookupComboBoxMarca.ReadOnly := True;
  DBLookupComboBoxUNMedida.ReadOnly := True;
  DBRadioGroup1.ReadOnly := True;
  Nome_produto.ReadOnly := True;
  DBEdit5.ReadOnly := True;
  DB_Avista.ReadOnly := True;
  DBEdit7.ReadOnly := True;
  DBEdit12.ReadOnly := True;
  DBEdit13.ReadOnly := True;
  DB_APrazo.ReadOnly := True;
  DBLookupComboBoxGrupo.ReadOnly := True;
  DBLookupComboBoxSubGrupo.ReadOnly := True;
end;

end.
