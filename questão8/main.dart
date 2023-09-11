import 'dart:io';
import 'Candidato.dart';

void main() {
  int flag = 0000;
  int codigo = 0;
  String nome = "";
  String curso = "";
  String sexo = "";
  int pontos = 0;

  String nomeMenorPontosM = "";
  int maiorCodigoM = 0;

  int maiorPontosM = 0;
  int menorPontosM = 0;

  int totalCadastros = 0;
  int totalCadastrosM = 0;
  int totalCadastrosF = 0;

  List listaCandidatosAprovados = [];

  Candidato candidato = new Candidato();

  while (true) {
    stdout.write("Qual o codigo do candidato?: ");
    int codigo = int.parse(stdin.readLineSync()!);

    if (codigo == flag) {
      break;
    }

    stdout.write("Qual o nome do candidato?: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Qual o sexo do candidato?[M] ou [F]: ");
    String sexo = stdin.readLineSync()![0].toUpperCase();

    stdout.write(
        "Qual o curso do candidato? [SI]-Sistemas de Informação ou [CC]-Ciência da Computação: ");
    String curso = stdin.readLineSync()!.toUpperCase();

    stdout
        .write("Qual o total de pontos do codigo do candidato?[0 --> 5000]: ");
    int pontos = int.parse(stdin.readLineSync()!);

    if (pontos > maiorPontosM && sexo == "M") {
      maiorPontosM = pontos;
      maiorCodigoM = codigo;
      if (curso == "SI" || curso == "SISTEMAS DE INFORMAÇÃO") {
        maiorCodigoM = codigo;
      }
    }
    if (pontos < maiorPontosM) {
      menorPontosM = pontos;
      nomeMenorPontosM = nome;
    }
    totalCadastros++;
    sexo == "M"
        ? totalCadastrosM++
        : sexo == "F"
            ? totalCadastrosF++
            : null;
    candidato.cadastrar(codigo, nome, sexo, curso, pontos);
  }
  candidato.percentualCadastros(
      totalCadastros, totalCadastrosM, totalCadastrosF);
  candidato.listar();
  print(
      "$nomeMenorPontosM obtever a menor pontuação em um total de: '$menorPontosM'");
  print(
      "o codigo Masculino para o curso de [SI] com a maior pontuação foi: $maiorCodigoM");
}
