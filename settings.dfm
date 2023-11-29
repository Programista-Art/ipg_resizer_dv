object Form2: TForm2
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Settings'
  ClientHeight = 84
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 58
    Width = 275
    Height = 26
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 105
    ExplicitWidth = 291
    object btn1: TSpeedButton
      Left = 172
      Top = 1
      Width = 42
      Height = 24
      Align = alRight
      Caption = 'Save'
      OnClick = btn1Click
      ExplicitLeft = 128
    end
    object btn2: TBitBtn
      Left = 214
      Top = 1
      Width = 60
      Height = 24
      Align = alRight
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 228
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 275
    Height = 58
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 289
    ExplicitHeight = 101
    object lbl1: TLabel
      AlignWithMargins = True
      Left = 6
      Top = 6
      Width = 263
      Height = 15
      Margins.Left = 5
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Path to the folder'
      ExplicitWidth = 92
    end
    object edtPath: TEdit
      AlignWithMargins = True
      Left = 6
      Top = 26
      Width = 263
      Height = 23
      Margins.Left = 5
      Margins.Top = 0
      Margins.Right = 5
      Margins.Bottom = 5
      Align = alTop
      TabOrder = 0
      ExplicitLeft = 16
      ExplicitTop = 24
      ExplicitWidth = 121
    end
  end
end
