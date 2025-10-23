// Faça um programa que receba um número qualquer e calcule o dobro
// e o triplo desse número.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Dobro e triplo');
  print('-' * 50);

  while (true) {
    int valor;

    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Valor não pode ser nulo');
      continue;
    }
    try {
      valor = int.parse(entrada);
    } catch (e) {
      print('Entre com um número inteiro.');
      continue;
    }

    int dobro = valor * 2;
    int triplo = valor * 3;

    print('O dobro de $valor é: $dobro.');
    print('O triplo de $valor é: $triplo.');
    
    stdout.write('Para sair digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == "s") {
      print('Saindo .....');
      break;
    } else {
      continue;
    }
  }
}
