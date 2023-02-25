import 'dart:io';

/* 
Atividade 03 - ao invés de atribuir valores solicte dados
string para int - int.parse()
String para double - double.parse()
int para string - variavel.toString()
*/

void processarProduto() {
  int id = 1;

  print('Informe o nome do produto:');
  String nome = stdin.readLineSync()!;
  print('Informe a descricao do produto:');
  String descricao = stdin.readLineSync()!;
  print('Informe o preço do produto:');
  double preco = double.parse(stdin.readLineSync()!);
  print('Informe a qtde em estoque do produto:');
  int qtdeEstoque = int.parse(stdin.readLineSync()!);
  print('Informe se o produto está ativo: (S/N)');
  bool isAtivo = stdin.readLineSync()!.toUpperCase() == 'S';

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
