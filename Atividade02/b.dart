// Fatorial com repetição: Faça um programa que leia um número
// inteiro positivo e calcule seu fatorial usando um loop.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Fatorial com repetição.');
  print('-' * 50);

  while (true) {
    int valor;
    int fatorial = 1;

    stdout.write('Digite um número inteiro positivo: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Valor não pode ser nulo');
      continue;
    }

    try {
      valor = int.parse(entrada);
    } catch (e) {
      print('Entre com um número interio.');
      continue;
    }

    if (valor < 0) {
      print('Valor não pode ser negativo.');
      continue;
    } else {
      for (int i = 1; i <= valor; i++) {
        fatorial *= i;
      }
      print('O fatorial de $valor é: $fatorial');
    }

    stdout.write('Para sair digite "s": ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      break;
    } else {
      continue;
    }
  }
}
