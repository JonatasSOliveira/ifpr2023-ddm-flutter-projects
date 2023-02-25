/* Atividade 01 =  defina variáveis de um produto (com diversos tipos) e imprima
com as devidas descrições */

void processarProduto() {
  print('Produto');
  // #region declaração das variáveis de um produto
  int id = 1;
  String nome = 'Coca-Cola Zero 2L';
  String descricao = 'Refrigerante de Cola Zero Açúcar - 2 Litros';
  double preco = 8.79;
  int qtdeEstoque = 17;
  bool isAtivo = true;
  // #endregion

  // #region Impressão da descrição do produto
  String detalhesProduto = '''
- ID: $id
- Nome: $nome
- Descrição: 
$descricao
- Preço: $preco
- Qtde. em Estoque: $qtdeEstoque
- Produto Ativo: $isAtivo
''';
  print(detalhesProduto);
}
