// Faça um programa que leia uma variável e some 5 
// caso seja par ou some 8 caso seja ímpar, 
// imprimir o resultado desta operação. 

import 'dart:io';

void main() {

  print('-' * 50);
  print('Exercício "O" - Dobro e Triplo');
  print('-' * 50);

  stdout.write('Digite um número inteiro: ');
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
   int somaCinco;
   int somaOito;

  if (numero % 2 == 0) {
    somaCinco = numero  + 5;
    print('O numero ${numero} é PAR então: ${numero} + 5 = ${somaCinco}');
  } else {
    somaOito = numero + 8;
    print('O número ${numero} é ÍMPAR então: ${numero} + 8 = ${somaOito}');
  }


}

