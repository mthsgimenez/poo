program ProjetoPoo;

uses
  Vcl.Forms,
  uMain in 'uMain.pas' {Form1},
  uTPersonagem in 'uTPersonagem.pas',
  uTPlayer in 'uTPlayer.pas',
  uTBoss in 'uTBoss.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
