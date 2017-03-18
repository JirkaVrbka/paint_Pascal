program GrafickyEditorApp;

uses
  Forms,
  Editor in 'Editor.pas' {Form1},
  Unit2 in '..\grafický editor\graf editor 0.12\Unit2.pas' {Form2},
  Unit3 in '..\grafický editor\graf editor 0.12\Unit3.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
