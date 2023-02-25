void processarInstrucoes() {
  // print('Hello world: ${fundamentos_dart.calculate()}!');

  // print - imprime algo no console
  print('fundamentos de variáveis');

  // #region Tipagens básicas de variáveis
  int idade = 21;
  double peso = 80.5;
  String nome = 'Jonatas';
  String sobrenome = 'Oliveira';
  bool isProgramador = true;

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
  String maiorIdade = 'É maior de idade: ${idade > 18}';
  print(maiorIdade);
  // #endregion

  // #region Quebra de Linhas
  // Obs: caractere \ significa caractere de escape a qual sinaliza que algo deve ser processado
  String linhas = 'Linha1\nLinh 2\nLinha3';
  print(linhas);

  linhas = '''
Linha1
Linha2
Linha3
  ''';
  print(linhas);
  // #endregion
}
