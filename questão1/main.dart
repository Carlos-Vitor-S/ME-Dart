import 'dart:io';

//Questão 1 da Medida de Eficiência
void main() {
  var boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};
  var pedido = [];
  double valorPedido = 0;

  //Define o total de pedidos a ser feito
  print("====> Bolos Disponiveis <====\n$boloPrecos\n");
  stdout.write("Quantos bolos voce deseja comprar? ");
  int totalBolos = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < totalBolos; i++) {
    print("====> Bolos Disponiveis <====\n$boloPrecos\n");
    stdout.write("Escolha o nome do bolo desejado ");
    String nomeBolo = stdin.readLineSync()!;
    //condição de parada para caso a escolha do bolo não seja compativel com o cardapio
    if (boloPrecos.containsKey(nomeBolo) == false) {
      print("o bolo chamado '$nomeBolo' não existe no cardapio");
      break;
    }
    //percorre os values e keys para procurar o que foi dado como parametro no input
    boloPrecos.forEach((key, value) {
      if (nomeBolo == key) {
        pedido.add(key);
        valorPedido += value;
        print("Lista do seu pedido: $pedido");
        print("Valor do pedido: $valorPedido");
      }
    });
  }
}
