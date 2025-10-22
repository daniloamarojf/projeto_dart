// Números primos no intervalo: Faça um programa que receba dois números
//inteiros A e B e imprima todos os números primos entre A e B (inclusive).
import 'dart:io';

void main() {
  int valor1;
  int valor2;

  print('-' * 50);
  print('Números primos no Intervalo');
  print('-' * 50);

  while (true) {
    stdout.write('Entre com o 1º Valor: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Entre com o 2º Valor: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Valores não podem ser nulo.');
      continue;
    }

    try {
      valor1 = int.parse(entrada1);
      valor2 = int.parse(entrada2);
    } catch (e) {
      print('Digite valores interios.');
      continue;
    }

    int i;
    int j; 

    for (i = valor1; i <= valor2; ++ ) {
      if (i < 2) {
        continue;
      }

      for (j = i + 1; j <= valor2; ++) {
        if (i % j != 0) {
          print($i);
        }
      }
    };
    
  }
}



//