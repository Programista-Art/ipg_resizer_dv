object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'JPG resizer DV'
  ClientHeight = 62
  ClientWidth = 273
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poMainFormCenter
  OnCreate = FormCreate
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 33
    Width = 273
    Height = 29
    Align = alBottom
    TabOrder = 0
    object trckbr1: TTrackBar
      Left = 76
      Top = 1
      Width = 196
      Height = 27
      Align = alClient
      Max = 100
      Min = 10
      ParentShowHint = False
      PageSize = 1
      Position = 10
      SelEnd = 100
      SelStart = 10
      ShowHint = True
      TabOrder = 0
      ThumbLength = 10
      TickMarks = tmTopLeft
      TickStyle = tsNone
      OnChange = trckbr1Change
    end
    object btn1: TButton
      Left = 1
      Top = 1
      Width = 75
      Height = 27
      Align = alLeft
      Caption = 'Open'
      TabOrder = 1
      OnClick = btn1Click
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 273
    Height = 33
    Align = alClient
    TabOrder = 1
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 11
      Width = 265
      Height = 15
      Margins.Top = 10
      Margins.Bottom = 10
      Align = alTop
      Alignment = taCenter
      ExplicitWidth = 3
    end
  end
  object OpictureD: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 240
  end
  object SavePictureDialog: TSavePictureDialog
    DefaultExt = '*.jpg'
    FileName = 'photo'
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Left = 192
  end
  object MainMenu1: TMainMenu
    Left = 160
    object F1: TMenuItem
      Caption = 'File'
      object E1: TMenuItem
        Caption = 'Exit'
        OnClick = E1Click
      end
    end
    object S1: TMenuItem
      Caption = 'Settings'
      OnClick = S1Click
    end
    object H1: TMenuItem
      Caption = 'Help'
      object A1: TMenuItem
        Caption = 'About'
        OnClick = A1Click
      end
    end
  end
  object smvrsnf1: TSMVersionInfo
    FileName = 'jpg_resizer_dv.exe'
    Left = 80
    Top = 8
  end
end
