unit uClasses;

interface

  type TPersonagem = class
    Nome: String;
    Vida: Integer;
    Genero: String;
    Nivel: Integer;
    Dano: Integer;
    Defesa: Integer;

    constructor Create(aDano, aDefesa: Integer);
  end;

  type TPlayer = class (TPersonagem)
    NickName: String;
    Experiencia: Double;
  end;

  type TBoss = class (TPersonagem)

  end;

implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
  Self.Dano := aDano;
  Self.Defesa := aDefesa;
end;

end.
