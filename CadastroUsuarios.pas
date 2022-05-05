unit CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DMDados,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroUsuario = class(TfrmCadastroPai)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DB_Nome: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    procedure btnPesquisaClick(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM_Dados.FDUSUARIO.Close;
  DM_Dados.FDUSUARIO.Params.Clear;
  DM_Dados.FDUSUARIO.SQL.Add('');
  DM_Dados.FDUSUARIO.SQL.Clear;
  DM_Dados.FDUSUARIO.SQL.Add('select * from usuario');
  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Dados.FDUSUARIO.SQL.Add('where USU_CODIGO =:pUSU_CODIGO');
  // DM_Dados.FDUSUARIO.ParamByName('pUSU_CODIGO').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                // DM_Dados.FDUSUARIO.SQL.Add('where USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDUSUARIO.ParamByName('pUSU_CODIGO_ini').AsInteger :=
                  StrToInt(edt_Pesquisa.Text + '%');
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                DM_Dados.FDUSUARIO.SQL.Add('contains USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDUSUARIO.ParamByName('pUSU_CODIGO').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                DM_Dados.FDUSUARIO.SQL.Add('where USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDUSUARIO.ParamByName('pUSU_CODIGO').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;
            end;
        end;
        DM_Dados.FDUSUARIO.ParamByName('pbai_USU_CODIGO').AsInteger :=
          StrToInt(edt_Pesquisa.Text);
      end;

    1:

      begin // opção nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by produto');
              end
              else
              begin
                DM_Dados.FDUSUARIO.SQL.Add('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDUSUARIO.ParamByName('nome').AsString :=
                  (edt_Pesquisa.Text + '%');
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Dados.FDUSUARIO.SQL.Add('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDUSUARIO.ParamByName('pdescricao').AsString :=
                  (edt_Pesquisa.Text);
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDUSUARIO.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Dados.FDUSUARIO.SQL.Add('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDUSUARIO.ParamByName('pdescricao').AsString :=
                  (edt_Pesquisa.Text);
              end;
            end;
        end;

      end;

  end;

  DM_Dados.FDUSUARIO.Open();
end;

procedure TfrmCadastroUsuario.edt_PesquisaChange(Sender: TObject);
begin
  inherited;
  DM_Dados.FDUSUARIO.Locate('USU_NOME', edt_Pesquisa.Text,
    [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmCadastroUsuario);
end;

end.
