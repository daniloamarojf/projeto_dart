// Faça um algoritmo que leia dois valores inteiros A e B. 
// Se os valores forem iguais deverá somar os dois, 
// caso contrário multiplique A por B. Ao final de qualquer um 
// dos cálculos deve-se atribuir o resultado para uma variável C 
// e mostrar seu conteúdo na tela. 
import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "M" - Variáveis A, B e C');
  print('-' * 50);

  stdout.write('Digite um valor para a variável "A": ');
  String? entradaA = stdin.readLineSync();
  
  stdout.write('Digite um valor para a variável "B": ');
  String? entradaB = stdin.readLineSync();

  if (entradaA == null || entradaA.isEmpty ||
      entradaB == null || entradaB.isEmpty) {
    print('Valores não podem ser nulos.');
    return;
  }

  int varA;
  int varB;

  try {
    varA = int.parse(entradaA);
    varB = int.parse(entradaB);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  int somar;
  int multiplicar;

  if (varA == varB) {
    somar = varA + varB;
    print('Variável A: ${varA}  |  Variável B: ${varB}  |  Variável C: ${somar}');
  } else {
    multiplicar = varA * varB;
        print('Variável A: ${varA}  |  Variável B: ${varB}  |  Variável C: ${multiplicar}');

  }
}

