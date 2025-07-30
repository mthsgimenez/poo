unit uTPersonagem;

interface

  type TPersonagem = class
  protected
    Nome: String;
    Vida: Integer;
    Genero: String;
    Nivel: Integer;
    Dano: Integer;
    Defesa: Integer;
  public
    function getDano: Integer;
    procedure setDano(aDano: Integer);
    function getDefesa: Integer;
    procedure setDefesa(aDefesa: Integer);
    function getVida: Integer;
    procedure setVida(aVida: Integer);
    function getNome: String;
    procedure setNome(aNome: String);
    function getNivel: Integer;
    procedure setNivel(aNivel: Integer);
    function getGenero: String;
    procedure setGenero(aGenero: String);
    constructor Create(aDano, aDefesa: Integer);
  end;

implementation

uses SysUtils;

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: Integer);
begin
  Self.Dano := aDano;
  Self.Defesa := aDefesa;
end;

function TPersonagem.getDano: Integer;
begin
  Result := Self.Dano;
end;

function TPersonagem.getDefesa: Integer;
begin
  Result := Self.Defesa + Self.Nivel;
end;

function TPersonagem.getGenero: String;
begin
  Result := Self.Genero;
end;

function TPersonagem.getNivel: Integer;
begin
  Result := self.Nivel;
end;

function TPersonagem.getNome: String;
begin
  Result := self.Nome;
end;

function TPersonagem.getVida: Integer;
begin
  Result := Self.Vida + Self.Defesa;
end;

procedure TPersonagem.setDano(aDano: Integer);
begin
  Self.Dano := aDano;
end;

procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
  if aDefesa < 0 then begin
    raise Exception.Create('Argumento aDefesa não pode ser negativo. TPersonagem.setDefesa');
  end;

  Self.Defesa := aDefesa;
end;

procedure TPersonagem.setGenero(aGenero: String);
begin
  Self.Genero := aGenero;
end;

procedure TPersonagem.setNivel(aNivel: Integer);
begin
  if aNivel < 1 then begin
    raise Exception.Create('Argumento aNivel não pode ser menor que 1. TPersonagem.setNivel');
  end;

  self.Nivel := aNivel;
end;

procedure TPersonagem.setNome(aNome: String);
begin
  if Trim(aNome).Length < 1 then begin
    raise Exception.Create('Argumento aNome não pode ser vazio. TPersonagem.setNome');
  end;
end;

procedure TPersonagem.setVida(aVida: Integer);
begin
  if aVida < 1 then begin
    raise Exception.Create('Argumento aVida deve ser maior que 0. TPersonagem.setVida');
  end;

  Self.Vida := aVida;
end;

end.
