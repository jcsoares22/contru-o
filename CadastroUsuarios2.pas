unit CadastroUsuarios2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, CadastroPaiPrincipal, Data.DB,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, DMDados,
  Vcl.Mask, Vcl.DBCtrls;

type
  TfrmCadastroUsuario2 = class(TfrmCadastroPai)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DB_Nome: TDBEdit;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit4: TDBEdit;
    Label4: TLabel;
    DBEdit5: TDBEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    PageControl1: TPageControl;
    Geral: TTabSheet;
    Preferencia: TCheckBox;
    dministrador: TCheckBox;
    Usuario: TCheckBox;
    DBCheckBox_administrador: TDBCheckBox;
    DBCheckBoxPreferencia: TDBCheckBox;
    Manuteção_usuario: TDBCheckBox;
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroUsuario2: TfrmCadastroUsuario2;

implementation

{$R *.dfm}
end.
