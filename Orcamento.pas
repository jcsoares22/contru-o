unit Orcamento;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TfrmOrcamento = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Panel3: TPanel;
    Label9: TLabel;
    Label11: TLabel;
    Label10: TLabel;
    CB_opcao: TComboBox;
    CB_Opcao2: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

{$R *.dfm}

uses dmvendas;

procedure TfrmOrcamento.btnPesquisaClick(Sender: TObject);
begin
  DM_Vendas.FDQueryOrcamento.Close;
  DM_Vendas.FDQueryOrcamento.Params.Clear;
  DM_Vendas.FDQueryOrcamento.SQL.Add('');
  DM_Vendas.FDQueryOrcamento.SQL.Clear;
  DM_Vendas.FDQueryOrcamento.SQL.Add('select * from SAIDA_VENDA');
  DM_Vendas.FDQueryOrcamento.SQL.Add('WHERE 1 = 1');

      // DM_Vendas.FDQueryOrcamento.SQL.Add('where situacao like = '+'ORCAMENTO');
  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Vendas.FDQueryOrcamento.SQL.Add('where codigo =:pcodigo');
  // DM_Vendas.FDQueryOrcamento.ParamByName('pcodigo').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
                  ('AND CODIGO like' + QuotedStr('%' + edt_Pesquisa.Text));
                { DM_Vendas.FDQueryOrcamento.SQL.Add('where codigo =:pcodigo');
                  DM_Vendas.FDQueryOrcamento.ParamByName('pcodigo').AsInteger :=
                  StrToInt(edt_Pesquisa.Text); }
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
                  ('AND codigo like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));

                { DM_Vendas.FDQueryOrcamento.SQL.Add('AND codigo like =:pcodigo');
                  DM_Vendas.FDQueryOrcamento.ParamByName('pcodigo').AsInteger :=
                  StrToInt('%'+ edt_Pesquisa.Text + '%'); }
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by codigo');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
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
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
                  ('AND produto like' + QuotedStr('%' + edt_Pesquisa.Text));
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
                  ('AND produto like' +
                  QuotedStr('%' + edt_Pesquisa.Text + '%'));
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add('order by produto');
              end
              else
              begin
                DM_Vendas.FDQueryOrcamento.SQL.Add
                  ('AND produto = ' + QuotedStr(edt_Pesquisa.Text));
              end;
            end;
          // DM_Vendas.FDQueryOrcamento.SQL.Add('order by bai_codigo');
          // DM_Vendas.FDQueryOrcamento.SQL.Add('where bai_codigo like =:pcodigo');

        end;

      end;

  end;

  DM_Vendas.FDQueryOrcamento.Open();
end;

procedure TfrmOrcamento.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FreeAndNil(frmOrcamento);
  DM_Vendas.FDQueryOrcamento.Close;
  DM_Vendas.FDQuerySaida_Venda.Close;
end;

procedure TfrmOrcamento.FormCreate(Sender: TObject);
begin
  DM_Vendas.FDQueryOrcamento.Open();
  DM_Vendas.FDQuerySaida_Venda.Open();
end;

end.
