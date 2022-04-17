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
var
  chave: String;
  Reg: TRegistry;
begin
  Reg := TRegistry.Create;
  try
    chave := 'SYSTEC';
    { Define a chave-raiz do registro }
    Reg.RootKey := HKEY_CURRENT_USER;
    { Abre a chave (path). Se não existir, cria e abre. }
    Reg.OpenKey('SYSTEC', true);
    { Escreve um inteiro
      Reg.WriteInteger('Numero', StrToInt(edtConfiguraBanco.Text)); }
    { Escreve uma string }
    Reg.WriteString('Dados', edtConfiguraBanco.Text);
    if Reg.KeyExists(chave) then
    begin
      ShowMessage('já existe');
    end
    else
    begin
      ShowMessage('A chave foi criada com sucesso.');
      ConfiguraBanco.Free;
    end;
    { if Reg.CreateKey(chave) then
      begin
      ShowMessage('A chave foi criada com sucesso.');
      end
      else }

  finally
    Reg.Free;

  end
end;
{ chave:
  String;
  reg: TRegistry;
  begin
  // uses Registry

  // vamos definir o nome da chave a ser criada
  chave := 'SYSTEC';

  // vamos criar uma instância da classe TRegistry
  reg := TRegistry.Create;

  // a chave raiz padrão é HKEY_CURRENT_USER mas, por via das dúvidas
  // vamos reafirmar isso
  reg.RootKey := HKEY_CURRENT_USER;

  // vamos criar a chave informada
  if reg.CreateKey(chave) then
  begin
  ShowMessage('A chave foi criada com sucesso.');
  end
  else
  begin
  ShowMessage('Não foi possível criar a chave informada.');
  end;

  // vamos liberar o registro
  reg.Free;
  end; }

end.
