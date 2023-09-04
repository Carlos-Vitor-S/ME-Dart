import 'dart:io';
import 'Crianca.dart';

void main() {
  Crianca crianca = new Crianca();
  String tipoPeso = '';
  int contadorRegistros = 0;
  double maiorPesoF = 0;
  String nomeMaiorPesoF = "";
  while (true) {
    stdout.write("Qual o nome do bebê?: ");
    String nome = stdin.readLineSync()!;

    stdout.write(
        "Qual o sexo do bebê?: 'M' para masculino ou 'F' para feminino ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    stdout.write("Qual o peso do bebê?: ");
    double peso = double.parse(stdin.readLineSync()!);

    peso >= 0 && peso <= 2
        ? tipoPeso = "Baixo Peso"
        : peso > 2 && peso <= 4
            ? tipoPeso = "Normal"
            : peso > 4
                ? tipoPeso = "Alto peso"
                : null;

    if (peso > maiorPesoF && sexo == "F") {
      maiorPesoF = peso;
      nomeMaiorPesoF = nome;
    }

    crianca.cadastrar(nome, sexo, tipoPeso);

    contadorRegistros++;

    stdout.write("Deseja continuar o cadastro? S ou N");
    String escolhaParada = stdin.readLineSync()!.toUpperCase();
    if (escolhaParada == 'N') {
      break;
    } else {
      print("continuando...");
    }
  }

  print("O total de cadastros foi: $contadorRegistros\n");
  crianca.exibirCadastros();
  print(
      "O maior peso feminino foi de '$nomeMaiorPesoF' com um total de '$maiorPesoF' kg");
}
