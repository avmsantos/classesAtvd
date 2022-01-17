void main() {
  Caixa caixa = Caixa(1579, 'Ana', 'Oliveiera', 1212, 230);
  Vendedor vendedor = Vendedor(1601, 'Joao', 'Silva', 1212, 230);
  Gerente gerente = Gerente(1603, 'Maria', 'Souza', 1212, 230);

  mostrarCaixa(caixa);
  mostrarVendedor(vendedor);
  mostrarGerente(gerente);
}

class Funcionario {
  int matricula;
  String nome;
  String sobrenome;
  double salario;
  double horasTrabalhadas;

  Funcionario(this.matricula, this.nome, this.sobrenome, this.salario,
      this.horasTrabalhadas);

  double horaExtra() {
    if (this.horasTrabalhadas > 220) {
      double horasExtras = this.horasTrabalhadas - 220;
      double valorHora = this.salario / 220;
      double valorHoraExtra = valorHora / 2 + valorHora;
      double total = valorHoraExtra * horasExtras;

      return this.salario + total;
    }
    return this.salario;
  }
}

class Caixa extends Funcionario {
  Caixa(
    int matricula,
    String nome,
    String sobrenome,
    double salario,
    double horasTrabalhadas,
  ) : super(matricula, nome, sobrenome, salario, horasTrabalhadas);
}

class Vendedor extends Funcionario {
  Vendedor(
    int matricula,
    String nome,
    String sobrenome,
    double salario,
    double horasTrabalhadas,
  ) : super(matricula, nome, sobrenome, salario, horasTrabalhadas);
  double horaExtra() {
    double salario = super.horaExtra();
    return salario + salario / 100 * 20;
  }
}

class Gerente extends Funcionario {
  Gerente(
    int matricula,
    String nome,
    String sobrenome,
    double salario,
    double horasTrabalhadas,
  ) : super(matricula, nome, sobrenome, salario, horasTrabalhadas);
  double horaExtra() {
    double salario = super.horaExtra();
    return salario + salario / 100 * 35;
  }
}

void mostrarCaixa(Caixa caixa) {
  print("Matricula: ${caixa.matricula}");
  print("Nome completo: ${caixa.nome} ${caixa.sobrenome}");
  print("salario: ${caixa.horaExtra().toStringAsFixed(2)}");
  print("horas trabalhas: ${caixa.horasTrabalhadas}");
  print("\n");

  /* print(caixa.matricula);
  print(caixa.nome);
  print(caixa.sobrenome);
  print(caixa.salario);
  print(caixa.horasTrabalhadas); */
}

void mostrarVendedor(Vendedor vendedor) {
  print("Matricula: ${vendedor.matricula}");
  print("Nome completo: ${vendedor.nome} ${vendedor.sobrenome}");
  print("salario: ${vendedor.horaExtra().toStringAsFixed(2)}");
  print("horas trabalhas: ${vendedor.horasTrabalhadas}");
  print("\n");
}

void mostrarGerente(Gerente gerente) {
  print("Matricula: ${gerente.matricula}");
  print("Nome completo: ${gerente.nome} ${gerente.sobrenome}");
  print("salario: ${gerente.horaExtra().toStringAsFixed(2)}");
  print("horas trabalhas: ${gerente.horasTrabalhadas}");
}
