unit UProduto;

interface

type
  TProduto = class
  private
    FCodigo: Integer;
    FDescricao: string;
    FPrecoVenda: Currency;
  public
    property Codigo: Integer read FCodigo write FCodigo;
    property Descricao: string read FDescricao write FDescricao;
    property PrecoVenda: Currency read FPrecoVenda write FPrecoVenda;

    procedure CopiarDe(AOrigem: TProduto);
  end;

implementation

procedure TProduto.CopiarDe(AOrigem: TProduto);
begin
  if not Assigned(AOrigem) then Exit;

  Codigo     := AOrigem.Codigo;
  Descricao  := AOrigem.Descricao;
  PrecoVenda := AOrigem.PrecoVenda;
end;

end.

