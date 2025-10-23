// Faça um programa que leia três valores inteiros e
//diferentes e mostre-os em ordem decrescente.

import 'dart:io';

void main() {
  int valor1;
  int valor2;
  int valor3;

  print('-' * 50);
  print('Ordem decrescente');
  print('-' * 50);

  while (true) {
    stdout.write('Entre com 1º valor: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Entre com 2º valor: ');
    String? entrada2 = stdin.readLineSync();

    stdout.write('Entre com 3º valor: ');
    String? entrada3 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty ||
        entrada3 == null ||
        entrada3.isEmpty) {
      print('Valores não podem ser nulos.');
      continue;
    }

    try {
      valor1 = int.parse(entrada1);
      valor2 = int.parse(entrada2);
      valor3 = int.parse(entrada3);
    } catch (e) {
      print('Entre com valores inteiros.');
      continue;
    }

    if (valor1 == valor2 && valor1 == valor3) {
      print('Valores não podem ser iguais.');
      continue;
    } else if (valor1 > valor2 && valor1 > valor3) {
      if (valor2 > valor3) {
        print('$valor1, $valor2, $valor3');
      } else {
        print('$valor1, $valor3, $valor2');
      }
    } else if (valor2 > valor1 && valor2 > valor3) {
      if (valor1 > valor3) {
        print('$valor2, $valor1, $valor3');
      } else {
        print('$valor2, $valor3, $valor1');
      }
    } else if (valor3 > valor1 && valor3 > valor2) {
      if (valor1 > valor2) {
        print('$valor3, $valor1, $valor2 ');
      } else {
        print('$valor3, $valor2, $valor1');
      }
    }

    stdout.write('Para sair digite "S": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 'd') {
      break;
    } else {
      continue;
    }
  }
}
