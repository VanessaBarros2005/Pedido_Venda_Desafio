unit UPedidoVenda;

interface

uses
  System.Generics.Collections,
  System.SysUtils,
  UCliente,
  UProduto;

type
  TPedidoItem = class
  private
    FProduto: TProduto;
    FQuantidade: Extended;
    FValorUnitario: Currency;
    FValorTotal: Currency;
  public
    constructor Create;
    destructor Destroy; override;

    property Produto: TProduto read FProduto write FProduto;
    property Quantidade: Extended read FQuantidade write FQuantidade;
    property ValorUnitario: Currency read FValorUnitario write FValorUnitario;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
  end;

  TPedidoItems = class(TObjectList<TPedidoItem>);

  TPedido = class
  private
    FNumeroPedido: Integer;
    FDataEmissao: TDateTime;
    FCliente: TCliente;
    FValorTotal: Currency;
    FItens: TPedidoItems;
  public
    constructor Create;
    destructor Destroy; override;

    property NumeroPedido: Integer read FNumeroPedido write FNumeroPedido;
    property DataEmissao: TDateTime read FDataEmissao write FDataEmissao;
    property Cliente: TCliente read FCliente write FCliente;
    property ValorTotal: Currency read FValorTotal write FValorTotal;
    property Itens: TPedidoItems read FItens;
  end;

implementation

constructor TPedidoItem.Create;
begin
  inherited Create;
  FProduto := TProduto.Create;
end;

destructor TPedidoItem.Destroy;
begin
  FProduto.Free;
  inherited Destroy;
end;

constructor TPedido.Create;
begin
  inherited Create;
  FItens := TPedidoItems.Create(True);
  FDataEmissao := Now;
end;

destructor TPedido.Destroy;
begin
  FItens.Free;
  FCliente.Free;
  inherited Destroy;
end;

end.

