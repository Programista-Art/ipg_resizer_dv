unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, jpeg, Vcl.ExtDlgs,
  Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Menus, IniFiles, VersInfo;

type
  TForm1 = class(TForm)
    OpictureD: TOpenPictureDialog;
    SavePictureDialog: TSavePictureDialog;
    pnl1: TPanel;
    trckbr1: TTrackBar;
    btn1: TButton;
    pnl2: TPanel;
    lbl1: TLabel;
    MainMenu1: TMainMenu;
    F1: TMenuItem;
    E1: TMenuItem;
    S1: TMenuItem;
    H1: TMenuItem;
    A1: TMenuItem;
    smvrsnf1: TSMVersionInfo;
    procedure btn1Click(Sender: TObject);
    procedure trckbr1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure A1Click(Sender: TObject);
  private
    { Private declarations }
    procedure compressionJPG;
    procedure SprawdzamPath;
  public
    { Public declarations }
    procedure LoadPathIni;
  end;

var
  Form1: TForm1;
  count: Integer;
  Procent: Integer;
  ini: TIniFile;
  PathFolder: string;
implementation

uses
  settings, about;

{$R *.dfm}

procedure TForm1.A1Click(Sender: TObject);
begin
  Form3.ShowModal;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  compressionJPG;
end;

procedure TForm1.compressionJPG;
var
  OriginalImage: TJPEGImage;
  CompressedImage: TJPEGImage;
  com: Integer;
  FilePath: string;
begin
  if OpictureD.Execute then
  begin
      com := trckbr1.Position;
      OriginalImage := TJPEGImage.Create;
      CompressedImage := TJPEGImage.Create;
      try
        btn1.Enabled:= False;
        OriginalImage.LoadFromFile(OpictureD.FileName);

        // Здесь можно применить алгоритм сжатия (например, изменить качество и т.д.)
        // Ниже приведен пример сжатия с 50% качества:
        try

        CompressedImage.Assign(OriginalImage);
        //CompressedImage.CompressionQuality := 50;
        CompressedImage.CompressionQuality := com;
        CompressedImage.Compress;
        ShowMessage('Image quality ' + IntToStr(com) +'%');
        lbl1.Caption := 'Image quality ' + IntToStr(com) +'%';
        SprawdzamPath;
        FilePath := IncludeTrailingPathDelimiter(PathFolder) + 'Photo_' + intToSTr(com) +'%_' + intToStr(count) + '.jpg';
        CompressedImage.SaveToFile(FilePath);
        if SavePictureDialog.Execute then
        CompressedImage.SaveToFile(SavePictureDialog.FileName);
        // Увеличим счетчик для следующего сохранения
        Inc(Count);
        except
          showmessage('Failed!');
        end;
      finally
        OriginalImage.Free;
        CompressedImage.Free;
        btn1.Enabled:= True;

      end;
    end;
end;

procedure TForm1.E1Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Form1.Caption := 'JPG resizer DV ' + smvrsnf1.FileVersion;
  count := 0;
  LoadPathIni;
end;

procedure TForm1.LoadPathIni;
begin
    ini := TiniFile.Create(ExtractFilePath(Application.ExeName) + 'config.ini');
    //IniFiles.
    try
       PathFolder := ini.Readstring('main','path','');
    finally
       freeAndNil(ini);
    end;
end;

procedure TForm1.S1Click(Sender: TObject);
begin
  Form2.ShowModal;
end;

procedure TForm1.SprawdzamPath;
begin
  if PathFolder = '' then
  begin
    ShowMessage('Choose a folder to save the image in the application settings.');
    Exit;
  end;
  if not DirectoryExists(PathFolder) then
  begin
    ShowMessage('The selected folder does not exist. Choose a different folder in the app settings.');
    Exit;
  end;
end;

procedure TForm1.trckbr1Change(Sender: TObject);
begin
Procent := trckbr1.Position;
lbl1.Caption := 'Image quality ' + intToStr(Procent) +'%'; 

end;

end.
