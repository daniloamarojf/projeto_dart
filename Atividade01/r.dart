// Faça um programa para conversão de 
//temperaturas (C => F  e F ⇒ C)

import 'dart:io';

void main () {

  print('-' * 50);
  print('Exercício "R" - Conversão de Temperaturas');
  print('-' * 50);
  print('1 - Converter de Celsius para Fahrenheit');
  print('2 - Converter de Fahrenheit para Celcius');

  stdout.write('Como deseja converter a temperatura? ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  int opcao;

  try {
    opcao = int.parse(entrada);
  } catch (e) {
    print('Digite um valor válido');
    return;
  }

  if (opcao == 1) {
    stdout.write('Digite a temperatura em Celcius: ');
    String? temperatura = stdin.readLineSync();

    if (temperatura == null || temperatura.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  double celcius;
  double resultadoF;

  try {
    celcius = double.parse(temperatura);
  } catch (e) {
    print('Digite um valor válido');
    return;
  }

  resultadoF = (celcius * 9/5) + 32;
  print('A temperatura ${celcius}C equivale a ${resultadoF}F');

  } else if (opcao == 2) {
    stdout.write('Digite a temperatura em Fahrenheit: ');
    String? temperatura = stdin.readLineSync();

    if (temperatura == null || temperatura.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  double Fahrenheit;
  double resultadoC;

  try {
    Fahrenheit = double.parse(temperatura);
  } catch (e) {
    print('Digite um valor válido');
    return;
  }

  resultadoC = (Fahrenheit - 32) * 5/9;
  print('A temperatura ${Fahrenheit}F equivale a ${resultadoC}C');
  } else {
    print('Opçao inválida.');
  }
  

}