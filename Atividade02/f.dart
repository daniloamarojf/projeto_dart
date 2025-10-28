// Conversão de energia: Faça um programa que leia um valor em
// joules e converta para calorias (1 caloria = 4,184 joules),
// exibindo os resultados.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Conversão de energia.');
  print('-' * 50);

  while (true) {
    double joules;

    stdout.write('Entre com a energia (em joules): ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Valor não pode ser nulo.');
      continue;
    }

    try {
      joules = double.parse(entrada);
    } catch (e) {
      print('Entrada inválida.');
      continue;
    }

    double calorias = joules / 4.184;

    print('$joules Joules equivale a $calorias Calorias');

    stdout.write('Digite "s" para sair ou pressione Enter para continuar: ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa ...');
      break;
    }
  }
}
