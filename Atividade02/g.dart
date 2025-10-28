// Sequência de potências:Faça um programa que receba um número
// inteiro N e imprima as potências de 2 de 0 até N (2⁰, 2¹, ..., 2ᴺ).

import 'dart:io';
import 'dart:math';


void main() {
  print('-' * 50);
  print('Sequência de potências.');
  print('-' * 50);

  while (true) {
    int numero;
    int potencia;
    

    stdout.write('Entre com um número interio: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Entrada não pode ser nula.');
      continue;
    }

    try {
      numero = int.parse(entrada);
    } catch (e) {
      print('Entrada inválida');
      continue;
    }

    for (int i = 0; i <= numero; i++) {
      potencia = pow(2, i).toInt();
      print('A base 2 elevado a $i é: $potencia');
    }


    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
