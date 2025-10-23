// Soma dos múltiplos: Faça um programa que receba um número inteiro
// N e calcule a soma de todos os múltiplos de 3 ou 5 menores que N.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Soma dos múltiplos.');
  print('-' * 50);

  while (true) {
    int valor;
    int i = 1;
    int multiplos3 = 0;
    int multiplos5 = 0;

    stdout.write('Entre com um número inteiro: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Valor não pode ser nulo.');
      continue;
    }

    try {
      valor = int.parse(entrada);
    } catch (e) {
      print('Entre com um numero inteiro');
      continue;
    }

    for (i; i <= valor; i++) {
      if (i % 3 == 0) {
        multiplos3 += i;
      }

      if (i % 5 == 0) {
        multiplos5 += i;
      }
    }
    print('A soma dos múltiplos de 3 é: $multiplos3');
    print('A soma dos múltiplos de 5 é: $multiplos5');

    stdout.write('Para sair digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Você saiu do programa ......');
      break;
    } else {
      continue;
    }
  }
}
