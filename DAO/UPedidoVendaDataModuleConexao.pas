unit UPedidoVendaDataModuleConexao;

interface

uses
  System.SysUtils,
  System.Classes,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef,
  FireDAC.Comp.UI,
  FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat;

type
  TUPedidoDesafioDataModuleConexao = class(TDataModule)
    ConexaoBanco: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    procedure ConexaoBancoAfterConnect(Sender: TObject);
  end;

var
  UPedidoDesafioDataModuleConexao: TUPedidoDesafioDataModuleConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TUPedidoDesafioDataModuleConexao.ConexaoBancoAfterConnect(Sender: TObject);
begin
  ConexaoBanco.ExecSQL('PRAGMA foreign_keys = ON;');
end;

end.


