unit UIPedidoVendaRepository;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Generics.Collections,
  UCliente,
  UProduto,
  UPedidoVenda,
  FireDAC.Comp.Client;

type
  IPedidoVendaRepository = interface
  ['{CAB9D688-DA91-48A2-BCFD-66DC40C481B9}']

    procedure IniciarTransacao;
    procedure ConfirmarTransacao;
    procedure DesfazerTransacao;

    function ObterProximoNumeroPedido: Integer;
    function BuscarClientePorCodigo(const ACodigo: Integer): TCliente;
    function BuscarProdutoPorCodigo(const ACodigo: Integer): TProduto;

    procedure SalvarPedido(APedido: TPedido);
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

end.
