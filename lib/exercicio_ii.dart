import 'dart:io';

/*
Exercício II

Pensar em um projeto único - quanto maior o escopo melhor - possibilita pensar em vários exemplos

Elabroar funções no escopo do projeto (autêntico)

Fazer comentários de tudo que entendeu

Elabore: 

1) Duas funções sem retorno e sem parâmetro; 

2) Duas funções sem retorno e com parâmetro; 

3) Duas funções com retorno e sem parâmetro;  

4) Duas funções com retorno e com parâmetro;

5) Duas funções com parâmetros opcionais (com o devido contexto);

6) Duas funções com parâmetros nomeados.
*/

/*
Projeto escolhido: chefpatner
Breve descrição:
  
*/

// #region arr variaveís produto
var arrIdsProdutos = [];
var arrNomesProdutos = [];
var arrDescricoesProdutos = [];
var arrPrecosProdutos = [];
var arrQtdeEstoqueProdutos = [];
var arrIsAtivoProdutos = [];
// #endregion

// 1º função sem retorno e sem parâmetros:
void iniciarAplicacao() {
  while (true) {
    print('''
OPÇÕES:
1 - CADASTRAR PRODUTO
2 - ALTERAR PRODUTO
3 - LISTAR PRODUTOS CADASTRADOS
4 - APLICAR DESCONTO PRODUTO
0 - SAIR
ESCOLHA A OPÇÃO:''');
    String? opcaoEscolhida = stdin.readLineSync();

    if (opcaoEscolhida == '0') {
      break;
    }

    executarOpcaoEscolhida(opcaoEscolhida);
  }
}

// 1º função com parâmetros opcionais:
void executarOpcaoEscolhida([String? opcaoEscolhida]) {
  switch (opcaoEscolhida) {
    case '1':
      exibirFomularioProduto();
      break;

    case '2':
      exibirFomularioProduto(recuperarIdProdutoAlteracao());
      break;

    case '3':
      exibirListaProdutos();
      break;

    case '4':
      requisitarValorDesconto(recuperarIdProdutoAlteracao());
      break;

    default:
      print('OPÇÃO INVÁLIDA');
      break;
  }
}

// 1º função com retorno e sem parâmetros:
int gerarIdProduto() {
  return arrIdsProdutos.length + 1;
}

// 1º função com parâmtros nomeados:
void cadastrarProduto(
    {required String nome,
    required String descricao,
    required double preco,
    required int qtdeEstoque,
    required bool isAtivo}) {
  arrIdsProdutos.add(gerarIdProduto());
  arrNomesProdutos.add(nome);
  arrDescricoesProdutos.add(descricao);
  arrPrecosProdutos.add(preco);
  arrQtdeEstoqueProdutos.add(qtdeEstoque);
  arrIsAtivoProdutos.add(isAtivo);
}

// 2º função com parâmtros nomeados:
void alterarProduto(id,
    {String? nome,
    String? descricao,
    double? preco,
    int? qtdeEstoque,
    bool? isAtivo}) {
  int index = arrIdsProdutos.indexOf(id);
  if (nome != null) arrNomesProdutos[index] = nome;
  if (descricao != null) arrDescricoesProdutos[index] = descricao;
  if (preco != null) arrPrecosProdutos[index] = preco;
  if (qtdeEstoque != null) arrQtdeEstoqueProdutos[index] = qtdeEstoque;
  if (isAtivo != null) arrIsAtivoProdutos[index] = isAtivo;
}

// 2º função com retorno e sem parâmetros:
int recuperarIdProdutoAlteracao() {
  print('Informe o ID do produto a ser alterado: ');
  int id = int.parse(stdin.readLineSync()!);
  return id;
}

// 1º função com retorno e com parâmetros:
bool verificarProdutoIsAtivoInput(String entrada) {
  return entrada.toUpperCase() == 'S';
}

// 2º função com parâmetros opcionais:
void exibirFomularioProduto([int? id]) {
  // #region variaveis produto
  String nome = '';
  String descricao = '';
  double preco = 0;
  int qtdeEstoque = 0;
  bool isAtivo = true;
  // #endregion

  // #region inputs produto
  print('\n|  FOMULÁRIO DE PRODUTO  |');
  print('Informe o nome do produto: ');
  nome = stdin.readLineSync()!;
  print('Informe a descrição do produto: ');
  descricao = stdin.readLineSync()!;
  print('Informe o preço do produto: ');
  preco = double.parse(stdin.readLineSync()!);
  print('Informe a quantidade em estoque do produto: ');
  qtdeEstoque = int.parse(stdin.readLineSync()!);
  print('Informe se o produto está ativo ou não: (S/N)');
  isAtivo = verificarProdutoIsAtivoInput(stdin.readLineSync()!);
  // #endregion

  // #region manipulação produto
  if (id != null) {
    alterarProduto(
      id,
      nome: nome,
      descricao: descricao,
      preco: preco,
      qtdeEstoque: qtdeEstoque,
      isAtivo: isAtivo,
    );
    print('\n| PRODUTO ALTERADO COM SUCESSO |');
    return;
  }

  cadastrarProduto(
    nome: nome,
    descricao: descricao,
    preco: preco,
    qtdeEstoque: qtdeEstoque,
    isAtivo: isAtivo,
  );
  print('\n|  PRODUTO CADASTRADO COM SUCESSO!  |');
  // #endregion
}

// 2º função sem retorno e sem parâmetros:
void exibirListaProdutos() {
  print('\n|  RELATÓRIO DE PRODUTOS  |');
  for (var i = 0; i < arrIdsProdutos.length; i++) {
    exibirRelatorioProduto(
        arrIdsProdutos[i],
        arrNomesProdutos[i],
        arrDescricoesProdutos[i],
        arrPrecosProdutos[i],
        arrQtdeEstoqueProdutos[i],
        arrIsAtivoProdutos[i]);
  }
  print('|  FIM RELATÓRIO DE PRODUTOS  |\n');
}

// 3º função sem retorno e com parâmetro:
void exibirRelatorioProduto(int id, String nome, String descricao, double preco,
    int qtdeEstoque, bool isAtivo) {
  print('------------');
  print('ID: $id');
  print('Nome: $nome');
  print('Descrição: $descricao');
  print('Preço: R\$ $preco');
  print('Quantidade em estoque: $qtdeEstoque');
  print('Está ativo: $isAtivo');
}

// 2º função com retorno e com parâmetros:
double recuperarPrecoProduto(int id) {
  return arrPrecosProdutos[id - 1];
}

// 3º função sem retorno e sem parâmetros:
void requisitarValorDesconto(int id) {
  double valorPrecoProduto = recuperarPrecoProduto(id);

  print('\n|  DESCONTO DO PRODUTO  |');
  print('Preço atual do produto: R\$ $valorPrecoProduto');
  print('Informe o valor do desconto: ');
  double valorDesconto = double.parse(stdin.readLineSync()!);
  double novoPrecoProduto = valorPrecoProduto - valorDesconto;
  print('Novo preço: R\$ $novoPrecoProduto');

  alterarProduto(id, preco: novoPrecoProduto);
  print('|  PRODUTO ALTERADO COM SUCESSO!  |\n');
}
