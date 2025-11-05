// 4. Multiplicação de Elementos Ímpares
// Percorra uma lista de números inteiros. Para cada número,
// verifique se ele é ímpar. Se for ímpar, ele deve ser multiplicado
// por 2. Se for par, ele deve permanecer inalterado.
// O resultado final deve ser uma nova lista com os valores transformados.

import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('4. Multiplicação de Elementos Ímpares');
  print('=' * 50);

  while (true) {
    // === Declarando variáveis e listas
    List<int> numeros = [];
    List<int> numerosTransformados = [];
    int numero;

    // === Loop for para entrada de dados pelo usuário
    for (int i = 1; i <= 10; i++) {
      stdout.write('${i}º Numero: ');
      String? entrada = stdin.readLineSync();

      // === Fazendo o tratamento das variáveis
      if (entrada == null || entrada.isEmpty) {
        print('Valores não podem ser nulos.');
        continue;
      }

      try {
        numero = int.parse(entrada);
      } catch (e) {
        print('Entrada inválida.');
        continue;
      }

      numeros.add(numero); // Adicionando os números à lista
    }

    print('===> A lista é: $numeros');

    for (numero in numeros) {
      if (numero % 2 != 0) {
        numero = numero * 2;
      } else {
        numero = numero;
      }
      numerosTransformados.add(numero);
    }

    print('===> A lista com os números transformados é: $numerosTransformados');

    // Opção para sair ou continuar
    stdout.write('Digite "s" par sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
