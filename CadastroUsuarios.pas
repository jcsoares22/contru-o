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
    PageControl1: TPageControl;
    Geral: TTabSheet;
    DBCheckBoxPreferencia: TCheckBox;
    DBCheckBox_administrador: TCheckBox;
    procedure btnPesquisaClick(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnEditClick(Sender: TObject);
begin
  inherited;
      DM_Dados.FDQueryUsuario.Edit;
end;

procedure TfrmCadastroUsuario.btnNovoClick(Sender: TObject);
begin
  inherited;
if not(DM_Dados.FDQueryUsuario.State in [dsEdit, dsInsert]) then
  begin
    DM_Dados.FDQueryUsuario.Insert;
  end;

   if DBCheckBox_administrador.Checked = true then     //COLOCANDO SISTEMA COMO ADMINISTRADOR
   begin
      DM_Dados.FDQueryUsuarioADM.Value := 'T';
   end
  else
    DM_Dados.FDQueryUsuarioADM.Value := 'F';

    if DBCheckBoxPreferencia.Checked = true then          //COLOCANDO SISTEMA COM PREMISSÃO PARA PODER EDITAR A PREFERENCIA
   begin
      DM_Dados.FDQueryUsuarioPREFERENCIA.Value := 'T';
   end
  else
    DM_Dados.FDQueryUsuarioPREFERENCIA.Value := 'F';

end;

procedure TfrmCadastroUsuario.btnPesquisaClick(Sender: TObject);
begin
  inherited;
  DM_Dados.FDQueryUsuario.Close;
  DM_Dados.FDQueryUsuario.Params.Clear;
  DM_Dados.FDQueryUsuario.SQL.Add('');
  DM_Dados.FDQueryUsuario.SQL.Clear;
  DM_Dados.FDQueryUsuario.SQL.Add('select * from usuario');
  /// DataModule1.FDQueryProdutoFOTO.Value := Date.;
  // DM_Dados.FDQueryUsuario.SQL.Add('where USU_CODIGO =:pUSU_CODIGO');
  // DM_Dados.FDQueryUsuario.ParamByName('pUSU_CODIGO').AsInteger := StrToInt(edt_Pesquisa.Text);

  case CB_opcao.ItemIndex of // utilizando o combo box na janela bairro
    0:
      begin
        case CB_Opcao2.ItemIndex of
          0: // iniciado com
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                // DM_Dados.FDQueryUsuario.SQL.Add('where USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDQueryUsuario.ParamByName('pUSU_CODIGO_ini').AsInteger
                  := StrToInt(edt_Pesquisa.Text + '%');
              end;

            end;
          1: // QUE CONTÊM
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                DM_Dados.FDQueryUsuario.SQL.Add
                  ('contains USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDQueryUsuario.ParamByName('pUSU_CODIGO').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;

            end;
          2: // IGUAL
            begin // validação para o campo quando ele estiver vazio
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by USU_CODIGO');
              end
              else
              begin
                DM_Dados.FDQueryUsuario.SQL.Add
                  ('where USU_CODIGO =:pUSU_CODIGO');
                DM_Dados.FDQueryUsuario.ParamByName('pUSU_CODIGO').AsInteger :=
                  StrToInt(edt_Pesquisa.Text);
              end;
            end;
        end;
        DM_Dados.FDQueryUsuario.ParamByName('pbai_USU_CODIGO').AsInteger :=
          StrToInt(edt_Pesquisa.Text);
      end;

    1:

      begin // opção nome
        case CB_Opcao2.ItemIndex of
          0:
            begin // inicia com
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by produto');
              end
              else
              begin
                DM_Dados.FDQueryUsuario.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDQueryUsuario.ParamByName('nome').AsString :=
                  (edt_Pesquisa.Text + '%');
              end;
            end;
          1:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Dados.FDQueryUsuario.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDQueryUsuario.ParamByName('pdescricao').AsString :=
                  (edt_Pesquisa.Text);
              end;
            end;
          2:
            begin
              if edt_Pesquisa.Text = EmptyStr then
              begin
                DM_Dados.FDQueryUsuario.SQL.Add('order by BAI_DESCRICAO');
              end
              else
              begin
                DM_Dados.FDQueryUsuario.SQL.Add
                  ('where BAI_DESCRICAO =:pdescricao');
                DM_Dados.FDQueryUsuario.ParamByName('pdescricao').AsString :=
                  (edt_Pesquisa.Text);
              end;
            end;
        end;

      end;

  end;

  DM_Dados.FDQueryUsuario.Open();
end;

procedure TfrmCadastroUsuario.btnSalvarClick(Sender: TObject);
begin
  inherited;

  DM_Dados.FDQueryUsuario.Post;
end;

procedure TfrmCadastroUsuario.edt_PesquisaChange(Sender: TObject);
begin
  inherited;
  DM_Dados.FDQueryUsuario.Locate('USU_NOME', edt_Pesquisa.Text,
    [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FreeAndNil(frmCadastroUsuario);
end;

end.
