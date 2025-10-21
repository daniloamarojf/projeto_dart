// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Atividade "F" - Antecessor e Sucessor');
  print('-' * 50);

  stdout.write('Digite um número: ');
  String? valor = stdin.readLineSync();

  if (valor == null || valor.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  int numero;

  try {
    numero = int.parse(valor);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  int antecessor = numero - 1;
  int sucessor = numero + 1;

  print('-' * 50);
  print('O Antecessor de ${numero} é: $antecessor');
  print('O Sucessor de ${numero} é: $sucessor');
  print('-' * 50);
}
