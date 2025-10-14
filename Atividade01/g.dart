// Faça um programa que receba um número qualquer e calcule o dobro
// e o triplo desse número.
import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "G" - Dobro e triplo');
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

  int dobro = numero * 2;
  int triplo = numero * 3;

  print('-' * 50);
  print('O Dobro de ${numero} é: $dobro');
  print('O Triplo de ${numero} é: $triplo');
  print('-' * 50);
}