object Form1: TForm1
  Left = 292
  Top = 267
  Width = 928
  Height = 455
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 8
    Top = 8
    Width = 700
    Height = 400
    TabOrder = 0
    object castle2d1: TImage
      Left = 648
      Top = 0
      Width = 57
      Height = 129
      Visible = False
    end
    object castle2d2: TImage
      Left = 648
      Top = 272
      Width = 57
      Height = 129
      Visible = False
    end
    object location3: TImage
      Left = 0
      Top = 0
      Width = 705
      Height = 401
      Visible = False
    end
    object location2: TImage
      Left = 0
      Top = 0
      Width = 700
      Height = 400
      Visible = False
    end
    object location1: TImage
      Left = 0
      Top = 0
      Width = 700
      Height = 400
    end
    object img2: TImage
      Left = 384
      Top = 168
      Width = 50
      Height = 70
    end
    object wall1: TImage
      Left = 664
      Top = 160
      Width = 42
      Height = 206
    end
    object forest1: TImage
      Left = 0
      Top = 0
      Width = 90
      Height = 400
    end
    object forest1d2: TImage
      Left = 88
      Top = 0
      Width = 609
      Height = 25
    end
    object forest1d3: TImage
      Left = 88
      Top = 368
      Width = 609
      Height = 33
      Enabled = False
    end
    object door2d1: TImage
      Left = 640
      Top = 136
      Width = 25
      Height = 121
      Visible = False
    end
    object npc2d1: TImage
      Left = 600
      Top = 192
      Width = 25
      Height = 35
      Hint = '0'
      Visible = False
    end
    object sword1: TImage
      Left = 104
      Top = 336
      Width = 25
      Height = 25
      Visible = False
    end
    object Label1: TLabel
      Left = 432
      Top = 40
      Width = 209
      Height = 16
      Caption = #1053#1072#1081#1076#1080' '#1084#1077#1095', '#1095#1090#1086#1073#1099' '#1074#1099#1078#1080#1090#1100' '#1074' '#1079#1072#1084#1082#1077'!'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
      Visible = False
    end
  end
  object pnl2: TPanel
    Left = 712
    Top = 8
    Width = 185
    Height = 265
    TabOrder = 1
    object Label2: TLabel
      Left = 104
      Top = 16
      Width = 31
      Height = 13
      Caption = 'Label2'
    end
    object Label3: TLabel
      Left = 16
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Label3'
    end
    object Label4: TLabel
      Left = 104
      Top = 72
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 24
      Top = 176
      Width = 31
      Height = 13
      Caption = 'Label5'
    end
  end
  object btn1: TButton
    Left = 728
    Top = 288
    Width = 50
    Height = 50
    Caption = 'Q'
    TabOrder = 2
  end
  object btn2: TButton
    Left = 784
    Top = 288
    Width = 50
    Height = 50
    Caption = 'W'
    TabOrder = 3
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 840
    Top = 288
    Width = 50
    Height = 50
    Caption = 'E'
    TabOrder = 4
  end
  object btn4: TButton
    Left = 728
    Top = 344
    Width = 50
    Height = 50
    Caption = 'A'
    TabOrder = 5
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 784
    Top = 344
    Width = 50
    Height = 50
    Caption = 'S'
    TabOrder = 6
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 840
    Top = 344
    Width = 50
    Height = 50
    Caption = 'D'
    TabOrder = 7
    OnClick = btn6Click
  end
end
