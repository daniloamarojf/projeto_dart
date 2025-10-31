// Tabela de velocidades: Faça um programa que leia o tempo (em segundos)
// e a aceleração constante de um objeto e imprima sua
// velocidade a cada segundo até o tempo informado.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Tabela de velocidadde');
  print('-' * 50);

  while (true) {
    stdout.write('Informe o tempo em segundos: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Informe a aceleração: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Valores não podem ser nulo.');
      continue;
    }
    double tempo;
    double aceleracao;

    try {
      tempo = double.parse(entrada1);
      aceleracao = double.parse(entrada2);
    } catch (e) {
      print('Entrada inválida.');
    }

    for (int i = 0; i < tempo; i++) {
      double velocidade = 
      print('A velicidade é: ')
    }
      stdout.write('Digite "s" para sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . . ');
      break;
    }
  }
}
