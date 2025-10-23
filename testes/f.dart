// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Sucessor e Antecessor');
  print('-' * 50);

  while (true) {
    int valor;

    stdout.write('Digite um número: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Valor não pode ser nulo.');
      continue;
    }

    try {
      valor = int.parse(entrada);
    } catch (e) {
      print('Entre com um valor inteiro');
      continue;
    }
    int antecessor = valor - 1;
    int sucessor = valor + 1;

    print('O antecessor de $valor é: $antecessor');
    print('O sucessor de $valor é: $sucessor');

    stdout.write('Para encerrar digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('')
      break;
    } else {
      continue;
    }
  }
}
