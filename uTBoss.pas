unit uTBoss;

interface

  uses uTPersonagem;

  type TBoss = class (TPersonagem)
    HabilidadeEspecial: String;

    function getDano: Integer;
    procedure setDano(aDano: Integer);
  end;

implementation

{ TBoss }

function TBoss.getDano: Integer;
begin
  Result := Self.Dano;
end;

procedure TBoss.setDano(aDano: Integer);
begin
  Self.Dano := aDano;
end;

end.
