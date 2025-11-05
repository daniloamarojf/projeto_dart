// 5. Determinação do Segundo Valor de Pico
// Dada uma lista de números inteiros, encontre e imprima
// o segundo maior valor presente na lista. A lista pode conter duplicatas,
// mas o segundo maior valor deve ser o valor distinto que é imediatamente
// menor que o maior valor.

import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('5. Determinação do Segundo Valor de Pico');
  print('=' * 50);

  while (true) {
    // === Declarando variáveis e listas
    List<int> numeros = [];

    int numero;

    // === Loop for para entrada de dados
    for (int i = 1; i <= 6; i++) {
      stdout.write('${i}º Número: ');
      String? entrada = stdin.readLineSync();

      // === Fazendo o tratamento das variáveis
      if (entrada == null || entrada.isEmpty) {
        print('Valores não podem ser nulo.');
        continue;
      }

      try {
        numero = int.parse(entrada);
      } catch (e) {
        print('Entrada inválida.');
        continue;
      }

      numeros.add(numero);
    }

    print('===> Lista de números: $numeros');

    List<int> numerosOrdenados = numeros.toSet().toList();
    numerosOrdenados.sort();

    print('===> O segundo maior valor é: ${numerosOrdenados.length - 1}');
  }
}
