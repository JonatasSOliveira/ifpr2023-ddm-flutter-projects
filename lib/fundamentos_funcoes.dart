import 'dart:io';

// Não é necessário explicitar o tipo de retorno da função
// Porém é bem importante que seja explicitado por boas práticas e evitar problemas no desenvolvimento
funcaoTeste() {
  print('Eu funciono!');
}

void executarFuncoes() {
  funcaoTeste();
  verificarAprovacao1();
  verificarAprovacao2(10, 7);
  print(verificarAprovacao3());
  print(verificarAprovacao4(10, 7));
}

// Função sem retorno e sem parâmetro
void verificarAprovacao1() {
  print('Infome a nota1:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Informe a nota2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  // Operador ternário
  print(media >= 6 ? 'Aprovado!' : 'Reprovado!');
}

// Função sem retorno e com parâmetros
void verificarAprovacao2(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print(media >= 6 ? 'Aprovado!' : 'Reprovado!');
}

// Função com retorno e sem parâmetros
String verificarAprovacao3() {
  print('Infome a nota1:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Informe a nota2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  // Operador ternário
  return media >= 6 ? 'Aprovado!' : 'Reprovado!';
}

String verificarAprovacao4(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  return media >= 6 ? 'Aprovado!' : 'Reprovado!';
}
