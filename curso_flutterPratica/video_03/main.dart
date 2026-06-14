import 'cartao.dart';
import 'cliente.dart';
import 'compra.dart';
import 'conta.dart';
import 'fatura.dart';

main() {
  // ignore: unused_local_variable
  var conta = Conta(
    cliente: Cliente(
      id: '123',
      cpf: '1231312313',
      nome: 'João',
      sobrenome: 'Silva',
    ),
    cartao: Cartao(
      limite: 250,
      numero: '123133456123',
      mes: 06,
      ano: 2006,
      codigo: 123,
    ),
    faturas: [
      Fatura(
        compras: [
          Compra(valor: 250, descricao: 'mercado', data: '12/06'),
          Compra(valor: 151, descricao: 'Medico', data: '05/06'),
        ],
        mes: 06,
        ano: 2026,
      ),
    ],
  );
}
