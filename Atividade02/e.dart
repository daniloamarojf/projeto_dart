// Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua
// velocidade a cada segundo até o tempo informado.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Tabela de velocidadde');
  print('-' * 50);

  while (true) {
    stdout.write('Digite "s" para sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . . ');
      break;
    }
  }
}
