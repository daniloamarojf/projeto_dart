// Faça um programa que leia três valores inteiros e 
//diferentes e mostre-os em ordem decrescente. 

import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "P" - Ordem Decrescente');
  print('-' * 50);

  stdout.write('Digite um número: ');
  String? entrada1 = stdin.readLineSync();

  stdout.write('Digite um número: ');
  String? entrada2 = stdin.readLineSync();

  stdout.write('Digite um número: ');
  String? entrada3 = stdin.readLineSync();

  if (entrada1 == null || entrada1.isEmpty ||
      entrada2 == null || entrada2.isEmpty ||
      entrada3 == null || entrada3.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }  

  if (entrada1 == entrada2 || 
      entrada2 == entrada3 || entrada1 == entrada3) {
    print('Números não podem ser iguais.');
    return;
  }

  int numero1;
  int numero2;
  int numero3;

  try {
    numero1 = int.parse(entrada1);
    numero2 = int.parse(entrada2);
    numero3 = int.parse(entrada3);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  List<int> numeros = [numero1, numero2, numero3];
  numeros.sort((a, b)=> -a.compareTo(b));

  print('-' * 50);
  print('Números em ordem decrescente ==> ${numeros}');
  print('-' * 50);
}

