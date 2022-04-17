unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ColorGrd;

type
  TfrmCadastroVendas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit5: TDBEdit;
    DbData: TDBEdit;
    DBLookupCB_Cond_pgto: TDBLookupComboBox;
    Panel2: TPanel;
    DBSomaTotal: TDBEdit;
    btn_Totaliza: TButton;
    btnNovo: TButton;
    btnEdit: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    Timer1: TTimer;
    btnGerarLancamento: TButton;
    DBC_Desconto: TDBComboBox;
    Label14: TLabel;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBGrid_Venda: TDBGrid;
    DBE_Desconto: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupCB_conta: TDBLookupComboBox;
    DBGridVendas: TDBGrid;
    DBComboBox2: TDBComboBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    Label18: TLabel;
    DBEdit2: TDBEdit;
    DB_Data_Faturamento: TDBEdit;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    CB_opcao: TComboBox;
    CB_Opcao2: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    procedure DBGridVendasExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btn_TotalizaClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnDeletarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure btnGerarLancamentoClick(Sender: TObject);
    procedure DBC_DescontoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBE_DescontoExit(Sender: TObject);
    procedure DBECod_ClienteExit(Sender: TObject);
    procedure DBE_DescontoEnter(Sender: TObject);
  private
    { Private declarations }

    procedure totaliza;

  public
    { Public declarations }
    percento: Currency;
  end;

var
  frmCadastroVendas: TfrmCadastroVendas;

implementation

{$R *.dfm}

uses DMVendas, DMCadastro, CadastroFinanceiro, Preferencia, DMDados;

procedure TfrmCadastroVendas.btnCancelarClick(Sender: TObject);
begin
  if DM_Vendas.FDQuerySaida_Venda.State in [dsEdit, dsInsert] then
  begin
    DM_Vendas.FDQuerySaida_Venda.Cancel;
  end;
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
  { DM_Vendas.FDQuerySaidaProduto.Cancel;
    DM_Vendas.FDQuerySaida_Venda.Cancel;
  }
end;

procedure TfrmCadastroVendas.btnDeletarClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.edit;
  DM_Vendas.FDQuerySaida_Venda.Delete;
  DM_Vendas.FDQuerySaidaProduto.edit;
  DM_Vendas.FDQuerySaidaProduto.Delete
  // DM_Vendas.FDQuerySaidaProduto.Delete;
  { begin
    DM_Vendas.FDQuerySaida_Venda.edit;
    // DM_Vendas.FDQuerySaida_Venda.Delete;
    DM_Vendas.FDQuerySaidaProduto.edit;
    // DM_Vendas.FDQuerySaidaProduto.Delete;
    while not DM_Vendas.FDQuerySaidaProduto.Eof do
    // verificando ate o final da tabela
    begin
    DM_Vendas.FDQuerySaidaProduto.edit;
    DM_Vendas.FDQuerySaidaProduto.Delete;
    DM_Vendas.FDQuerySaidaProduto.Delete;
    DM_Vendas.FDQuerySaida_Venda.Delete;
    end;
    end; }
end;

procedure TfrmCadastroVendas.btnEditClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.edit;
  DM_Vendas.FDQuerySaidaProduto.edit;
end;

procedure TfrmCadastroVendas.btnGerarLancamentoClick(Sender: TObject);
begin
  ShowMessage('Ainda falta desenvolver a tela')
  /// frmCadastroFinanceiro.DB_IdVenda :=  DBEdit1.Text;

end;

procedure TfrmCadastroVendas.btnNovoClick(Sender: TObject);

begin
  // prox := 1;
  if not(DM_Vendas.FDQuerySaida_Venda.State in [dsEdit, dsInsert]) then
  begin
    DM_Vendas.FDQuerySaida_Venda.Insert;
    // DM_Vendas.FDQuerySaidaProduto.Insert;
  end;
  { DM_Vendas.FDQuerySaida_Venda.Insert;
    DM_Cadastro.FDQueryCliente.Open();
    DM_Vendas.FDQuerySaidaProduto.Open();
    DM_Vendas.FDQuerySaida_Venda.edit;
    DM_Vendas.FDQuerySaida_Venda.Open();
    DM_Cadastro.FDQueryProduto.Open();
    DM_Vendas.FDQuerySaidaProduto.edit;
    DM_Vendas.FDQuerySaida_Venda.Last;
    prox := DM_Vendas.FDQuerySaida_VendaCODIGO.AsInteger + 1;
    DM_Vendas.FDQuerySaida_Venda.Append;
    DM_Vendas.FDQuerySaida_VendaCODIGO.AsInteger := prox; }
  // DBGridVendas.ReadOnly := false;
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
  DM_Vendas.FDQuerySaida_VendaDATAVENDA.AsDateTime := date;
end;

procedure TfrmCadastroVendas.btnPesquisaClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.Close;
  DM_Vendas.FDQuerySaida_Venda.Params.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('');
  DM_Vendas.FDQuerySaida_Venda.SQL.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('select * from SAIDA_VENDA');
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('WHERE 1 = 1');
  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Vendas.FDQuerySaida_Venda.SQL.Add('where codigo =:pcodigo');
  // DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND CODIGO like' + QuotedStr('%' + edt_Pesquisa.Text));
                { DM_Vendas.FDQuerySaida_Venda.SQL.Add('where codigo =:pcodigo');
                  DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text); }
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND codigo like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));

                { DM_Vendas.FDQuerySaida_Venda.SQL.Add('AND codigo like =:pcodigo');
                  DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger :=
                  StrToInt('%'+ edt_Pesquisa.Text + '%'); }
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND codigo = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
        end;
      end;

    1:
      begin // opção nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND produto like' + QuotedStr('%' + edt_Pesquisa.Text));
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND produto like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('AND produto = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
          // DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by bai_codigo');
          // DM_Vendas.FDQuerySaida_Venda.SQL.Add('where bai_codigo like =:pcodigo');

        end;

      end;

  end;

  DM_Vendas.FDQuerySaida_Venda.Open();

end;

procedure TfrmCadastroVendas.btnSalvarClick(Sender: TObject);
begin

try
    DM_Vendas.FDQuerySaida_Venda.edit;
  DM_Vendas.FDQuerySaidaProduto.edit;


  if DM_Vendas.FDQuerySaida_Venda.State in [dsEdit, dsInsert] then
  begin
    DM_Vendas.FDQuerySaidaProduto.Post;
    DM_Vendas.FDQuerySaida_Venda.Post;
    { DM_Vendas.FDQuerySaidaProduto.Append;
      DM_Vendas.FDQuerySaidaProdutoCODIGO.AsInteger :=  DM_Vendas.FDQuerySaidaProdutoCODIGO.Keyv }
  end;
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
Except
    if DM_Vendas.FDQuerySaidaProdutoCODPRODUTO.IsNull then
  begin
    ShowMessage('Verifique produto sem codigo')
  end;
end;

end;

procedure TfrmCadastroVendas.btn_TotalizaClick(Sender: TObject);
begin
  totaliza;
end;

procedure TfrmCadastroVendas.DBC_DescontoChange(Sender: TObject);
begin
  /// DBC_Desconto.ItemIndex := 0;   // tentando colocar o dbcombobox para iniciar no 0
end;

procedure TfrmCadastroVendas.DBECod_ClienteExit(Sender: TObject);
begin // verificar a tela de para poder verificar se tem um iten já cadastrado
  if DM_Vendas.FDQuerySaida_VendaCODCLIENTE.Value = DM_Cadastro.
    FDQueryProdutoCODIGO.Value then
  begin
  end
  else
  begin
    ShowMessage('Cliente não encontrado ou bloqueado !');
    /// DBECod_Cliente.SetFocus;
    Exit;
    DM_Vendas.FDQuerySaida_VendaCODCLIENTE.Value;
  end;
end;

procedure TfrmCadastroVendas.DBE_DescontoEnter(Sender: TObject);
begin
  if DBC_Desconto.Text = EmptyStr then
  begin
    ShowMessage('Selecione o tipo de desconto');
    // DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
    // DM_Vendas.FDQuerySaida_VendaDESCONTO.Text := '';
    DBC_Desconto.SetFocus
  end;
end;

procedure TfrmCadastroVendas.DBE_DescontoExit(Sender: TObject);
var
  desconto: Currency;

begin
  percento := DM_Dados.FDQueryPreferencia.Fields[0].AsFloat;
  // DM_Dados.FDQueryPreferenciaLIMITE_DESCONTO.Value
  { if frmCadastroVendas.DBC_Desconto.Text = EmptyStr then
    begin
    ShowMessage('Selecione o tipo de desconto');
    // DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
    DBC_Desconto.SetFocus;
    end
    else }
  case frmCadastroVendas.DBC_Desconto.ItemIndex of
    // combobox de deconto por percento ou real

    0: // R$
      begin
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := true;
        if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > 10 then
        Begin
          ShowMessage('Valor do desconto acima do permitido em reais ');
          DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
          DBE_Desconto.SetFocus;
        End
        else
          frmCadastroVendas.DBE_Desconto.Text;
      end;
    1: // %
      begin
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := false;
        if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > percento then
        Begin
          ShowMessage('Valor do desconto acima do permitido ');
          DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
          DBE_Desconto.SetFocus;
        End
        else
          frmCadastroVendas.DBE_Desconto.Text;
      end;

  end;
end;

procedure TfrmCadastroVendas.DBGrid1DblClick(Sender: TObject);
begin
  PageControl1.TabIndex := 1;
end;

procedure TfrmCadastroVendas.DBGridVendasExit(Sender: TObject);
begin
  { DM_Vendas.FDQuerySaidaProdutoVALORTOTAL.Value :=
    DM_Vendas.FDQuerySaidaProdutoQUANTIDADE.Value *
    DM_Vendas.FDQuerySaidaProdutoVALORPRODUTO.Value; }
end;

procedure TfrmCadastroVendas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_Vendas.FDQuerySaida_Venda.Close;
  DM_Vendas.FDQuerySaidaProduto.Close;
  DM_Cadastro.FDQueryCondição_pagamento.Close;
  DM_Cadastro.FDQueryProduto.Close;
  DM_Cadastro.FDQueryCliente.Close;
  frmCadastroVendas.Free;
  frmCadastroVendas := nil;
end;

procedure TfrmCadastroVendas.FormCreate(Sender: TObject);
begin
  // DM_Vendas.FDQuerySaida_VendaID_CONTA.AsString := DM_Cadastro.FDQueryContaTIPO.AsString := 'RECEBER';
  DM_Dados.FDQueryPreferencia.Open();
  DM_Vendas.FDQuerySaida_Venda.Open();
  DM_Cadastro.FDQueryProduto.Open();
  DM_Vendas.FDQuerySaidaProduto.Open();
  DM_Cadastro.FDQueryCliente.Open();
  DM_Cadastro.FDQueryCondição_pagamento.Open();
  DM_Cadastro.FDQueryTipoPgto.Open();
  DM_Cadastro.FDQueryConta.Open();
  DM_Cadastro.FDQuerySubConta.Open();
  DM_Cadastro.FDQueryTIPO_CONTA.Open();
  { AtualizaFDQuery(DM_Cadastro.FDQueryProduto,'');
    AtualizaFDQuery(DM_Vendas.FDQuerySaida_Venda,'');
    AtualizaFDQuery(DM_Vendas.FDQuerySaidaProduto,'');
    AtualizaFDQuery(DM_Cadastro.FDQueryCliente,'');
    AtualizaFDQuery( DM_Cadastro.FDQueryCondição_pagamento,'');
    AtualizaFDQuery(DM_Cadastro.FDQueryTipoPgto,'');
    AtualizaFDQuery( DM_Cadastro.FDQueryConta,'');
    AtualizaFDQuery(DM_Cadastro.FDQuerySubConta,''); }

end;

procedure TfrmCadastroVendas.totaliza;
begin
  var
    soma, desconto: Currency;

  begin
    percento := DM_Dados.FDQueryPreferencia.Fields[0].AsFloat;
    desconto := 0;
    soma := 0;
    DM_Vendas.FDQuerySaida_Venda.edit;
    DM_Vendas.FDQuerySaidaProduto.edit;
    DM_Vendas.FDQuerySaidaProduto.edit;
    DM_Vendas.FDQuerySaida_Venda.edit;
    DM_Vendas.FDQuerySaidaProduto.First; // pega o primeiro registro
    while not DM_Vendas.FDQuerySaidaProduto.Eof do
    // verificando ate o final da tabela
    begin
      soma := soma + DM_Vendas.FDQuerySaidaProdutoVALORTOTAL.CurValue;
      DM_Vendas.FDQuerySaidaProduto.Next
      // nanda para o proximo registro
    end;
    Try
      if DBE_Desconto.Text <> EmptyStr then
      begin
        case DBC_Desconto.ItemIndex of
          // combobox de deconto por percento ou real
          0:
            begin
              // R$
              // DBE_Desconto.Text := val;
              desconto := DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue;
              DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value :=
                soma + DM_Vendas.FDQuerySaida_VendaFRETE.Value - desconto;
            end;
          1: // %
            begin
              if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > percento then
              Begin
                ShowMessage('Valor do desconto acima do permitido ');
              End
              else
                desconto := DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue;
              DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value :=
                (soma - (soma * desconto) / 100) +
                DM_Vendas.FDQuerySaida_VendaFRETE.Value;
            end;
        end;
      end
      else

        DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value :=
          soma + DM_Vendas.FDQuerySaida_VendaFRETE.Value + desconto;
    Except
      on E: Exception do
      begin
        ShowMessage('Algum item sem quantidade ou sem valor na venda');
      end;
    end;
  end;

end;

end.
