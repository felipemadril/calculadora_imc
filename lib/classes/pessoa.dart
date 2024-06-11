class Pessoa {
  String _nome = "";
  final double _peso = 0.0;
  final double _altura = 0.0;

  Pessoa(String nome) {
    _nome = nome;
  }

  void setNome(String nome) {
    _nome = nome;
  }

  String getNome() {
    return _nome;
  }

  double getPeso() {
    return _peso;
  }

  double getAltura() {
    return _altura;
  }

  double retornaIMC() {
    return (_peso / (_altura *2));
  }
}