// Criado classe Pessoa
class Pessoa {
  // Inicializamos com um texto vazio para evitar erros de 'late'
  String _nome = '';
  late String sobrenome;

  get nome => this._nome;

  // O novo SET com o IF dentro
  set nome(String n) {
    if (n.length >= 3) {
      this._nome = n;
    } else {
      print('Erro: O nome "$n" é muito curto e não foi aceito.');
    }
  }

  get nomeCompleto => this._nome + ' ' + this.sobrenome;

  // Modificamos o construtor para usar o método 'nome' (o setter)
  // em vez de injetar direto na variável privada, assim ele já valida na criação!
  Pessoa({required String nome, required this.sobrenome}) {
    this.nome = nome;
  }
}
