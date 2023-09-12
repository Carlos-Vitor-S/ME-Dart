class Candidato {
  String nome = "";
  String sexo = "";
  int idade = 0;
  String experiencia = "";

  int totalCandidatos = 0;
  int totalCandidatosM = 0;
  int totalHomensMaisVelhos = 0;

  int idadeCandidatosM = 0;
  double mediaIdadeCandidatosM = 0;
  double percentualHomensMaisVelhos = 0;

  List listaCandidatos = [];

  get getNome => this.nome;
  set setNome(nome) => this.nome = nome;

  get getSexo => this.sexo;
  set setSexo(sexo) => this.sexo = sexo;

  get getIdade => this.idade;
  set setIdade(idade) => this.idade = idade;

  get getExperiencia => this.experiencia;
  set setExperiencia(experiencia) => this.experiencia = experiencia;

  void cadastrar(String nome, String sexo, int idade, String experiencia) {
    setNome = nome;
    setSexo = sexo;
    setIdade = idade;
    setExperiencia = experiencia;
    listaCandidatos.addAll([nome, sexo, idade, experiencia]);
  }

  void listar() {
    print("Candidatos: $listaCandidatos");
    print(
        "A media das idades dos candidatos Masculinos com experiencia foi de: $mediaIdadeCandidatosM");
    print(
        "A porcentagem dos homens com mais de 45 anos com relação ao total de homens é: $percentualHomensMaisVelhos ");
  }

  double calcularMediaHomensExperiencia(
      int idadeCandidatosM, int totalCandidatosM) {
    return mediaIdadeCandidatosM = idadeCandidatosM / totalCandidatosM;
  }

  void calcularPercentualHomensVelhos(
      int totalCandidatosM, int totalHomensMaisVelhos) {
    percentualHomensMaisVelhos = totalHomensMaisVelhos / totalCandidatosM * 100;
  }
}
