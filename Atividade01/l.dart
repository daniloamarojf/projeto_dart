// Faça um programa para receber um número qualquer
// e informar na tela se é par ou ímpar. 
import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "L" - Par ou Ímpar');
  print('-' * 50);

  stdout.write('Digite um número: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  int numero;

  try {
    numero = int.parse(entrada);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  if (numero % 2 == 0) {
    print('O número ${numero} é: PAR.');
  } else {
    print('O número ${numero} é: ÍMPAR');
  }


}

