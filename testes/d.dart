// Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Calcular média');
  print('-' * 50);

  while (true) {
    int valor1;
    int valor2;
    int valor3;
    int valor4;

    stdout.write('Valor1: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Valor2: ');
    String? entrada2 = stdin.readLineSync();

    stdout.write('Valor3: ');
    String? entrada3 = stdin.readLineSync();

    stdout.write('Valor4: ');
    String? entrada4 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty ||
        entrada3 == null ||
        entrada3.isEmpty ||
        entrada4 == null ||
        entrada4.isEmpty) {
      print('Valores não podem ser nulos.');
      continue;
    }

    try {
      valor1 = int.parse(entrada1);
      valor2 = int.parse(entrada2);
      valor3 = int.parse(entrada3);
      valor4 = int.parse(entrada4);
    } catch (e) {
      print('Entre com valores interios.');
      continue;
    }

    double media = (valor1 + valor2 + valor3 + valor4) / 4;

    print('A média é: $media.');

    stdout.write('Para encerrrar digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      break;
    } else {
      continue;
    }
  }
}
