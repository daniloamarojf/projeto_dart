// Faça um programa que receba e divida 2 números.
//A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Divisão de dois números');
  print('-' * 50);

  while (true) {
    int valor1;
    int valor2;

    stdout.write('Primeiro valor: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Segundo valor: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Valores não podem ser nulos');
      continue;
    }

    try {
      valor1 = int.parse(entrada1);
      valor2 = int.parse(entrada2);
    } catch (e) {
      print('Entre com valores inteiros.');
      continue;
    }

    double divisao = valor1 / valor2;

    print(
      'A divisão de $valor1 por $valor2 é igual a: ${divisao.toStringAsFixed(4)}',
    );

    stdout.write('Para sair digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      break;
    } else {
      continue;
    }
  }
}
