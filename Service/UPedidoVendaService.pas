unit UPedidoVendaService;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Generics.Collections,

  UConstantes,
  UIPedidoVendaRepository,
  UPedidoVenda,
  UCliente,
  UProduto,
  UIPedidoVendaService;

type
  TPedidoVendaService = class(TInterfacedObject, IPedidoVendaService)
  private
    FRepository: IPedidoVendaRepository;
  public
    constructor Create(ARepository: IPedidoVendaRepository);

    procedure CalcularTotalPedido(APedido: TPedido);
    procedure AdicionarItem(APedido: TPedido; AProduto: TProduto; AQuantidade: Extended);

    function BuscarCliente(const ACodigo: Integer): TCliente;
    function BuscarProduto(const ACodigo: Integer): TProduto;

    procedure Salvar(APedido: TPedido);
    procedure SalvarNovoCliente(ACliente: TCliente);
    procedure SalvarNovoProduto(AProduto: TProduto);

    procedure AtualizarCliente(ACliente: TCliente);
    procedure AtualizarProduto(AProduto: TProduto);

    procedure ExcluirCliente(const ACodigo: Integer);
    procedure ExcluirProduto(const ACodigo: Integer);

    function CarregarUFs: TStringList;
    function CarregarCidadesPorUF(AUF: string): TStringList;
  end;

implementation

constructor TPedidoVendaService.Create(ARepository: IPedidoVendaRepository);
begin
  FRepository := ARepository;
end;

procedure TPedidoVendaService.AdicionarItem(APedido: TPedido; AProduto: TProduto; AQuantidade: Extended);
var
  LItem: TPedidoItem;
begin
  LItem := TPedidoItem.Create;
  LItem.Produto.CopiarDe(AProduto);
  LItem.Quantidade := AQuantidade;
  LItem.ValorUnitario := AProduto.PrecoVenda;
  LItem.ValorTotal := LItem.Quantidade * LItem.ValorUnitario;

  APedido.Itens.Add(LItem);
  CalcularTotalPedido(APedido);
end;

procedure TPedidoVendaService.AtualizarCliente(ACliente: TCliente);
begin
  FRepository.AtualizarCliente(ACliente);
end;

procedure TPedidoVendaService.AtualizarProduto(AProduto: TProduto);
begin
  FRepository.AtualizarProduto(AProduto);
end;

function TPedidoVendaService.BuscarCliente(const ACodigo: Integer): TCliente;
begin
  Result := FRepository.BuscarClientePorCodigo(ACodigo);
end;

function TPedidoVendaService.BuscarProduto(const ACodigo: Integer): TProduto;
begin
  Result := FRepository.BuscarProdutoPorCodigo(ACodigo);
end;

procedure TPedidoVendaService.CalcularTotalPedido(APedido: TPedido);
var
  LItem: TPedidoItem;
  LTotal: Extended;
begin
  LTotal := ZEROVALUE;
  for LItem in APedido.Itens do
    LTotal := LTotal + LItem.ValorTotal;

  APedido.ValorTotal := LTotal;
end;

function TPedidoVendaService.CarregarUFs: TStringList;
begin
  Result := FRepository.CarregarUFs;
end;

function TPedidoVendaService.CarregarCidadesPorUF(AUF: string): TStringList;
begin
  Result := FRepository.CarregarCidadesPorUF(AUF);
end;

procedure TPedidoVendaService.ExcluirCliente(const ACodigo: Integer);
begin
  FRepository.ExcluirCliente(ACodigo);
end;

procedure TPedidoVendaService.ExcluirProduto(const ACodigo: Integer);
begin
  FRepository.ExcluirProduto(ACodigo);
end;

procedure TPedidoVendaService.Salvar(APedido: TPedido);
begin
  FRepository.SalvarPedido(APedido);
end;

procedure TPedidoVendaService.SalvarNovoCliente(ACliente: TCliente);
begin
  FRepository.SalvarNovoCliente(ACliente);
end;

procedure TPedidoVendaService.SalvarNovoProduto(AProduto: TProduto);
begin
  FRepository.SalvarNovoProduto(AProduto);
end;

end.

