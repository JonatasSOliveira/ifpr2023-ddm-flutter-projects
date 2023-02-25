import 'package:fundamentos_dart/atividade_variaveis_produto.dart'
    as variaveis_produto;

/* Atividade 02 - conforme o seu projeto particular, defina as variaveis
de  um molo e imprima na na tela */

// Projeto - ChefPatner
/* Como o meu projeto se consiste em um gerenciador de pedidos de delivery e
vou reutilizar o produto do outro arquivo e criar mais dois modelos*/

void processarModelos() {
  variaveis_produto.processarProduto();
  processarCliente();
  processarEnderecoCliente();
}

void processarCliente() {
  print('Cliente');
  // #region Declaração variáveis cliente
  int id = 1;
  String nome = 'JONATAS DA SILVA DE OLIVEIRA';
  String docFederal = '25379822070'; // CPF FICTÍCIO
  bool isAtivo = true;
  // #endregion

  String detalhesCliente = '''
- ID: $id
- Nome: $nome
- Doc. Federal: $docFederal
- Ativo: $isAtivo
''';
  print(detalhesCliente);
}

void processarEnderecoCliente() {
  print('ENDEREÇO CLIENTE');
  // #region Declaração variáveis cliente
  int id = 1;
  int idCliente = 1;
  String uf = 'UF';
  String cidade = 'CIDADE SEM NOME';
  String bairro = 'BAIRRO SEM NOME';
  String logradouro = 'RUA SEM NOME';
  String numero = '777';
  String complemento = 'ESQUINA COM OUTRA RUA SEM NOME';
  // #endregion

  String detalhesEnderecoCliente = '''
- ID: $id
- ID CLIENTE: $idCliente
- UF: $uf
- Cidade: $cidade
- Bairro: $bairro
- Logradouro: $logradouro
- Nº: $numero
- Complemento: $complemento
''';
  print(detalhesEnderecoCliente);
}
