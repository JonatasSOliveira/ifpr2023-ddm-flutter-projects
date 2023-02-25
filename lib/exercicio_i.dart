import 'dart:io';

/*
Exercício I

Para cada variante de função que estudamos elaborar a seguinte função:

	→ função calularSalario - precisa do (i) valor salario e o (ii) valor do desconto. Permitir o desconto somente se haver saldo. No final informar o saldo.
*/

void calcularSalario1() {
  print('Informe o valor do salário: ');
  double salario = double.parse(stdin.readLineSync()!);
  print('Informe o valor do desconto: ');
  double desconto = double.parse(stdin.readLineSync()!);

  if (desconto > salario) {
    print('O valor do desconto não pode ser maior que o salário');
    desconto = 0;
  }

  double saldo = salario - desconto;
  print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
}

double calcularSalario2() {
  print('Informe o valor do salário: ');
  double salario = double.parse(stdin.readLineSync()!);
  print('Informe o valor do desconto: ');
  double desconto = double.parse(stdin.readLineSync()!);

  if (desconto > salario) {
    print('O valor do desconto não pode ser maior que o salário');
    desconto = 0;
  }

  double saldo = salario - desconto;
  return saldo;
}

void calcularSalario3(double salario, double desconto) {
  if (desconto > salario) {
    print('O valor do desconto não pode ser maior que o salário');
    desconto = 0;
  }

  double saldo = salario - desconto;
  print('Saldo: R\$ ${saldo.toStringAsFixed(2)}');
}

double calcularSalario4(double salario, double desconto) {
  if (desconto > salario) {
    print('O valor do desconto não pode ser maior que o salário');
    desconto = 0;
  }

  double saldo = salario - desconto;
  return saldo;
}

void procesarFuncoes() {
  calcularSalario1();
  print("Saldo: R\$ ${calcularSalario2().toStringAsFixed(2)}");
  calcularSalario3(100, 10);
  print("Saldo: R\$ ${calcularSalario4(100, 10).toStringAsFixed(2)}");
}
