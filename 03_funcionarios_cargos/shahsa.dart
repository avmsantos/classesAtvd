class Aluno {
  String nome;
  String sobrenome;
  int idade;
  String endereco;
   
  String? observacoes;
  
  bool _estaEstudando = false;
  
  
  Aluno(this.nome, this.sobrenome, this.idade, this.endereco);
  
  void comecarEstudo() { //metodo
    _estaEstudando = true;
  }
  
  void pararEstudo() { //metodo
    _estaEstudando = false;
  }
  
  bool get status => _estaEstudando; //metodo
  
  
  String get nomeCompleto { //metodo
    return '$nome $sobrenome';
  }
}

void mostrarInformacoes(Aluno aluno) { //metodo
  print('Mostrando informações:');
  print(aluno.nomeCompleto);
  print(aluno.idade);
  print(aluno.endereco);
}

void main() {
  final aluno1 = Aluno('Silas', 'Ribeiro', 25, 'Santo Amaro'); //objeto
  
  mostrarInformacoes(aluno1);
  
  print(aluno1.nome);
  
  print(aluno1.status);
  
  aluno1.comecarEstudo();
  
  print(aluno1.status);
  
  aluno1.pararEstudo();
  
  print(aluno1.status);
}
