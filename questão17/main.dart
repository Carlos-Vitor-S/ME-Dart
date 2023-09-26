import 'dart:io';
import 'dart:math';

void main() {
  var numeroAleatorio = Random().nextInt(100);

  List array1 = [];
  List array2 = [];
  List arraySoma = [];

  int somaFinal = 0;
  int soma1 = 0;
  int soma2 = 0;

  stdout.write("Qual o tamanho do vetor 1? ");
  int tamanhoVetor1 = int.parse(stdin.readLineSync()!);
  stdout.write("Qual o tamanho do vetor 2? ");
  int tamanhoVetor2 = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < tamanhoVetor1; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array1.add(numeroAleatorio);
    soma1 += numeroAleatorio;
  }
  for (var i = 0; i < tamanhoVetor2; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array2.add(numeroAleatorio);
    soma2 += numeroAleatorio;
  }
  arraySoma.addAll([soma1, soma2]);

  for (int element in arraySoma) {
    somaFinal += element;
  }

  print("vetor 1: ${array1}");
  print("vetor 2: ${array2}");
  print("vetor 3 contendo a soma dos outros: ${arraySoma}");
  print("Soma do vetor 3: ${somaFinal}");
}
