unit Biblioteca;

interface

uses
  FireDAC.Comp.Client, System.SysUtils;
//procedure AtualizaFDQuery(const pFDQuery: TFDQuery; pSQL: string);

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
end.
