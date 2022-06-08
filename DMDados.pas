unit DMDados;

interface

uses
  System.SysUtils, System.Variants, System.Classes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Criptografia;

type
  TDM_Dados = class(TDataModule)
    DADOS: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    DT_Usuario: TDataSource;
    FDQueryPreferencia: TFDQuery;
    DT_Preferencia: TDataSource;
    FDQueryPreferenciaTELEFONE: TStringField;
    FDQueryPreferenciaCPF: TStringField;
    FDQueryPreferenciaEMAIL: TStringField;
    FDQueryPreferenciaNOME: TStringField;
    FDQueryPreferenciaDESCRICAO: TStringField;
    FDQueryPreferenciaRUA: TStringField;
    FDQueryPreferenciaNUMERO: TStringField;
    FDQueryPreferenciaUF_ID: TIntegerField;
    FDQueryPreferenciaCIDADE_ID: TIntegerField;
    FDQueryPreferenciaBAIRRO: TStringField;
    FDQueryPreferenciaDESCONTO_VENDA: TBCDField;
    FDQueryUsuario: TFDQuery;
    FDQueryUsuarioUSU_CODIGO: TIntegerField;
    FDQueryUsuarioUSU_NOME: TStringField;
    FDQueryUsuarioUSU_LOGIN: TStringField;
    FDQueryUsuarioUSU_SENHA: TStringField;
    FDQueryUsuarioUSU_NIVEL: TIntegerField;
    FDQueryUsuarioADM: TStringField;
    FDQueryUsuarioPREFERENCIA: TStringField;
    FDQueryUsuarioCAD_USU: TStringField;
    procedure FDQueryUsuarioBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Dados: TDM_Dados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDM_Dados.FDQueryUsuarioBeforePost(DataSet: TDataSet);     ///fazendo a criptografia do sistema
begin
  if FDQueryUsuario.State in [dsInsert] then
  begin
    FDQueryUsuarioUSU_SENHA.AsAnsiString :=
      Criptografa('C', FDQueryUsuarioUSU_LOGIN.AsAnsiString);
  end
  else if FDQueryUsuario.State in [dsEdit] then
  begin
    if (FDQueryUsuarioUSU_SENHA.AsAnsiString <> FDQueryUsuarioUSU_SENHA.OldValue )
    then
    begin
      FDQueryUsuarioUSU_SENHA.AsAnsiString :=
        Criptografa('C', FDQueryUsuarioUSU_LOGIN.AsAnsiString);

    end;

  end;
end;



end.
