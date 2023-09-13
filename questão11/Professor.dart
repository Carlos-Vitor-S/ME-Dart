import 'dart:io';

class Professor {
  //Atributos
  int codigo = 0;
  String nome = '';
  String sexo = '';
  int numHoras = 0;
  double salarioBruto = 0;
  double salarioLiquido = 0;

  int totalCadastros = 0;
  int totalProfessoresF = 0;
  int totalProfessoresM = 0;

  double mediaF = 0;
  double mediaM = 0;

  double salarioLiquidoF = 0;
  double salarioLiquidoM = 0;

  double mediaSalarioLiquido = 0;

  List listaProfessores = [];

  int get getCodigo => this.codigo;
  set setCodigo(int codigo) => this.codigo = codigo;

  get getNome => this.nome;
  set setNome(nome) => this.nome = nome;

  get getSexo => this.sexo;
  set setSexo(sexo) => this.sexo = sexo;

  get getNumHoras => this.numHoras;
  set setNumHoras(numHoras) => this.numHoras = numHoras;

  double get getSalarioBruto => this.salarioBruto;
  set setSalarioBruto(double salarioBruto) => this.salarioBruto = salarioBruto;

  get getSalarioLiquido => this.salarioLiquido;
  set setSalarioLiquido(salarioLiquido) => this.salarioLiquido = salarioLiquido;

  void cadastrar(int codigo, String nome, String sexo, int numHoras,
      double salarioBruto, double salarioLiquido) {
    setCodigo = codigo;
    setNome = nome;
    setSexo = sexo;
    setNumHoras = numHoras;
    setSalarioBruto = salarioBruto;
    setSalarioLiquido = salarioLiquido;
    listaProfessores.addAll([
      "\nCod:$getCodigo ",
      "Nome:$getNome ",
      "Sexo:$getSexo ",
      "NumHoras:$getNumHoras ",
      "Bruto:$getSalarioBruto ",
      "Liquido:$getSalarioLiquido \n"
    ]);
  }

  void calcularMedia(int totalCadastros, int totalProfessoresF,
      int totalProfessoresM, double salarioLiquidoF, double salarioLiquidoM) {
    mediaF = salarioLiquidoF / totalProfessoresF;
    mediaM = salarioLiquidoM / totalProfessoresM;
  }

  void listar() {
    print(listaProfessores.join(" "));
    print("A media de salario dos professores [F]: $mediaF");
    print("A media de salario dos professores [M]: $mediaM\n");
  }
}
