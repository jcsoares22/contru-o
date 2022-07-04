unit ConfigBanco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmConfiguraBanco = class(TForm)
    btnSave: TButton;
    edtConfiguraBanco: TEdit;
    OpenDialogBanco: TOpenDialog;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure btnSaveClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmConfiguraBanco: TfrmConfiguraBanco;

implementation

{$R *.dfm}

uses Registry, Login;

procedure TfrmConfiguraBanco.btnSaveClick(Sender: TObject);

var
  chave: String;
  Reg: TRegistry;
  nomeBanco: String;
begin
  // verificaBanco;
  Reg := TRegistry.Create;
  try
    //
    // verificaBanco;
    if edtConfiguraBanco.Text <> '' then
    begin
      // edtConfiguraBanco.Text := Reg.ReadString('Dados');
      { Define a chave-raiz do registro }
      Reg.RootKey := HKEY_CURRENT_USER;
      // Reg.RootKey := HKEY_CURRENT_USER;
      chave := 'SYSTEC';

      { Abre a chave (path). Se não existir, cria e abre. }
      Reg.OpenKey('SYSTEC\Conexao', True);
      { Escrevendo uma Strinf }
      Reg.WriteString('Dados', edtConfiguraBanco.Text);
      ShowMessage('Salvo com sucesso');
      nomeBanco := edtConfiguraBanco.Text;

    end;
    { else
      ShowMessage('Informe o nome do banco de dados'); }
  finally
    Reg.Free;
    close;
    // FreeAndNil(frmConfiguraBanco);
    // Close;
  end;
end;

procedure TfrmConfiguraBanco.Button1Click(Sender: TObject);
begin
  if OpenDialogBanco.Execute = True then
  begin
    edtConfiguraBanco.Text := OpenDialogBanco.FileName;
  end;
end;

end.
