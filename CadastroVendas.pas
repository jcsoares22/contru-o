unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadastroVendas = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    CB_opcao: TComboBox;
    CB_Opcao2: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    TabSheet2: TTabSheet;
    DBGridVendas: TDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBEdit5: TDBEdit;
    DbData: TDBEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    Panel2: TPanel;
    DBSomaTotal: TDBEdit;
    btn_Totaliza: TButton;
    btnNovo: TButton;
    btnEdit: TButton;
    btnDeletar: TButton;
    btnSalvar: TButton;
    btnCancelar: TButton;
    DBNavigator1: TDBNavigator;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    TabSheet3: TTabSheet;
    Timer1: TTimer;
    btnGerarLancamento: TButton;
    DBC_Desconto: TDBComboBox;
    Label14: TLabel;
    DBE_Desconto: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBGrid_Venda: TDBGrid;
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
    procedure DBC_DescontoExit(Sender: TObject);
    procedure DBC_DescontoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBE_DescontoExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroVendas: TfrmCadastroVendas;

implementation

{$R *.dfm}

uses DMVendas, DMCadastro, CadastroFinanceiro;

procedure TfrmCadastroVendas.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
end;

procedure TfrmCadastroVendas.btnDeletarClick(Sender: TObject);
begin
  begin
    while not DM_Vendas.FDQuerySaidaProduto.Eof do
    // verificando ate o final da tabela
    begin
      DM_Vendas.FDQuerySaidaProduto.edit;
      DM_Vendas.FDQuerySaida_Venda.edit;
      DM_Vendas.FDQuerySaidaProduto.Delete;
      // DM_Vendas.FDQuerySaida_Venda.Delete;
    end;
  end;
end;

procedure TfrmCadastroVendas.btnEditClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.edit;
end;

procedure TfrmCadastroVendas.btnGerarLancamentoClick(Sender: TObject);
begin
  ShowMessage('Ainda falta desenvolver a tela')
  /// frmCadastroFinanceiro.DB_IdVenda :=  DBEdit1.Text;

end;

procedure TfrmCadastroVendas.btnNovoClick(Sender: TObject);
var
  prox: integer;
begin
  prox := 1;

  DM_Cadastro.FDQueryCliente.Open();
  DM_Vendas.FDQuerySaidaProduto.Open();
  DM_Vendas.FDQuerySaida_Venda.Open();
  DM_Cadastro.FDQueryProduto.Open();
  DM_Vendas.FDQuerySaidaProduto.edit;
  DM_Vendas.FDQuerySaida_Venda.Last;
  prox := DM_Vendas.FDQuerySaida_VendaCODIGO.AsInteger + 1;
  DM_Vendas.FDQuerySaida_Venda.Append;
  DM_Vendas.FDQuerySaida_VendaCODIGO.AsInteger := prox;
  // DBGridVendas.ReadOnly := false;
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
  DbData.Text := DateToStr(Now);
  // Criando a data altomaticamente ao criar uma nova venda
end;

procedure TfrmCadastroVendas.btnPesquisaClick(Sender: TObject);
begin
  // DM_Cadastro.FDQueryCliente.Open();
  DM_Vendas.FDQuerySaida_Venda.Close;
  DM_Vendas.FDQuerySaida_Venda.Params.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('');
  DM_Vendas.FDQuerySaida_Venda.SQL.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('select * from saida_venda');

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('ORDER BY CODIGO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('where CODIGO =:pcodigo');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by CODIGO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('contains CODIGO =:pcodigo');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if Trim(edt_Pesquisa.Text) = EmptyStr then
              // usando o trim ele retira o espaço do começo
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by CODIGO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('where CODIGO =:pcodigo');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;
            end;
        end;
      end;

    1:
      begin
        case CB_Opcao2.ItemIndex of
          0:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pdescricao').AsString
                  := (edt_Pesquisa.Text);
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pdescricao').AsString
                  := (edt_Pesquisa.Text);
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Vendas.FDQuerySaida_Venda.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Vendas.FDQuerySaida_Venda.ParamByName('pdescricao').AsString
                  := (edt_Pesquisa.Text);
              end;
            end;
          // DM_Endereco..FDQueryBairro.SQL.Add('order by bai_codigo');
          // DM_Endereco..FDQueryBairro.SQL.Add('where bai_codigo like =:pcodigo');

        end;

      end;

  end;

  DM_Vendas.FDQuerySaida_Venda.Open();

end;

procedure TfrmCadastroVendas.btnSalvarClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.edit;
  DM_Cadastro.FDQueryProduto.edit;
  DM_Vendas.FDQuerySaidaProduto.edit;
  DM_Vendas.FDQuerySaidaProduto.Post;
  DM_Vendas.FDQuerySaida_Venda.Post;
  btnNovo.Enabled := true;
  btnEdit.Enabled := true;
  btnDeletar.Enabled := true;
end;

procedure TfrmCadastroVendas.btn_TotalizaClick(Sender: TObject);
var
  soma, desconto: Currency;
begin
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
      case DBC_Desconto.ItemIndex of // combobox de deconto por percento ou real
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
            if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > 10 then
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

procedure TfrmCadastroVendas.DBC_DescontoChange(Sender: TObject);
begin
  /// DBC_Desconto.ItemIndex := 0;   // tentando colocar o dbcombobox para iniciar no 0
end;

procedure TfrmCadastroVendas.DBC_DescontoExit(Sender: TObject);
var
  desconto: Currency;
begin
  case frmCadastroVendas.DBC_Desconto.ItemIndex of
    // combobox de deconto por percento ou real
    0:
      begin
        // R$
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := true;
        frmCadastroVendas.DBE_Desconto.Text;

      end;
    1: // %
      begin
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := false;
        frmCadastroVendas.DBE_Desconto.Text;
      end;
  end;

end;

procedure TfrmCadastroVendas.DBE_DescontoExit(Sender: TObject);
var
  desconto: Currency;
begin
  case frmCadastroVendas.DBC_Desconto.ItemIndex of
    // combobox de deconto por percento ou real
    0:
      begin
        // R$
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := true;
        if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > 10 then
        Begin
          ShowMessage('Valor do desconto acima do permitido ');
          DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
        End
        else

          frmCadastroVendas.DBE_Desconto.Text;

      end;
    1: // %
      begin
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Currency := false;

        if DM_Vendas.FDQuerySaida_VendaDESCONTO.CurValue > 10 then
        Begin
          ShowMessage('Valor do desconto acima do permitido ');
        DM_Vendas.FDQuerySaida_VendaDESCONTO.Clear;
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
  DM_Cadastro.FDQueryProduto.Open();
  DM_Vendas.FDQuerySaida_Venda.Open();
  DM_Vendas.FDQuerySaidaProduto.Open();
  DM_Cadastro.FDQueryCliente.Open();
  DM_Cadastro.FDQueryCondição_pagamento.Open();
  DM_Cadastro.FDQueryTipoPgto.Open();
  DM_Cadastro.FDQueryConta.Open();
  DM_Cadastro.FDQuerySubConta.Open();
end;

end.
