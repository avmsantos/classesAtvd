
main() {
  Calculadora calculadora = Calculadora();
  Tela tela = Tela();
 
  double valor1 = 11;
  double valor2 = 7.45;

  int operacao = 1;

  switch (operacao) {
    case 1:
      tela.mostrarMensagem("Resusltado: ${calculadora.soma(valor1, valor2)}");
      break;
    case 2:
      tela.mostrarMensagem(
          "Resusltado: ${calculadora.subtrair(valor1, valor2)}");
      break;
    case 3:
      tela.mostrarMensagem(
          "Resusltado: ${calculadora.dividir(valor1, valor2)}");
      break;
    case 4:
      tela.mostrarMensagem(
          "Resusltado: ${calculadora.multiplicar(valor1, valor2)}");
      break;
    default:
  }
}

class Tela {
  void mostrarMensagem(String mensagem) {
    print(mensagem);
  }
}

class Calculadora {
  double soma(double valor1, double valor2) {
    return valor1 + valor2;
  }

  double subtrair(double valor1, double valor2) {
    return valor1 - valor2;
  }

  double dividir(double valor1, double valor2) {
    return valor1 / valor2;
  }

  double multiplicar(double valor1, double valor2) {
    return valor1 * valor2;
  }
}
