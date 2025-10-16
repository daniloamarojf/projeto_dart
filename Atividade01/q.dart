// Faça um programa para calcular o IMC COMPLETO de uma pessoa.

import 'dart:math';
import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "Q" - Cálculo de IMC');
  print('-' * 50);

  stdout.write('Digite o peso (Kg): ');
  String? entradaPeso = stdin.readLineSync();

  stdout.write('Digite a altura (m): ');
  String? entradaAltura = stdin.readLineSync();


  if (entradaPeso == null || entradaPeso.isEmpty ||
      entradaAltura == null || entradaAltura.isEmpty ) {
    print('Valor não pode ser nulo.');
    return;
  }  


  double peso;
  double altura;

  try {
    peso = double.parse(entradaPeso);
    altura = double.parse(entradaAltura);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  double imc = peso /(pow(altura, 2).toDouble());

  print('-' * 50);
  print('O Indice de Massa Corporal (IMC) é: ${imc}');
  print('-' * 50);
}

