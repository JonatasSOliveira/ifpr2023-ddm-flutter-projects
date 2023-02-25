import 'dart:io';

void executarOperacoesIO() {
  // #region Lendo valor do terminar
  // A partir da versão 2.2 o dart é no safe
  // no safe -> tipos padroes não podem ter valores nulos a menos que seja especificado que ele seja nulo (utilizando o caracterece ? após o tipo)
  // stdin -> Standart Input
  print('Informe o seu nome:');
  String? nome = stdin.readLineSync();
  // uso do caractere ! -> converte o valor que pode ser nulo para não nulo (pode ocorrer problemas na conversão caso vir nulo)
  String podeDarProblema = stdin.readLineSync()!;

  print(nome);
  print(podeDarProblema);
  // #endregion
}
