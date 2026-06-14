import 'package:app_moedas/repositories/moeda_repository.dart';
import 'package:flutter/material.dart';

class MoedasPage extends StatelessWidget {
  const MoedasPage({super.key});

  @override
  Widget build(BuildContext context) {
    final tabela = MoedaRepository.tabela;
    return Scaffold(
      appBar: AppBar(
        // CORRIGIDO: Buscando a cor dinâmica baseada no seu ColorScheme
        backgroundColor: Theme.of(context).colorScheme.primaryContainer,
        // Opcional: Garante que o texto da AppBar mude de cor para contrastar bem com o fundo
        foregroundColor: Theme.of(context).colorScheme.onPrimaryContainer,

        title: const Center(child: Text('Cripto Moedas')),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int moeda) {
          return ListTile(
            leading: Image.asset(tabela[moeda].icone),
            title: Text(tabela[moeda].nome),
            trailing: Text(tabela[moeda].preco.toString()),
          );
        },
        padding: EdgeInsets.all(16),
        separatorBuilder: (_, _) => Divider(),
        itemCount: tabela.length,
      ),
    );
  }
}
