// Resfriamento de um líquido: Faça um programa que simule o resfriamento de
// um líquido a partir de uma temperatura inicial até atingir a
// temperatura ambiente (25°C). A cada segundo, a temperatura diminui 2%.
// Imprima a temperatura a cada segundo.

import 'dart:io';



void main() {
  print('-' * 50);
  print('');
  print('-' * 50);

  while (true) {
    

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
