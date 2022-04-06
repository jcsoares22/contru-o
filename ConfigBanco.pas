unit ConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TConfiguraBanco = class(TForm)
    OpenDialog1: TOpenDialog;
    btnSave: TButton;
    edtConfiguraBanco: TEdit;
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ConfiguraBanco: TConfiguraBanco;

implementation

{$R *.dfm}

uses Registry;

procedure TConfiguraBanco.btnSaveClick(Sender: TObject);
begin
  var
    Reg: TRegistry;
  begin
    Reg := TRegistry.Create;
    try
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;
      { Abre a chave (path). Se não existir, cria e abre. }
      Reg.OpenKey('SYSTEC', true);
      { Escreve um inteiro }
      Reg.WriteInteger('Numero', StrToInt(edtConfiguraBanco.Text));
      { Escreve uma string }
      Reg.WriteString('Nome', edtConfiguraBanco.Text);
    finally
      Reg.Free;
    end
  end;
end;

end.
