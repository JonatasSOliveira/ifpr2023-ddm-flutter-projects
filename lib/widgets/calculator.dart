import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});

  @override
  State<StatefulWidget> createState() => _CalculatorState();
}

enum CalcOperations { plus, minus, multiply, divide }

// Classe utilizada para gerenciar o state (estado) da tela.
// podendo utilizar variáveis que podem ser alteradas e fazendo a tela
// recarregar os valores visualmente
class _CalculatorState extends State<Calculator> {
  int _num1 = 0;
  int _num2 = 0;
  int _result = 0;

  void onChangeNum1(String num1) {
    setState(() {
      _num1 = int.parse(num1);
    });
  }

  void onChangeNum2(String num2) {
    setState(() {
      _num2 = int.parse(num2);
    });
  }

  void calc(CalcOperations calcOperations) {
    int result = 0;

    switch (calcOperations) {
      case CalcOperations.plus:
        result = _num1 + _num2;
        break;

      case CalcOperations.minus:
        result = _num1 - _num2;
        break;

      case CalcOperations.multiply:
        result = _num1 * _num2;
        break;

      case CalcOperations.divide:
        result = _num1 ~/ _num2;
        break;
    }

    setState(() {
      _result = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Cabeçalho
        appBar: AppBar(title: const Text("Calcular")),
        body: Center(
          child: Center(
            child: Column(children: [
              TextField(
                autofocus: true,
                decoration: const InputDecoration(
                    label: Text('Número 1'), hintText: ''),
                onChanged: onChangeNum1,
              ),
              TextField(
                decoration: const InputDecoration(
                    label: Text('Número 2'), hintText: ''),
                onChanged: onChangeNum2,
              ),
              ElevatedButton(
                  onPressed: () {
                    calc(CalcOperations.plus);
                  },
                  child: const Text('Somar')),
              ElevatedButton(
                  onPressed: () {
                    calc(CalcOperations.minus);
                  },
                  child: const Text('Diminuir')),
              ElevatedButton(
                  onPressed: () {
                    calc(CalcOperations.multiply);
                  },
                  child: const Text('Multiplicar')),
              ElevatedButton(
                  onPressed: () {
                    calc(CalcOperations.divide);
                  },
                  child: const Text('Dividir')),
              const Text("Resultado:"),
              Text('$_result')
            ]),
          ),
        ));
  }
}
