import 'dart:io';
import 'dart:math';

void main() {
  var numeroAleatorio = Random().nextInt(100);
  List array1 = [];
  List array2 = [];
  List array3 = [];
  List array4 = [];
  List arrayOrdenado = [];

  int somaVetor = 0;

  stdout.write("Qual o tamanho do vetor 1? ");
  int tamanhoVetor1 = int.parse(stdin.readLineSync()!);
  stdout.write("Qual o tamanho do vetor 2? ");
  int tamanhoVetor2 = int.parse(stdin.readLineSync()!);
  stdout.write("Qual o tamanho do vetor 3? ");
  int tamanhoVetor3 = int.parse(stdin.readLineSync()!);
  stdout.write("Qual o tamanho do vetor 4? ");
  int tamanhoVetor4 = int.parse(stdin.readLineSync()!);

  for (var i = 0; i < tamanhoVetor1; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array1.add(numeroAleatorio);
    arrayOrdenado.add(numeroAleatorio);
  }
  for (var i = 0; i < tamanhoVetor2; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array2.add(numeroAleatorio);
    arrayOrdenado.add(numeroAleatorio);
  }
  for (var i = 0; i < tamanhoVetor3; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array3.add(numeroAleatorio);
    arrayOrdenado.add(numeroAleatorio);
  }
  for (var i = 0; i < tamanhoVetor4; i++) {
    var numeroAleatorio = Random().nextInt(100);
    array4.add(numeroAleatorio);
    arrayOrdenado.add(numeroAleatorio);
  }

  arrayOrdenado.sort();
  print("vetor 1: ${array1}");
  print("vetor 2: ${array2}");
  print("vetor 3: ${array3}");
  print("vetor 4: ${array4}");
  print("Vetor 5 contendo todos os outros de forma ordenada ${arrayOrdenado}");
  /*
  int tamanhoVetor1 = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < tamanhoVetor1; i++) {
    array1.add(numeroAleatorio);
  }

  stdout.write("Qual o tamanho do vetor 2? ");
  int tamanhoVetor2 = int.parse(stdin.readLineSync()!);
  for (var i = 0; i < tamanhoVetor2; i++) {
    array.add(numeroAleatorio);
  }*/
}
