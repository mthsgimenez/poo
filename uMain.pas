unit uMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    edit_Nome: TEdit;
    edit_Vida: TEdit;
    edit_Dano: TEdit;
    edit_Defesa: TEdit;
    combo_Genero: TComboBox;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uClasses;

procedure TForm1.Button1Click(Sender: TObject);
var personagem: TPersonagem;
var player: TPLayer;
begin
  personagem := TPersonagem.Create(10, 5);
  personagem.getDano;
  personagem.setDano(-10);

//  player := TPlayer.Create(7, 10);
end;

end.
