class Aluno {
  List _notas = [];
  List _alunosRegistrados = [];

  int _matricula = 0;
  String _nome = "";
  String _sexo = "";
  int _faltas = 0;

  double _media = 0;
  double _mediaFeminina = 0;
  double _soma = 0;
  double _somaFeminina = 0;
  double _percentualAprovados = 0;

  //Getters and setters
  int get getMatricula => this._matricula;
  set setMatricula(int value) => this._matricula = value;

  get getNome => this._nome;
  set setNome(value) => this._nome = value;

  get getSexo => this._sexo;
  set setSexo(value) => this._sexo = value;

  List get getNotas => this._notas;
  set setNotas(value) => this._notas = value;

  get getFaltas => this._faltas;
  set setFaltas(value) => this._faltas = value;
  //Metodo para cadastrar um aluno
  void cadastrarAluno(
      int matricula, String nome, String sexo, List notas, int faltas) {
    setMatricula = matricula;
    setNome = nome;
    setSexo = sexo;
    setNotas = notas;
    setFaltas = faltas;
    _alunosRegistrados.addAll([matricula, nome, sexo, notas, faltas]);
  }

  //Metodo para listar informações do aluno
  void listarAluno() {
    print("Os alunos: $_alunosRegistrados");
    print("A media da turma foi de: $_media");
    print("A media das alunas foi: $_mediaFeminina");
    print("O percentual de aprovados: $_percentualAprovados%");
  }

  //Metodo para Calcular a porcentagem de aprovação dos alunos
  void calculaPorcentagemAprovados(int aprovados, int totalCadastros) {
    _percentualAprovados = aprovados * 100 / totalCadastros;
  }

  //Metodo para calcular a media de totos alunos
  double calcularMediaGeral(List notas, int totalCadastros) {
    for (int i = 0; i < notas.length; i++) {
      _soma += notas[i];
    }
    _media = _soma / (totalCadastros * 3);
    return _media;
  }

  //Metodo para calcular a media dos alunos do sexo feminino
  double calcularMediaFeminina(
      List notasFemininas, int totalCadastrosFemininos) {
    for (int i = 0; i < notasFemininas.length; i++) {
      _somaFeminina += notasFemininas[i];
    }
    _mediaFeminina = _somaFeminina / (totalCadastrosFemininos * 3);
    return _mediaFeminina;
  }
}
