import 'dart:io';
import 'Candidato.dart';

void main() {
  String flag = "FIM";
  int codigo = 0;
  String nome = "";
  String sexo = "";
  int idade = 0;
  String experiencia = "";

  int totalCandidatos = 0;
  int totalCandidatosM = 0;
  int totalCandidatosF = 0;

  int totalHomensMaisVelhos = 0;
  int menorIdadeF = 0;
  int maiorIdadeF = 0;
  String nomeMenorIdadeF = "";
  int idadeMediaHomensExp = 0;

  List listaCandidatos = [];

  Candidato candidato = new Candidato();

  while (true) {
    stdout.write("Qual o nome do candidato?: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Qual o sexo do candidato?[M] ou [F]: ");
    String sexo = stdin.readLineSync()![0].toUpperCase();

    stdout.write("Qual a idade do candidato?: ");
    int idade = int.parse(stdin.readLineSync()!);

    stdout.write(
        "o candidato possui experiencia? [S] para sim ou [N] para não: ");
    String experiencia = stdin.readLineSync()![0].toUpperCase();

    totalCandidatos++;

    if (sexo == "M") {
      totalCandidatosM++;
      if (experiencia == "S") {
        idadeMediaHomensExp += idade;
      }
      if (idade > 45) {
        totalHomensMaisVelhos++;
      }
    }

    if (sexo == "F") {
      if (idade < 30 && experiencia == "S") {
        totalCandidatosF++;
      }

      if (experiencia == "S") {
        if (idade > maiorIdadeF) {
          maiorIdadeF = idade;
        }
        if (idade < maiorIdadeF) {
          menorIdadeF = idade;
          nomeMenorIdadeF = nome;
        }
      }
    }

    candidato.cadastrar(nome, sexo, idade, experiencia);

    stdout.write(
        "Deseja continuar cadastrando? [ FIM ] para finalizar e qualquer outra palavra para continuar  ");
    String codigo = stdin.readLineSync()!;

    if (codigo == flag) {
      break;
    }
  }

  //Metodos
  candidato.calcularMediaHomensExperiencia(
      idadeMediaHomensExp, totalCandidatosM);
  candidato.calcularPercentualHomensVelhos(
      totalCandidatosM, totalHomensMaisVelhos);
  candidato.listar();
  print(
      "O número de mulheres com idade inferior a 30 anos e com experiência no serviço: $totalCandidatosF");
  print(
      "O nome da candidata com a menor idade que já tem experiência no serviço: $nomeMenorIdadeF");
}
