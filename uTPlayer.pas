unit uTPlayer;

interface

  uses uTPersonagem;

  type TPlayer = class (TPersonagem)
    NickName: String;
    Experiencia: Double;

    function getDano: Integer;
    procedure setDano(aDano: Integer);
  end;

implementation

{ TPlayer }

function TPlayer.getDano: Integer;
begin
  Result := Self.Dano;
end;

procedure TPlayer.setDano(aDano: Integer);
begin
  Self.Dano := aDano;
end;

end.
