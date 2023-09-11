import '';

class Candidato {
  int codigo = 0;
  String nome = "";
  String curso = "";
  String sexo = "";
  int pontos = 0;

  int maiorPontosM = 0;
  int menorPontosM = 0;

  int totalCadastros = 0;
  int totalCadastrosM = 0;
  int totalCadastrosF = 0;

  double percentualCadastrosF = 0;
  double percentualCadastrosM = 0;

  List listaCandidatos = [];
  List listaCandidatosAprovados = [];

  int get getCodigo => this.codigo;
  set setCodigo(int codigo) => this.codigo = codigo;

  get getNome => this.nome;
  set setNome(nome) => this.nome = nome;

  get getCurso => this.curso;
  set setCurso(curso) => this.curso = curso;

  get getSexo => this.sexo;
  set setSexo(sexo) => this.sexo = sexo;

  get getPontos => this.pontos;
  set setPontos(pontos) => this.pontos = pontos;

  void cadastrar(
      int codigo, String nome, String sexo, String curso, int pontos) {
    setCodigo = codigo;
    setNome = nome;
    setSexo = sexo;
    setCurso = curso;
    setPontos = pontos;
    listaCandidatos.addAll([
      codigo,
      nome,
      sexo,
      curso,
      pontos,
    ]);
    if (pontos > 2500) {
      listaCandidatosAprovados.addAll([codigo, nome, pontos]);
    }
  }

  void listar() {
    print("Lista Geral de Candidatos: $listaCandidatos");
    print("Candidatos com pontuação maior que 2500: $listaCandidatosAprovados");
    print("Total geral de cadastros: $totalCadastros");

    print("O percentual de Cadastros Femininos foi de: $percentualCadastrosF");
    print(
        "O percentual de Cadastros Masculinos foi de: $percentualCadastrosM ");
  }

  void percentualCadastros(
      int totalCadastros, int totalCadastrosM, int totalCadastrosF) {
    totalCadastros = totalCadastros;
    percentualCadastrosF = totalCadastrosF / totalCadastros * 100;
    percentualCadastrosM = totalCadastrosM / totalCadastros * 100;
  }
}
