object Form1: TForm1
  Left = 303
  Top = 42
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
    object img1: TImage
      Left = 0
      Top = 0
      Width = 700
      Height = 400
    end
    object img2: TImage
      Left = 298
      Top = 132
      Width = 50
      Height = 70
    end
    object wall1: TImage
      Left = 444
      Top = 22
      Width = 30
      Height = 200
    end
  end
  object pnl2: TPanel
    Left = 712
    Top = 8
    Width = 185
    Height = 265
    TabOrder = 1
    object Label1: TLabel
      Left = 40
      Top = 16
      Width = 3
      Height = 13
    end
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
      Left = 24
      Top = 120
      Width = 31
      Height = 13
      Caption = 'Label4'
    end
    object Label5: TLabel
      Left = 24
      Top = 176
      Width = 49
      Height = 17
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
