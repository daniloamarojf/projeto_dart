// Definição de classe
class Pessoa {
  // Declaração do atributo "nome" do tipo String
  final String nome;
  // Declaração do atrinuto "idade" do tipo int
  final int idade;

  // Construtor da classe Pessoa
  Pessoa({
    // Parâmetro obrigatório, garante inicialização segura
    required this.nome,
    required this.idade,
  });

  // M´todo para exibir os dados da pessoa
  void exibirDados() {
    print('-' * 70);
    print("Nome: $nome");
    print("Idade: $idade");
    print('-' * 70);
  }
}

void main() {
  // Criação de uma instância(objeto) da classe Pessoa com o construtor
  Pessoa pessoa1 = Pessoa(nome: "John Doe", idade: 25);
  // Chamada do método exibirDados() da instância pessoal
  pessoa1.exibirDados();
}
