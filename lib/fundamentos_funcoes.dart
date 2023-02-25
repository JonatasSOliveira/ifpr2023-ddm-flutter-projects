import 'dart:io';

// Não é necessário explicitar o tipo de retorno da função
// Porém é bem importante que seja explicitado por boas práticas e evitar problemas no desenvolvimento
funcaoTeste() {
  print('Eu funciono!');
}

void executarFuncoes() {
  funcaoTeste();
  calcularMedia();
}

void calcularMedia() {
  print('Infome a nota1:');
  double nota1 = double.parse(stdin.readLineSync()!);
  print('Informe a nota2:');
  double nota2 = double.parse(stdin.readLineSync()!);

  double media = (nota1 + nota2) / 2;

  if (media >= 6) {
    print('Aprovado!');
  } else {
    print('Reprovado!');
  }
}
