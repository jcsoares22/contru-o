unit CadastroVendas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ColorGrd,
  IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl, IWDBStdCtrls,
  Vcl.Buttons, frxClass, frxDBSet, math, frxDesgn, frxExportBaseDialog,
  frxExportPDF, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

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
    btnGerarLancamento: TButton;
    DBGrid_Venda: TDBGrid;
    DBLookupCB_conta: TDBLookupComboBox;

    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    CB_opcao: TComboBox;
    CB_Opcao2: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    SpeedButton2: TSpeedButton;
    Label14: TLabel;
    DBC_Desconto: TDBComboBox;
    DBE_Desconto: TDBEdit;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBLookupCB_Cliente: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    Sitação: TRadioGroup;
    DBEdit2: TDBEdit;
    Label18: TLabel;
    Label17: TLabel;
    DBEdit3: TDBEdit;
    DB_Data_Faturamento: TDBEdit;
    Label16: TLabel;
    Label15: TLabel;
    DBComboBox2: TDBComboBox;
    frVendas: TfrxReport;
    frxDadosvenda: TfrxDBDataset;
    frxItens_vendas: TfrxDBDataset;
    btnImprimir: TBitBtn;
    Panel4: TPanel;
    btnPesquisaAvancadaVenda: TButton;
    Label19: TLabel;
    DBEdit7: TDBEdit;
    Label20: TLabel;
    DBEdit8: TDBEdit;
    frxPDFExport1: TfrxPDFExport;
    PopupMenu1: TPopupMenu;
    Cliente1: TMenuItem;
    Cliente21: TMenuItem;
    frxCliente2: TfrxDBDataset;
    frCliente2: TfrxReport;
    FDQueryVendasCliente2: TFDQuery;
    FDQueryVendasCliente2DATAVENDA: TSQLTimeStampField;
    FDQueryVendasCliente2VALORTOTAL: TBCDField;
    FDQueryVendasCliente2USU_NOME: TStringField;
    FDQueryVendasCliente2FRETE: TBCDField;
    FDQueryVendasCliente2NOME: TStringField;
    FDQueryVendasCliente2CODCLIENTE: TIntegerField;
    FDQueryVendasCliente2TIPO_DESC: TStringField;
    FDQueryVendasCliente2DESCONTO: TBCDField;
    PopupMenuMause: TPopupMenu;
    Produto1: TMenuItem;
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
    procedure DBC_DescontoChange(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure DBE_DescontoExit(Sender: TObject);
    procedure DBECod_ClienteExit(Sender: TObject);
    procedure DBE_DescontoEnter(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnPesquisaAvancadaVendaClick(Sender: TObject);
    procedure btnGerarLancamentoClick(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Cliente21Click(Sender: TObject);
  private
    { Private declarations }

    procedure totaliza;
    procedure lancFinaceiro;
  public
    { Public declarations }
    percento: Currency;
  end;

var
  frmCadastroVendas: TfrmCadastroVendas;

implementation

{$R *.dfm}

uses DMVendas, DMCadastro, CadastroFinanceiro, Preferencia, DMDados, Principal,
  CadastroRapidoCliente, PesquisaCliente, Biblioteca, PesquisaAvancadaVenda,
  DMFinanceiro, System.Types;

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
Var
  k: Integer;
  wData: TDate;
  wValorTotal: Double;
begin
  wData := Date;
  wValorTotal := DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value;
  if (DM_Vendas.FDQuerySaida_VendaPARCELA.Value > 0) and
    (DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value > 0) and
    (DM_Vendas.FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value > 0) then
  begin
    for k := 1 to DM_Vendas.FDQuerySaida_VendaPARCELA.Value do
    begin
      if not DM_Finaceiro.FDQueryFinanceiro.Locate('SEQ_PARCELA', k, []) then
      begin
        DM_Finaceiro.FDQueryFinanceiro.Append;
        DM_Finaceiro.FDQueryFinanceiroSEQ_PARCELA.Value := k;
      end
      else

        DM_Finaceiro.FDQueryFinanceiro.edit;

      wData := wData + DM_Vendas.FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value;
      DM_Finaceiro.FDQueryFinanceiroDATA_VENC.AsDateTime := wData;
      DM_Finaceiro.FDQueryFinanceiroVLR_PARC.AsCurrency :=
        DM_Vendas.FDQuerySaida_VendaVALORTOTAL.Value /
        DM_Vendas.FDQuerySaida_VendaDIAS_ENTRE_PARCELAS.Value;
      DM_Finaceiro.FDQueryFinanceiro.Post;
      wValorTotal := wValorTotal - DM_Finaceiro.FDQueryFinanceiroVLR_PARC.Value;
    end;
    DM_Finaceiro.FDQueryFinanceiro.Last;
    while DM_Finaceiro.FDQueryFinanceiroSEQ_PARCELA.Value >
      DM_Vendas.FDQuerySaida_VendaPARCELA.Value do
      DM_Finaceiro.FDQueryFinanceiro.Delete;
    if CompareValue(wValorTotal, 0.00, 0.001) <> EqualsValue then
    begin
      DM_Finaceiro.FDQueryFinanceiro.edit;
      DM_Finaceiro.FDQueryFinanceiroVLR_PARC.Value :=
        DM_Finaceiro.FDQueryFinanceiroVLR_PARC.Value + wValorTotal;
      DM_Finaceiro.FDQueryFinanceiro.Post;
    end;
    DM_Finaceiro.FDQueryFinanceiro.First;
  end;
end;

procedure TfrmCadastroVendas.btnImprimirClick(Sender: TObject);
begin
 with TButton(Sender).ClientToScreen(point(0, TButton(Sender).Height)) do
    PopupMenu1.Popup(X, Y);

end;

procedure TfrmCadastroVendas.btnNovoClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaidaProduto.open();
  if not(DM_Vendas.FDQuerySaida_Venda.State in [dsEdit, dsInsert]) then
  begin
    DM_Vendas.FDQuerySaida_Venda.Insert;
  end;
  btnNovo.Enabled := false;
  btnEdit.Enabled := false;
  btnDeletar.Enabled := false;
  DM_Vendas.FDQuerySaida_VendaDATAVENDA.AsDateTime := Date;
  DM_Vendas.FDQuerySaida_VendaUSU_NOME.Text :=
    DM_Dados.FDQueryUsuarioUSU_NOME.AsString;
end;

procedure TfrmCadastroVendas.btnPesquisaAvancadaVendaClick(Sender: TObject);
begin

  fecharTela;
  if (frmPesquisaAvancadaVenda = nil) then
    frmPesquisaAvancadaVenda := TFrmPesquisaAvancadaVenda.Create(self);
  if (not frmPesquisaAvancadaVenda.showing) then
    frmPesquisaAvancadaVenda.Show;
  begin
    if frmPesquisaAvancadaVenda.Visible = false then
      frmPesquisaAvancadaVenda.Visible := true;
    frmPesquisaAvancadaVenda.BringToFront;
  end;
end;

procedure TfrmCadastroVendas.btnPesquisaClick(Sender: TObject);
begin
  DM_Vendas.FDQuerySaida_Venda.close;
  DM_Vendas.FDQuerySaida_Venda.Params.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('');
  DM_Vendas.FDQuerySaida_Venda.SQL.Clear;
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('select * from SAIDA_VENDA');
  DM_Vendas.FDQuerySaida_Venda.SQL.Add('WHERE 1 = 1');

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

  DM_Vendas.FDQuerySaida_Venda.open();

end;

procedure TfrmCadastroVendas.btnSalvarClick(Sender: TObject);
begin
  ShowMessage('Totalizando a venda!');
  totaliza;
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

procedure TfrmCadastroVendas.Cliente1Click(Sender: TObject);
begin
 CarregaRelatorio(frVendas);
end;

procedure TfrmCadastroVendas.Cliente21Click(Sender: TObject);
begin
CarregaRelatorio(frCliente2);
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
  percento := DM_Dados.FDQueryPreferenciaDESCONTO_VENDA.CurValue;
  // DM_Dados.FDQueryPreferencia.Fields[9].AsFloat;    //recebe o valor da preferencia
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
  DM_Vendas.FDQuerySaida_Venda.close;
  DM_Vendas.FDQuerySaidaProduto.close;
  DM_Cadastro.FDQueryCondição_pagamento.close;
  DM_Cadastro.FDQueryProduto.close;
  DM_Cadastro.FDQueryCliente.close;
  frmCadastroVendas.Free;
  frmCadastroVendas := nil;
end;

procedure TfrmCadastroVendas.FormCreate(Sender: TObject);
begin
  DM_Finaceiro.FDQueryFinanceiro.open();
  DM_Cadastro.FDQueryCondição_pagamento.open();
  DM_Cadastro.FDQueryCliente.open();
  DM_Dados.FDQueryPreferencia.open();
  DM_Vendas.FDQuerySaida_Venda.open();
  DM_Cadastro.FDQueryProduto.open();
  DM_Vendas.FDQuerySaidaProduto.open();
  DM_Cadastro.FDQueryTipoPgto.open();
  DM_Cadastro.FDQueryConta.open();
  DM_Cadastro.FDQuerySubConta.open();
  DM_Cadastro.FDQueryTIPO_CONTA.open();
end;

procedure TfrmCadastroVendas.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = vk_f4 then
  begin
    frmCadastroRapidoCliente := TFrmCadastroRapidoCliente.Create(self);
    try
      frmCadastroRapidoCliente.showModal;
    finally
      FreeAndNil(frmCadastroRapidoCliente);
    end;
  end;
  if Key = vk_f5 then
  begin
    frmPesquisaCliente := TFrmPesquisaCliente.Create(self);
    try
      frmPesquisaCliente.showModal;
    finally
      FreeAndNil(frmPesquisaCliente);
    end;
  end;
end;

procedure TfrmCadastroVendas.lancFinaceiro;
begin
  DM_Finaceiro.FDQueryFinanceiroCODIGO.Value :=
    DM_Vendas.FDQueryOrcamentoCODIGO.Value;
end;

procedure TfrmCadastroVendas.SpeedButton2Click(Sender: TObject);
begin
  frmCadastroRapidoCliente := TFrmCadastroRapidoCliente.Create(self);
  try
    frmCadastroRapidoCliente.showModal;
  finally
    FreeAndNil(frmCadastroRapidoCliente);
  end;

end;

procedure TfrmCadastroVendas.totaliza;
var
  soma, desconto: Currency;
begin

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
