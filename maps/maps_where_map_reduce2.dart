void main() {
  print('-' * 70);
  print('EXEMPLO DE WHERE(, MAP() E REDUCE() COM STRINGS)');
  print('=' * 70);

  // ----------------------------------------
  // Map de pessoas: chave é o nome e valor é a idade
  Map<String, int> pessoas = {
    'Ana': 17,
    'Bruno': 22,
    'Carla': 19,
    'Diego': 25,
    'elisa': 16,
  };

  // -------------------------------------------------------
  // Encadeamento de métodos funcionais:
  // Objetivo: pegar nomes de pessoas adultas, colocar em maiúsculas e
  // concatenar em uma única String

  // Entradas do Map (nomes, idade)
  String nomesAdultos = pessoas.entries

      // Filtra: apenas maiores de idade -> Bruno, CArla, Diego
      .where((entrada) => entrada.value >= 18)

      // Transforma: nomes em maiúsculas -> BRUNO, CARLA, DIEGO
      .map((entrada) => entrada.key.toUpperCase())
      
      // Reduz: concatena os nomes -> "BRUNO, CARLA, DIEGO"
      .reduce((acumulador, nome) => '$acumulador, $nome');

  // --------------------------------------------
  // Saída
  print('Nomes das pessoas adultas: $nomesAdultos'); // BRUNO, CARLA, DIEGO
  print('=' * 70);
}
