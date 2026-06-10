Organizando o código para o "Padrão de Mercado"
Para o seu código ficar 100% elegante, profissional e totalmente encapsulado, nós podemos aplicar a mesma lógica do if para o sobrenome.

Veja como fica a classe inteira totalmente protegida:

Dart
class Pessoa {
  // 1. ATRIBUTOS PRIVADOS (Tudo trancado no cofre)
  String _nome = '';
  String _sobrenome = '';

  // 2. CONSTRUTOR
  // Recebe os dados de fora e joga direto para os Setters (os seguranças)
  Pessoa({required String nome, required String sobrenome}) {
    this.nome = nome;
    this.sobrenome = sobrenome;
  }

  // 3. ENCAPSULAMENTO DO NOME
  get nome => this._nome;
  
  set nome(String novoNome) {
    if (novoNome.trim().length >= 3) {
      this._nome = novoNome;
    } else {
      print('Erro: O nome é muito curto.');
    }
  }

  // 4. ENCAPSULAMENTO DO SOBRENOME (Mantendo o IF)
  get sobrenome => this._balancearSobrenome(); // Uma função interna se quisesse
  get sobrenomeExibicao => this._sobrenome; 
  
  // Getter normal
  get sobrenome => this._sobrenome;

  // Setter com validação
  set sobrenome(String novoSobrenome) {
    if (novoSobrenome.trim().isNotEmpty) {
      this._sobrenome = novoSobrenome;
    } else {
      print('Erro: O sobrenome não pode ser vazio.');
    }
  }

  // 5. PROPRIEDADE COMPUTADA
  get nomeCompleto => '${this._nome} ${this._sobrenome}';
}
O que mudou aqui para ficar mais profissional?
.trim() no IF: Usei o .trim(), que remove espaços em branco invisíveis. Assim, se o usuário digitar apenas espaços (ex: "   "), o if vai perceber e vai barrar.

Interpolação de String ('${...}'): No nomeCompleto, troquei as somas (+ ' ' +) por uma sintaxe mais moderna do Dart, usando o símbolo de cifrão. Fica muito mais limpo de ler.

Isso é o encapsulamento puro: quem usa a classe Pessoa não faz a menor ideia de como o nome é validado ou guardado, só sabe que ela funciona perfeitamente e não aceita dados errados.

Deu para sintonizar bem como o if e o encapsulamento andam de mãos dadas?


QUESTIONÁRIO

Tente responder mentalmente ou anotar as respostas antes de olhar o gabarito no final!

Perguntas de Fixação
1. Em Dart, para que serve o caractere underline (_) antes do nome de uma variável ou classe?

a) Para deixar o código mais bonito.

b) Para indicar que a variável é privada e só pode ser acessada dentro do próprio arquivo. 

c) Para obrigar o uso do modificador late.


2. Qual é a principal função da palavra-chave late no Dart?

a) Avisar ao compilador que a variável será inicializada mais tarde, antes de ser usada.

b) Permitir que a variável receba o valor null.

c) Deixar o código rodar mais lento para testes.


3. O que é o "Encapsulamento" na Orientação a Objetos?

a) O ato de juntar várias classes em um único arquivo zipado.

b) Uma técnica para esconder os detalhes internos de um objeto e proteger seus dados através de métodos de acesso seguros.

c) O processo de transformar código Dart em um aplicativo de celular.


4. Para que serve o método get (Getter)?

a) Para alterar o valor de uma variável privada.

b) Para deletar um objeto da memória.

c) Para ler ou recuperar o valor de uma propriedade de forma controlada.


5. Para que serve o método set (Setter)?

a) Para definir ou alterar o valor de uma propriedade, permitindo aplicar validações (como o if).

b) Para configurar as cores da tela do aplicativo.

c) Para criar uma nova lista de dados.


6. No construtor Pessoa({required this.nome}), o que as chaves { } significam?

a) Que o parâmetro é opcional e pode ser ignorado.

b) Que os parâmetros são nomeados, ou seja, você deve passar o nome dele ao criar o objeto (ex: nome: 'Ana').

c) Que o construtor é privado.


7. O que acontece se tentarmos ler uma variável marcada como late antes de dar um valor a ela?

a) Ela retorna o texto "vazio".

b) O programa assume o valor 0.

c) O programa quebra e gera um erro em tempo de execução (Runtime Error).


8. Por que usamos a função .trim() dentro de uma validação de texto (String)?

a) Para converter todas as letras em maiúsculas.

b) Para contar quantas palavras existem no texto.

c) Para remover espaços em branco inúteis no início e no fim do texto.


9. O que é uma "Propriedade Computada" (como o get nomeCompleto)?

a) Uma variável que gasta muita memória do computador.

b) Um getter que não guarda um valor estático, mas calcula o resultado na hora em que é chamado.

c) Uma função que só roda em computadores potentes.


10. Se mudarmos o construtor para receber uma variável limpa e passá-la para this.nome = nome (o setter) em vez de this._nome (a variável direta), o que ganhamos?

a) O código roda mais rápido.

b) Garantimos que o valor passará pelo filtro do if (validação) já no momento da criação do objeto.

c) Economizamos linhas de código.

GABARITO EM BAIXO.



















🔑 Gabarito (Gabarito Oculto)
Respostas Corretas:
1: b | 2: a | 3: b | 4: c | 5: a | 6: b | 7: c | 8: c | 9: b | 10: b