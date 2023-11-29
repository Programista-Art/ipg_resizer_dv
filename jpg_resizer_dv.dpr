program jpg_resizer_dv;

uses
  Vcl.Forms,
  main in 'main.pas' {Form1},
  settings in 'settings.pas' {Form2},
  Vcl.Themes,
  Vcl.Styles,
  about in 'about.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Smokey Quartz Kamri');
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
