Video 3
Entenda como o Flutter funciona pela Composição

Simulação de um sistema de cartão de crédito

Será utilizado o código do video 2 arquivos main.dart e pessoa.dart como base.
Criado estrutura simples para entendimento.


Criado arquivos:
    1 - pessoa.dart classe abstrata
        nome
        sobrenome

    2 - cliente.dart
        id
        cpf
        nome        herança
        sobrenome   herança

    3 - cartao.dart
        limite
        numero 
        mes
        ano 
        codigo

    4 - compra.dart
        valor
        descricao
        data

    5 - fatura.dart
        list<compra>
        mes
        ano
    
    6 - conta.dart
        cliente
        cartao
        list<fatura>

    main.dart
    


// IMPORTAÇÕES
// Aqui o código está trazendo as definições das classes que foram criadas em outros arquivos.
// Sem isso, o Dart não saberia o que é um 'Cliente', 'Cartao', etc.
import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';

/// A função `main()` é o ponto de entrada do programa. 
/// Tudo começa a ser executado a partir daqui.
main() {
  
  // Instanciação (criação) do objeto 'conta' da classe 'Conta'.
  // Nota-se o uso de "Parâmetros Nomeados" (ex: cliente: ..., cartao: ...),
  // o que deixa a leitura do código muito mais clara.
  var conta = Conta(
    
    // Composição: A conta POSSUI um Cliente.
    // Aqui estamos criando o objeto Cliente diretamente dentro do construtor da Conta.
    cliente: Cliente(
      id: '123',
      cpf: '1231312313',
      nome: 'João',
      sobrenome: 'Silva',
    ),
    
    // Composição: A conta também POSSUI um Cartao.
    cartao: Cartao(
      limite: 250,
      numero: '123133456123',
      mes: 06,
      ano: 2006,
      codigo: 123,
    ),
    
    // Relacionamento Um-para-Muitos: Uma conta possui uma LISTA de faturas.
    // O uso de colchetes `[]` indica que estamos passando uma List em Dart.
    faturas: [
      Fatura(
        // Outro relacionamento de Um-para-Muitos: Uma fatura possui uma LISTA de compras.
        compras: [
          // Instanciando a primeira compra da lista
          Compra(valor: 250, descricao: 'mercado', data: '12/06'),
          // Instanciando a segunda compra da lista
          Compra(valor: 151, descricao: 'Medico', data: '05/06'),
        ],
        mes: 06,
        ano: 2026,
      ),
    ],
  );
  
}