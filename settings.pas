unit settings;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, IniFiles;

type
  TForm2 = class(TForm)
    pnl1: TPanel;
    btn2: TBitBtn;
    pnl2: TPanel;
    edtPath: TEdit;
    lbl1: TLabel;
    btn1: TSpeedButton;
    procedure btn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    procedure LoadPath;
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  ini: TIniFile;
implementation

{$R *.dfm}

uses main;

procedure TForm2.btn1Click(Sender: TObject);
begin
  if edtPath.Text ='' then
  begin
    edtPath.SetFocus;
    MessageDlg('Enter the path to the folder',mtError,[mbOk],0);
  end
  else
  begin
    ini := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
    //IniFiles.
    try
       ini.writestring('main','path',edtPath.Text);
    finally
      freeAndNil(ini);
    end;
    Close;
  end;

end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Form1.LoadPathIni;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  LoadPath;
end;

procedure TForm2.LoadPath;
begin
    ini := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
    //IniFiles.
    try
       edtPath.Text := ini.Readstring('main','path','');
    finally
       freeAndNil(ini);
    end;
end;

end.
