import 'dart:io';
import 'dart:math';

void main() {
  var numeroAleatorio = Random().nextInt(100);
  int intervalorInicial = 0;
  int intervaloFinal = 100;
  //printar o numero secreto apenas para teste
  print("O numero aleatorio é: $numeroAleatorio");

  while (true) {
    stdout.write(
        "Digite um numero para tentar adivinhar: entre $intervalorInicial e $intervaloFinal ");
    int escolherNumero = int.parse(stdin.readLineSync()!);

//Acertar o número aleatorio
    if (escolherNumero == numeroAleatorio) {
      print(
          "===> Voce achou o numero correto! o numero era: $escolherNumero <====");
      break;
    }
    //condição para ver se o numero digitado é maior que o aleaotorio e atualizar o intervalo
    if (escolherNumero > numeroAleatorio) {
      intervaloFinal = escolherNumero;
      print(
          "===> o número está em uma posição MENOR que '$escolherNumero'... tente de novo! <===");
    } else if (escolherNumero < numeroAleatorio) {
      print(
          "===> o número está numa posição MAIOR que '$escolherNumero'... tente de novo! <===");
    }
  }
}
