// Contagem regressiva: Faça um programa que receba um número
// inteiro positivo e faça uma contagem regressiva até zero,
// imprimindo cada número.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Contagem regressiva.');
  print('-' * 50);

  while (true) {
    int numero;

    stdout.write('Entre com um número: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Atenção! Entrada nãompode ser nulo.');
      continue;
    }

    try {
      numero = int.parse(entrada);
    } catch (e) {
      print('Atenção! Entrada inválida.');
      continue;
    }

    if (numero > 0) {
      for (int i = numero; i >= 0; i--) {
        print('$i');
        sleep(Duration(seconds: 1));
      }
      print('Tempo esgotado . . .');
    }

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
