object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 708
  ClientWidth = 830
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 400
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Memo1: TMemo
    Left = 24
    Top = 47
    Width = 353
    Height = 330
    Lines.Strings = (
      '['
      '          {'
      '            "seq": "1",'
      '            "mac": "80:EA:CA:00:02:50",'
      '            "serial": "BK1A01A00A00173",'
      '            "channel": "'#44060#48156'"'
      '          },'
      '          {'
      '            "seq": "2",'
      '            "mac": "80:EA:CA:00:02:50",'
      '            "serial": "BK1A01A00A00173",'
      '            "channel": "'#50689#50629'"'
      '          },'
      '          {'
      '            "seq": "3",'
      '            "mac": "80:EA:CA:00:02:50",'
      '            "serial": "BK1A01A00A00173",'
      '            "channel": "'#44368#50977'"'
      '          }'
      ']')
    TabOrder = 1
  end
  object Memo2: TMemo
    Left = 501
    Top = 47
    Width = 321
    Height = 642
    Lines.Strings = (
      'Memo2')
    TabOrder = 2
  end
  object Memo3: TMemo
    Left = 24
    Top = 408
    Width = 353
    Height = 292
    Lines.Strings = (
      '{'
      '  "person" : {'
      '     "ID" : "id1234",'
      '     "Hp" : "010-5555-6666",'
      '     "Add" : {'
      '        "City" : "Seoul",'
      '        "PNo" : "1234",'
      '        "Detail" : "K-Building 123"'
      '       }'
      '   },'
      ''
      '   "Dept" : {'
      '     "Did" : "did_abcd",'
      '     "DName" : "System Dev"'
      '   } '
      '}')
    TabOrder = 3
  end
  object Button2: TButton
    Left = 408
    Top = 520
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 4
  end
end
