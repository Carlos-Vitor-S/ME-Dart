class Produto {
  String _nome = "";
  double _preco = 0;
  List carrinhoCompras = [];

  get getNome => this._nome;
  set setNome(value) => this._nome = value;

  get getPreco => this._preco;
  set setPreco(value) => this._preco = value;

  void adicionarProduto(String nome, double preco) {
    setNome = nome;
    setPreco = preco;
    carrinhoCompras.addAll([getNome, getPreco]);
  }

  void listarCarrinho() {
    print(carrinhoCompras);
  }
}
