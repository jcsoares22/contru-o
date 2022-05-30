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
    FDQueryPreferenciaESTOQUE_MINIMO: TBCDField;
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
