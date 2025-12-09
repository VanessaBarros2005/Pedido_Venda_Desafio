object DataModule1: TDataModule1
  Height = 434
  Width = 658
  PixelsPerInch = 120
  object SQLConnection1: TSQLConnection
    DriverName = 'MySQL'
    LoginPrompt = False
    Params.Strings = (
      'Par'#226'metro,Valor,Objetivo'
      
        'DriverUnit,Data.DBXMSSQL,Unidade do driver SQL Server (Substitui' +
        ' Data.DBXMySQL).'
      'Database,DB_PedidoVenda,Nome do banco que criamos.'
      'HostName,.\SQLEXPRESS01,Inst'#226'ncia local do SQL Server.'
      'OSAuthentication,True,CRUCIAL: Para usar a Autentica'#231#227'o Windows.'
      
        'User_Name,Deixe Vazio,N'#227'o '#233' necess'#225'rio com OSAuthentication=True' +
        '.'
      'Password,Deixe Vazio,N'#227'o '#233' necess'#225'rio com OSAuthentication=True.'
      
        'VendorLib,sqlncli11.dll,(Se necess'#225'rio) DLL de cliente nativo do' +
        ' SQL Server.')
    Left = 160
    Top = 80
  end
end
