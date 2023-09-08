import 'dart:io';

import 'Aluno.dart';

void main() {
  List notas = [];
  List mediaGeral = [];
  List mediaFeminina = [];

  int flag = 0000;
  int quantidadeNotas = 4;
  int totalCadastros = 0;
  int totalCadastrosFemininos = 0;
  int totalCadastrosFemininosAprovados = 0;
  int totalCadastrosMasculinosAprovados = 0;
  int totalAlunosAprovados = 0;

  int matriculaMaiorF = 0;
  int matriculaMaiorM = 0;

  double soma = 0;
  double maiorMediaM = 0;
  double maiorMediaF = 0;
  double mediaAtual = 0;

  Aluno aluno = new Aluno();

  while (true) {
    stdout.write("Qual matricula do(a) aluno(a): ");
    int matricula = int.parse(stdin.readLineSync()!);

    if (matricula == flag) {
      break;
    }

    stdout.write("Qual o nome do(a) aluno(a)?: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Qual o sexo do(a) aluno(a)?: ");
    String sexo = stdin.readLineSync()!.toUpperCase();

    for (int i = 1; i < quantidadeNotas; i++) {
      stdout.write("Qual a nota '$i' do(a) aluno(a)?: ");
      double nota = double.parse(stdin.readLineSync()!);
      notas.add(nota);
      mediaGeral.add(nota);
      soma += nota;
    }

    stdout.write("Qual o total de faltas do(a) aluno(a)?: ");
    int faltas = int.parse(stdin.readLineSync()!);

    mediaAtual = soma / 3;
    print(mediaAtual);
    aluno.cadastrarAluno(matricula, nome, sexo, notas, faltas);
    totalCadastros++;

    //Gerar media apenas das meninas, aprovadas ou não.

    if (sexo == "F") {
      totalCadastrosFemininos++;
      mediaFeminina.add(soma);
    }

    //Achar os aprovados por sexo ou sem o sexo
    if (mediaAtual >= 7 && faltas <= 18) {
      totalAlunosAprovados++;
      if (sexo == "F") {
        totalCadastrosFemininosAprovados++;

        if (mediaAtual > maiorMediaF) {
          maiorMediaF = mediaAtual;
          matriculaMaiorF = matricula;
        }
      }
      if (sexo == "M") {
        totalCadastrosMasculinosAprovados++;
        if (mediaAtual > maiorMediaM) {
          maiorMediaM = mediaAtual;
          matriculaMaiorM = matricula;
        }
      }
    }
    soma = 0;
    notas = [];
  }

  print("total de cadastros: $totalCadastros");
  print("o total de cadastros femininos: $totalCadastrosFemininos");
  print("total aprovados: $totalAlunosAprovados");
  print("A matricula feminina com maior media foi: $matriculaMaiorF");
  print("A matricula masculina com maior media foi: $matriculaMaiorM");
  aluno.calcularMediaGeral(mediaGeral, totalCadastros);
  aluno.calculaPorcentagemAprovados(totalAlunosAprovados, totalCadastros);
  aluno.calcularMediaFeminina(mediaFeminina, totalCadastrosFemininos);
  aluno.listarAluno();
}
