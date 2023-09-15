import 'dart:io';

void main() {
  int totalBois = 0;
  List listaBois = [];

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

        listaBois.add(numero);
        listaBois.add(peso);

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
      for (var element in listaBois) {}
    }
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
  print(listaBois);
}
