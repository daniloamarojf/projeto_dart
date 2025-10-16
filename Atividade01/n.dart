// Faça um programa para encontrar o dobro de um número 
// caso ele seja positivo e o seu triplo caso seja negativo, 
// imprimindo o resultado. 
import 'dart:io';

void main() {

  print('-' * 50);
  print('Exercício "N" - Dobro e Triplo');
  print('-' * 50);

  stdout.write('Digite um número (positivo ou negativo): ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print("Valor não pode ser nulo.");
    return;
  }

  int numero;

  try {
    numero = int.parse(entrada);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }
   int dobro;
   int triplo;

  if (numero >= 0) {
    dobro = numero *2;
    print('O dobro do numero ${numero} é: ${dobro}');
  } else {
    triplo = numero * 3;
    print('O triplo do número ${numero} é: ${triplo}');
  }


}
