unit Biblioteca;

interface

uses
  FireDAC.Comp.Client, System.SysUtils, frxClass, Vcl.Forms;
// procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
procedure CarregaRelatorio(Const pReport: TFrxReport);
procedure fecharTela();

implementation

{
  procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);
  begin
  pFDQuery.Close; //caso se ele estiver limpo ele vai receber ele mesmo
  if Trim(pSQL) <> '' then
  begin
  pFDQuery.SQL.Clear;
  pFDQuery.SQL.Text := pSQL;
  end;
  pFDQuery.Open;
  pFDQuery.FetchAll;
  end;
}
 var
formAberto: TForm = nil;

procedure CarregaRelatorio(Const pReport: TFrxReport);
begin
  pReport.PrepareReport;
  pReport.ShowPreparedReport;
end;


procedure fecharTela;
begin
  if formAberto <> nil then
  begin
    formAberto.close;
    FreeAndNil(formAberto);
  end;

end;

end.
