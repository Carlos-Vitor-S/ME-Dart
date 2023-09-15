import 'dart:io';

void main() {
  stdout.write("Digite um numero: ");
  int numero = int.parse(stdin.readLineSync()!);
  String numeroString = numero.toString();

  print("Numero digitado foi: ${numero}");
  print("Numero ao contrario: " + numeroString.split("").reversed.join());
}
