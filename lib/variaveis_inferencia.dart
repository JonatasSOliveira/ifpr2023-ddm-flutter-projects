void processarInstrucoes() {
  // print('Hello world: ${fundamentos_dart.calculate()}!');

  // print - imprime algo no console
  print('fundamentso de variáveis');

  // #region Tipagens por inferência
  // Obs: Uma vez tipado por inferência, não pode ser alterado o tipo
  // Var é melhor usado somente quando não se sabe o valor de entrada
  // Var é um pouco pior´em desempenho (mas é um tempo minúsculo)
  var idade = 21;
  //  idade = 'teste de erro'; -> Não pode ser alterado o valor após a inferência
  var peso = 80.5;
  var nome = 'Jonatas';
  var sobrenome = 'Oliveira';
  var isProgramador = true;

  print(idade);
  print(nome);
  // #endregion

  // #region Concatenação de variaveís
  print(nome + ' ' + sobrenome);
  String scriptInsert = 'INSERT INTO pessoa (nome, sobrenome)' +
      ' VALUES (\'' +
      nome +
      '\', \'' +
      sobrenome +
      '\')';
  print(scriptInsert);
  // #endregion

  // #region Interpoção de variáveis (palavras simples)
  scriptInsert =
      'INSERT INTO pessoa (nome, sobrenome) VALUES (\'$nome\', \'$sobrenome\')';
  print(scriptInsert);
  // #endregion

  // #region Interpolação com processamento de expressão
  var maiorIdade = 'É maior de idade: ${idade > 18}';
  print(maiorIdade);
  // #endregion

  // #region Quebra de Linhas
  // Obs: caractere \ significa caractere de escape a qual sinaliza que algo deve ser processado
  var linhas = 'Linha1\nLinh 2\nLinha3';
  print(linhas);

  linhas = '''
Linha1
Linha2
Linha3
  ''';
  print(linhas);
  // #endregion
}
