object Form3: TForm3
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'About'
  ClientHeight = 150
  ClientWidth = 275
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  TextHeight = 15
  object pnl1: TPanel
    Left = 0
    Top = 124
    Width = 275
    Height = 26
    Align = alBottom
    TabOrder = 0
    ExplicitTop = 120
    ExplicitWidth = 273
    object btn1: TBitBtn
      Left = 199
      Top = 1
      Width = 75
      Height = 24
      Align = alRight
      Kind = bkClose
      NumGlyphs = 2
      TabOrder = 0
      ExplicitLeft = 197
    end
  end
  object pnl2: TPanel
    Left = 0
    Top = 0
    Width = 275
    Height = 124
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 273
    ExplicitHeight = 120
    object mmo1: TMemo
      Left = 1
      Top = 1
      Width = 273
      Height = 122
      Align = alClient
      Alignment = taCenter
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      Lines.Strings = (
        'Program created in Delphi 11'
        'By Dmitriy Vygovskiy'
        'Artist and Programmer from Poland.'
        'First Version created'
        '07.23.2023y')
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      ExplicitWidth = 271
      ExplicitHeight = 118
    end
  end
end
