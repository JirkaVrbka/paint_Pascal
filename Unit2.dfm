object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'N'#225'pov'#283'da'
  ClientHeight = 202
  ClientWidth = 445
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object LblMoznosti: TLabel
    AlignWithMargins = True
    Left = 17
    Top = 18
    Width = 381
    Height = 90
    Alignment = taCenter
    BiDiMode = bdLeftToRight
    Caption = 
      'N'#283'kter'#233' funkce maj'#237' speci'#225'ln'#237' ovl'#225'd'#225'n'#237', pro zobrazen'#237' n'#225'pov'#283'dy k' +
      ' t'#283'mto funkc'#237'm klikn'#283'te prav'#253'm tla'#269#237'ktem na jejich ikonu. Pokud ' +
      'tato n'#225'pov'#283'da nen'#237' p'#345#237'tomna, nebo si i p'#345'es n'#225'pov'#283'du nev'#237'te rady' +
      ', m'#367#382'ete m'#283' kontaktovat na e-mail jiri.vrbka@seznam.cz'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBiDiMode = False
    ParentFont = False
    WordWrap = True
  end
  object Button1: TButton
    Left = 176
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Ok'
    TabOrder = 0
    OnClick = Button1Click
  end
end
