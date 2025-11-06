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

    // === Usando o to.set() para eliminar os elementos repetidos
    // === Usando o to.List() voltar a ser uma lista
    List<int> numerosOrdenados = numeros.toSet().toList();

    numerosOrdenados.sort(); // Usando o sort() para ordenar

    // Variável para receber a penúltimo elemento
    int penultimo = numerosOrdenados[numerosOrdenados.length -2]; 

    print('===> O segundo maior valor é: $penultimo');

    // === Opção para sair ou continuar
    stdout.write('Digite "s" para sair ou  pressione Enter para ver novamente.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
