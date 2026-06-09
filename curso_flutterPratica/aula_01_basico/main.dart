main() {
  print('========== Exercício 01 ==========');
  print('Meu primeiro comando em dart');

  // Meu primeiro comando em dart
  print('Ola, mundo do Dart!');

  print('========== Exercício 02 ==========');
  print('Criado uma variável do tipo inteiro');

  // Criado uma variável do tipo inteiro
  int ano = 2026;
  print('Estamos no ano de $ano');

  print('========== Exercício 03 ==========');
  print('Criado variável e estrutura condicional if|else');

  // Criado variável e estrutura condicional if|else.
  int numero = 5;

  if (numero % 2 == 0) {
    print('O número $numero é par');
  } else {
    print('O número $numero é impar.');
  }

  print('========== Exercício 04 ==========');
  print('Criado uma lista utilizando a tipo de variável var');

  // Criado uma lista utilizando var, através do (.) ponto acessar métodos para manipulação dos dados.
  var lista = [1, 2, 3];
  print('O números contido na lista é ${lista}');
  print('Qual o tamanho da lista? ${lista.length}');
  print('Existe o número 2 na lista? ${lista.contains(2)}');

  print('------------------------------------------------------');
}
