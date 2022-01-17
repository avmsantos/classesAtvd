void main() {
 
  final modelo1 = Carro('fiat', 'palio', 'branca', 1.0, 'flex');
  final modelo2 = Carro('Honda', 'Civic', 'cinza', 1.8, 'gasolina');
  final modelo3 = Carro('Hyndai', 'Tucson', 'prata', 2.4, 'gasolina');

  mostrarInformacoes(modelo1);
  mostrarInformacoes(modelo2);
  mostrarInformacoes(modelo3);

}

class Carro {
  String fabricante;
  String modelo;
  String cor;
  double motor;
  String combustivel;

  Carro(this.fabricante, this.modelo, this.cor, this.motor, this.combustivel);
}

void mostrarInformacoes(Carro carro) {
  print(carro.fabricante);
  print(carro.modelo);
  print(carro.cor);
  print(carro.motor);
  print(carro.combustivel);
  print("\n");
}
