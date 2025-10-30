// Determinação do maior divisor comum (MDC): Faça um programa
// que receba dois números inteiros e calcule o MDC usando
// o algoritmo de Euclides com repetição.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Determinação do maior divisor comum (MDC)');
  print('-' * 50);

  while (true) {
    int numero1;
    int numero2;
    int resto;
    stdout.write('Primeiro número: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Segundo número: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Valor não podem ser nulos');
      continue;
    }

    try {
      numero1 = int.parse(entrada1);
      numero2 = int.parse(entrada2);
    } catch (e) {
      print('Entrada inválida.');
      continue;
    }

    int a = numero1;
    int b = numero2;

    while (b != 0) {
      resto = a % b;
      a = b;
      b = resto;
    }

    print('O MDC de ($numero1, $numero2): ${a}');

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
