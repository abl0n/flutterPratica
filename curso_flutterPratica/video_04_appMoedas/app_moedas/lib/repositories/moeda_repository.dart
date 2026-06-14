import 'package:app_moedas/models/moeda.dart';

class MoedaRepository {
  static List<Moeda> tabela = [
    Moeda(
      icone: 'images/m01.png',
      nome: 'Bitcoin',
      sigla: 'BTC',
      preco: 161555.55,
    ),
    Moeda(
      icone: 'images/m02.png',
      nome: 'Moeda2',
      sigla: 'MD2',
      preco: 87796.67,
    ),
    Moeda(
      icone: 'images/m03.png',
      nome: 'Moeda3',
      sigla: 'MD3',
      preco: 16777.67,
    ),
    Moeda(
      icone: 'images/m04.png',
      nome: 'Moeda4',
      sigla: 'MD4',
      preco: 77977.67,
    ),
    Moeda(
      icone: 'images/m05.png',
      nome: 'Moeda5',
      sigla: 'MD5',
      preco: 16789.67,
    ),
  ];
}
