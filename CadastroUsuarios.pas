unit CadastroUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.DBCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, RxCtrls;

type
  TfrmCadastroUsuario = class(TForm)
    Cadastro: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid_Cliente: TDBGrid;
    Panel2: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    CB_Opcao2: TComboBox;
    CB_opcao: TComboBox;
    edt_Pesquisa: TEdit;
    btnPesquisa: TButton;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    Geral: TTabSheet;
    Panel3: TPanel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    DB_Nome: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBNavigator1: TDBNavigator;
    TabSheet3: TTabSheet;
    checkBoxManutencaoUsuario: TRxCheckBox;
    checkBoxPreferencia: TRxCheckBox;
    checkBoxAdministrador: TRxCheckBox;
    TabSheet4: TTabSheet;
    checkBoxUtrapassarLimite: TRxCheckBox;
    DBE_DescUsuario: TDBEdit;
    Label7: TLabel;
    Panel1: TPanel;
    btnNovo: TButton;
    btnSalvar: TButton;
    btnEdit: TButton;
    btnCancelar: TButton;
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure edt_PesquisaChange(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnEditClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DBGrid_ClienteDblClick(Sender: TObject);
    procedure DBNavigator1Click(Sender: TObject; Button: TNavigateBtn);
    procedure FormShow(Sender: TObject);
    procedure DBE_DescUsuarioExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    procedure verificacaoCheckBoxGeral;
    procedure checkBoxGeral;
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

uses Dmdados, LoginMenu, Preferencia;

procedure TfrmCadastroUsuario.btnNovoClick(Sender: TObject);
begin
  // inherited;

  if not(DM_Dados.FDQueryUsuario.State in [dsEdit, dsInsert]) then
  begin
    DM_Dados.FDQueryUsuario.Insert;
    checkBoxGeral;
  end;
  DM_Dados.FDQueryUsuarioCAD_USU.Value := 'F';

end;

procedure TfrmCadastroUsuario.btnPesquisaClick(Sender: TObject);
begin
  DM_Dados.FDQueryUsuario.Close;
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
            begin // valida��o para o campo quando ele estiver vazio
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
          1: // QUE CONT�M
            begin // valida��o para o campo quando ele estiver vazio
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
            begin // valida��o para o campo quando ele estiver vazio
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

      begin // op��o nome
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
  DM_Dados.FDQueryUsuario.Edit;
  DM_Dados.FDQueryUsuario.Post;
end;

procedure TfrmCadastroUsuario.checkBoxGeral;
begin
  // altera limite de venda
  if checkBoxUtrapassarLimite.Checked = True then
  begin
    DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Value := 'T'
  end
  else
  begin
    DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Value := 'F'
  end;

  if checkBoxAdministrador.Checked = True then
  // COLOCANDO SISTEMA COMO ADMINISTRADOR
  begin
    DM_Dados.FDQueryUsuarioADM.Value := 'T';
  end
  else
    DM_Dados.FDQueryUsuarioADM.Value := 'F';

  if checkBoxPreferencia.Checked = True then
  // COLOCANDO SISTEMA COM PREMISS�O PARA PODER EDITAR A PREFERENCIA
  begin
    DM_Dados.FDQueryUsuarioPREFERENCIA.Value := 'T';
  end
  else
    DM_Dados.FDQueryUsuarioPREFERENCIA.Value := 'F';

  if checkBoxManutencaoUsuario.Checked = True then
  // COLOCANDO SISTEMA COM PREMISS�O PARA PODER EDITAR A PREFERENCIA
  begin
    DM_Dados.FDQueryUsuarioCAD_USU.Value := 'T';
  end
  else
    DM_Dados.FDQueryUsuarioCAD_USU.Value := 'F';
end;

procedure TfrmCadastroUsuario.DBE_DescUsuarioExit(Sender: TObject);
begin
  // DM_Dados.FDQueryUsuario.Open();
  if DBE_DescUsuario.ReadOnly = false then
  begin
    try

      if DM_Dados.FDQueryUsuarioDESCONTO_VENDA_USU.Value < 0 then
      begin
        ShowMessage('N�o pode ter porcentagem memor que  "0"');
        DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Clear;
        checkBoxUtrapassarLimite.SetFocus;
      end
      else
      begin
        if (DM_Dados.FDQueryUsuario.State in [dsEdit, dsInsert]) then
        begin
          DM_Dados.FDQueryPreferencia.Open;
          if checkBoxUtrapassarLimite.Checked <> True then
          begin
            ShowMessage('Marque a op��o, Ultra passar limite de desconto');
            DM_Dados.FDQueryPreferenciaDESC_MAX_USUSARIO.Clear;
            checkBoxUtrapassarLimite.SetFocus;
          end;
          if (DBE_DescUsuario.Text >=
            DM_Dados.FDQueryPreferenciaDESC_MAX_USUSARIO.CurValue) then
          begin
            DM_Dados.FDQueryPreferencia.Edit;
            ShowMessage('Ultra passou limite de desconto das preferencia.: ' +
              FloatToStr(DM_Dados.FDQueryPreferenciaDESC_MAX_USUSARIO.
              CurValue) + '%');
            DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Clear;
            DBE_DescUsuario.Clear;
            checkBoxUtrapassarLimite.SetFocus;
          end;
        end;
      end;

    Except
      on E: Exception do
      begin
        ShowMessage('verifique o check box se esta marcado');
      end;

    end;
  end;

end;

procedure TfrmCadastroUsuario.DBGrid_ClienteDblClick(Sender: TObject);
begin
  Cadastro.TabIndex := 1;
  verificacaoCheckBoxGeral;

end;

procedure TfrmCadastroUsuario.DBNavigator1Click(Sender: TObject;
  Button: TNavigateBtn);
begin
  verificacaoCheckBoxGeral;
end;

procedure TfrmCadastroUsuario.btnEditClick(Sender: TObject);
begin
  DM_Dados.FDQueryUsuario.Edit;
  DM_Dados.FDQueryPreferencia.Edit;
  checkBoxGeral;
  DBE_DescUsuario.ReadOnly := false;

end;

procedure TfrmCadastroUsuario.edt_PesquisaChange(Sender: TObject);
begin
  inherited;
  DM_Dados.FDQueryUsuario.Locate('USU_NOME', edt_Pesquisa.Text,
    [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmCadastroUsuario.FormActivate(Sender: TObject);
begin
  //
end;

procedure TfrmCadastroUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DM_Dados.FDQueryUsuario.Close;
  DM_Dados.FDQueryPreferencia.Close;
  // frmCadastroUsuario.Free;
  // FreeAndNil(frmCadastroUsuario);

end;

procedure TfrmCadastroUsuario.FormCreate(Sender: TObject);
begin
  DM_Dados.FDQueryUsuario.Close;
  DM_Dados.FDQueryUsuario.SQL.Add('');
  DM_Dados.FDQueryUsuario.SQL.Clear;
  DM_Dados.FDQueryUsuario.SQL.Add('select * from usuario');
  DM_Dados.FDQueryUsuario.Open();
  DM_Dados.FDQueryPreferencia.Open();
end;

procedure TfrmCadastroUsuario.FormShow(Sender: TObject);
begin
  verificacaoCheckBoxGeral;
end;

procedure TfrmCadastroUsuario.verificacaoCheckBoxGeral;
begin // verrica limite de desconto
  if DM_Dados.FDQueryUsuarioALTERAR_LIMITE_DESC.Value = 'T' then
  begin
    checkBoxUtrapassarLimite.Checked := True;
  end
  else
  begin
    checkBoxUtrapassarLimite.Checked := false;
  end;
  // check box administrador
  if DM_Dados.FDQueryUsuarioADM.Value = 'T' then
  begin
    checkBoxAdministrador.Checked := True;
  end
  else
  begin
    checkBoxAdministrador.Checked := false;
  end;
  // check box cadastro de usuario
  if DM_Dados.FDQueryUsuarioCAD_USU.Value = 'T' then
  begin
    checkBoxManutencaoUsuario.Checked := True
  end
  else
  begin
    checkBoxManutencaoUsuario.Checked := false;
  end;
  // checkbox cadastro de preferencia
  if DM_Dados.FDQueryUsuarioPREFERENCIA.Value = 'T' then
  begin
    checkBoxPreferencia.Checked := True;
  end
  else
  begin
    checkBoxPreferencia.Checked := false;
  end;
end;

end.
