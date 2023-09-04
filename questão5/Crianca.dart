class Crianca {
  String _nome = "";
  String _sexo = "";
  String _tipoPeso = "";

  List listaBebes = [];

  String get getNome => this._nome;
  void setNome(String value) => this._nome = value;

  String get getSexo => this._sexo;
  void setSexo(value) => this._sexo = value;

  String get getTipoPeso => this._tipoPeso;
  void setTipoPeso(String value) => this._tipoPeso = value;

  void cadastrar(String nome, String sexo, String tipoPeso) {
    setNome(nome);
    setSexo(sexo);
    setTipoPeso(tipoPeso);
    listaBebes.addAll([nome, sexo, tipoPeso]);
  }

  void exibirCadastros() {
    print('Lista dos Cadastros: \n$listaBebes');
  }
}
