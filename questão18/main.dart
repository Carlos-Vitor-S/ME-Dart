import 'dart:io';

import 'Produto.dart';

void main() {
  Produto produto = new Produto();
  double totalCompras = 0;
  while (true) {
    stdout.write("Qual o nome do produto desejado?: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Qual o preço do produto?: ");
    double preco = double.parse(stdin.readLineSync()!);

    produto.adicionarProduto(nome, preco);
    totalCompras += preco;

    print("Sua lista de compra atual é: ");
    produto.listarCarrinho();
    print("Preço atual é: $totalCompras");

    stdout.write("Deseja continuar comprando? [S] ou [N]");
    String resposta = stdin.readLineSync()![0].toUpperCase();

    if (resposta == "N") {
      break;
    } else {
      print("continuando compras...");
    }
  }
  print("Seu carrinho ficou: ");
  produto.listarCarrinho();
  print("O total de compras ficou: $totalCompras");
}
