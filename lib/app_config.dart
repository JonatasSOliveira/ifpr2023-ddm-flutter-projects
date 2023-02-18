import 'package:flutter/material.dart';
import 'package:ifpr2023_flutter_example/widgets/calculator.dart';

// Esse widget é o principal da aplicação, onde é chamado ao iniciar a aplicação
// Todo elemento visual em uma tela (inclusive a tela) é chamado de widget
class AppConfig extends StatelessWidget {
  const AppConfig({super.key});

  @override
  Widget build(BuildContext context) {
    // Configurações da aplicação
    return MaterialApp(
      title: 'Flutter Example',
      // Retira/Coloca o rótulo de debug
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // Pagina inicial da aplicação
      home: const Calculator(),
    );
  }
}
