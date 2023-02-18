import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<StatefulWidget> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String _buttonText = 'Confirmar';
  String _name = '';

  void onChangeName(String name) {
    setState(() {
      _name = name;
    });
  }

  void changeButtonText() {
    setState(() {
      _buttonText = _name;
    });

    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(title: const Text('Nome:'), content: Text(_name));
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Cabeçalho
      appBar: AppBar(title: const Text("First Page")),
      body: Center(
        child: Column(children: [
          TextField(
            autofocus: true,
            decoration: const InputDecoration(
                label: Text('Nome'), hintText: 'Informe seu nome'),
            onChanged: onChangeName,
          ),
          ElevatedButton(onPressed: changeButtonText, child: Text(_buttonText))
        ]),
      ),
    );
  }
}
