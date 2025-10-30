// Resfriamento de um líquido: Faça um programa que simule o resfriamento de
// um líquido a partir de uma temperatura inicial até atingir a
// temperatura ambiente (25°C). A cada segundo, a temperatura diminui 2%.
// Imprima a temperatura a cada segundo.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Resfriamento de um líquido.');
  print('-' * 50);

  while (true) {
    double temperatura;

    stdout.write('Temperatura inicial: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Temperatura não pode ser nula.');
      continue;
    }

    try {
      temperatura = double.parse(entrada);
    } catch (e) {
      print('Valor inválido.');
      continue;
    }

    for (double i = temperatura; i >= 25; i--) {
      temperatura = i - (i * 0.02);
      print('Temperatura: $i.');
      sleep(Duration(seconds: 1));
    }

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
