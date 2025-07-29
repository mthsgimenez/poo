object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Button1: TButton
    Left = 240
    Top = 376
    Width = 137
    Height = 41
    Caption = 'Criar personagem'
    TabOrder = 0
    OnClick = Button1Click
  end
  object edit_Nome: TEdit
    Left = 200
    Top = 34
    Width = 216
    Height = 32
    TabOrder = 1
    TextHint = 'Nome'
  end
  object edit_Vida: TEdit
    Left = 200
    Top = 116
    Width = 216
    Height = 32
    NumbersOnly = True
    TabOrder = 2
    TextHint = 'Vida'
  end
  object edit_Dano: TEdit
    Left = 200
    Top = 161
    Width = 216
    Height = 32
    NumbersOnly = True
    TabOrder = 3
    TextHint = 'Dano'
  end
  object edit_Defesa: TEdit
    Left = 200
    Top = 206
    Width = 216
    Height = 32
    NumbersOnly = True
    TabOrder = 4
    TextHint = 'Defesa'
  end
  object combo_Genero: TComboBox
    Left = 200
    Top = 79
    Width = 216
    Height = 23
    TabOrder = 5
    TextHint = 'G'#234'nero'
    Items.Strings = (
      'Masculino'
      'Feminino'
      'Outro')
  end
end
