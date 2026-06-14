import 'package:flutter/material.dart';
import 'pages/moedas_page.dart';

class AppMoedas extends StatelessWidget {
  const AppMoedas({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.indigo,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),

      // ADICIONADO NOVAMENTE: Sem isso, o Flutter não sabe o que desenhar na tela!
      home: const MoedasPage(),
    );
  }
}
