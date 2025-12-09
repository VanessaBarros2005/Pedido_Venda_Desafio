unit UConstantes;

interface

const
  ZERO_VALUE = 0;
  ZEROVALUE = 0.00;
  VAZIO = '';
  EM_BRANCO = '';

  // Cliente
  MSG_CODIGO_CLIENTE_INVALIDO = 'Código de cliente inválido.';
  MSG_CLIENTE_ENCONTRADO = 'Cliente encontrado. Deseja Alterar o cadastro de %s?';
  MSG_CLIENTE_NAO_ENCONTRADO = 'Cliente não encontrado. Deseja Cadastrá-lo agora?';
  MSG_CLIENTE_SALVO = 'Cliente salvo com sucesso!';

  // Produto
  MSG_CODIGO_PRODUTO_NAO_ENCONTRADO = 'Produto não encontrado. Deseja Cadastrá-lo agora.';
  MSG_PRODUTO_SALVO = 'Produto salvo com sucesso!';

  // Validação
  MSG_NOME_OBRIGATORIO = 'O campo Nome/Descrição é obrigatório.';
  MSG_UF_OBRIGATORIA = 'Selecione a UF.';
  MSG_CIDADE_OBRIGATORIA = 'Selecione a Cidade.';

  // Exclusão
  MSG_CONFIRMA_EXCLUSAO = 'Confirma a exclusão deste registro?';
  MSG_EXCLUIDO_SUCESSO = 'Excluído com sucesso!';

  // Pedido
  MSG_PEDIDO_SALVO = 'Pedido salvo com sucesso!';
  MSG_ERRO_SALVAR_PEDIDO = 'Erro ao salvar o pedido: %s';

implementation

end.

