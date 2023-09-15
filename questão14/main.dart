import 'dart:io';

void main() {
  List<int> primeiroVetor = [];
  List<int> segundoVetor = [];
  List<int> terceiroVetor = [];

  //Definir tamanho do vetor 1 e adicionar valores
  stdout.write("Qual o tamanho do vetor 1?: ");
  int tamanhoVetor1 = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < tamanhoVetor1; i++) {
    stdout.write("Adicionar numero ao primeiro vetor: ");
    int numeroPrimeiroVetor = int.parse(stdin.readLineSync()!);

    primeiroVetor.add(numeroPrimeiroVetor);
    terceiroVetor.add(numeroPrimeiroVetor);
  }
  //Definir tamanho do vetor 2 e adicionar valores
  print("\n");
  stdout.write("Qual o tamanho do vetor 2?: ");
  int tamanhoVetor2 = int.parse(stdin.readLineSync()!);

  for (int x = 0; x < tamanhoVetor2; x++) {
    stdout.write("Adicionar numero ao segundo vetor: ");
    int numeroSegundoVetor = int.parse(stdin.readLineSync()!);
    segundoVetor.add(numeroSegundoVetor);
    terceiroVetor.add(numeroSegundoVetor);
  }

  primeiroVetor.sort();
  segundoVetor.sort();
  terceiroVetor.sort();
  //listar
  print("Vetor 1: $primeiroVetor");
  print("Vetor 2: $segundoVetor");
  print("Vetor 3: $terceiroVetor");
}
