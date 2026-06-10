import 'pessoa.dart';

main() {
  Pessoa joao = Pessoa(nome: 'João', sobrenome: 'Silva');
  Pessoa nome2 = Pessoa(nome: 'Jô', sobrenome: 'Tau');

  print('O nome é ${joao.nomeCompleto}');
  print('O nome completo de ${nome2.nomeCompleto}');
}
