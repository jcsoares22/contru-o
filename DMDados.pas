unit DMDados;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Phys.IBBase,
  FireDAC.Comp.Client, Data.DB, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet;

type
  TDM_Dados = class(TDataModule)
    DADOS: TFDConnection;
    FDTransaction1: TFDTransaction;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDQueryUsuario: TFDQuery;
    FDQueryUsuarioUSU_CODIGO: TIntegerField;
    FDQueryUsuarioUSU_NOME: TStringField;
    FDQueryUsuarioUSU_LOGIN: TStringField;
    FDQueryUsuarioUSU_SENHA: TStringField;
    FDQueryUsuarioUSU_NIVEL: TIntegerField;
    FDUSUARIO: TFDTable;
    FDUSUARIOUSU_CODIGO: TIntegerField;
    FDUSUARIOUSU_NOME: TStringField;
    FDUSUARIOUSU_LOGIN: TStringField;
    FDUSUARIOUSU_SENHA: TStringField;
    FDUSUARIOUSU_NIVEL: TIntegerField;
    DT_Usuario: TDataSource;
    FDQueryPreferencia: TFDQuery;
    DT_Preferencia: TDataSource;
    FDQueryPreferenciaDESCONTO_VENDA: TFMTBCDField;
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

end.
