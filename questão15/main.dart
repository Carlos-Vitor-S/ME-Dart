import 'dart:io';
import 'dart:math';
import 'Boi.dart';

void main() {
  int totalBois = 0;
  List<Boi> listaBois = [];
  List<Boi> boisSelecionados = [];

  int numero = 0;
  double peso = 0;

  while (true) {
    stdout.write(
        "Seleciona uma das opções: \n[1] Cadastrar Boi\n[2] Consultar Bois\n[3] Listar Bois\n[4] Sair\n--> ");

    int opcao = int.parse(stdin.readLineSync()!);

    if (opcao == 1) {
      while (true) {
        print("=== Opção 1 - Cadastrar Boi ===");
        stdout.write("Qual o numero do boi?: ");
        int numero = int.parse(stdin.readLineSync()!);

        stdout.write("Qual o peso do boi?: ");
        double peso = double.parse(stdin.readLineSync()!);

        //Adicionar na lista
        listaBois.add(Boi(numero, peso));

        stdout.write(
            "[1] para continuar Cadastros\n[0] para voltar ao menu\n--> ");
        int manterOpcao = int.parse(stdin.readLineSync()!);

        if (manterOpcao == 0) {
          break;
        }
        if (manterOpcao == 1) {
          print("Continuando cadastros...");
          continue;
        }
      }
    }

    if (opcao == 2) {
      print("=== Opção 2 - Consultar Boi ===");
      print("Escolha um intervalo para consultar bois por peso ");
      stdout.write("O intervalo começa em quanto?: ");
      double intervaloInicio = double.parse(stdin.readLineSync()!);
      stdout.write("O intervalo vai até em quanto?: ");
      double intervaloFim = double.parse(stdin.readLineSync()!);

      for (var element in listaBois) {
        if (intervaloInicio <= element.peso && element.peso <= intervaloFim) {
          boisSelecionados.add(element);
        } else {
          print("intervalo errado");
        }
      }

      print("bois no intevalo ${intervaloInicio} a ${intervaloFim}");
      print(boisSelecionados);

      // 10 até 20 quilos

      if (opcao == 3) {
        print("=== Opção 3 - Listar Bois ===");
        print(listaBois);
      }
      if (opcao == 4) {
        print("=== Opção 4 - Finalizar  ===");
        break;
      }
    }
    //Listar
  }
}
