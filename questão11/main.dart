import 'dart:io';

import 'Professor.dart';

void main() {
  int flag = 9999;
  int totalCadastros = 0;

  double valorHora = 12.30;

  double salarioBruto = 0;
  double salarioLiquido = 0;

  double porcentagemDescontoM = 10 / 100;
  double porcentagemDescontoF = 5 / 100;

  int totalProfessoresF = 0;
  int totalProfessoresM = 0;

  double salarioLiquidoF = 0;
  double salarioLiquidoM = 0;

  double desconto = 0;

  Professor professor = new Professor();
  while (true) {
    stdout.write("Qual o codigo do professor?: ");
    int codigo = int.parse(stdin.readLineSync()!);

    if (codigo == flag) {
      break;
    }

    stdout.write("Qual o nome do professor?: ");
    String nome = stdin.readLineSync()!;

    stdout.write("Qual o sexo do professor?[M] ou [F]: ");
    String sexo = stdin.readLineSync()![0].toUpperCase();

    stdout.write("Qual o numero de aulas dadas no mês?: ");
    var numHoras = int.parse(stdin.readLineSync()!);

    totalCadastros++;
    salarioBruto = numHoras * valorHora;

    if (sexo == "F") {
      totalProfessoresF++;
      desconto = salarioBruto * porcentagemDescontoF;
      salarioLiquido = salarioBruto - desconto;
      salarioLiquidoF += salarioLiquido;
    }

    if (sexo == "M") {
      totalProfessoresM++;
      desconto = salarioBruto * porcentagemDescontoM;
      salarioLiquido = salarioBruto - desconto;
      salarioLiquidoM += salarioLiquido;
    }

    //Retira casas decimais até deixar 2
    salarioBruto.toStringAsFixed(2);
    salarioLiquido.toStringAsFixed(2);

    professor.cadastrar(
        codigo, nome, sexo, numHoras, salarioBruto, salarioLiquido);
  }

  //Listagem

  professor.calcularMedia(totalCadastros, totalProfessoresF, totalProfessoresM,
      salarioLiquidoF, salarioLiquidoM);
  professor.listar();
}
