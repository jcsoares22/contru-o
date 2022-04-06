unit DMEndereco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDM_Endereco = class(TDataModule)
    FDQueryCidade: TFDQuery;
    FDQueryCidadeID: TIntegerField;
    FDQueryCidadeNOME: TStringField;
    FDQueryCidadeID_ESTADO: TIntegerField;
    FDQueryCidadeUF: TStringField;
    Dt_Cidade: TDataSource;
    DT_Estados: TDataSource;
    FDQueryEstados: TFDQuery;
    FDQueryEstadosID: TIntegerField;
    FDQueryEstadosNOME: TStringField;
    FDQueryEstadosUF: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM_Endereco: TDM_Endereco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
  uses DMDados;
end.
