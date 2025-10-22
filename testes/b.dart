//Faça um programa que peça 2 valores. Calcule e imprima  a soma, o produto,
// a subtração, a divisão, o resto da divisão e a divisão inteira.
import 'dart:io';

void main() {
  while (true) {
    stdout.write('Primeiro Valor: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Segundo valor: ');
    String? entrada2 = stdin.readLineSync();

    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Entrada não pode ser nula');
      continue;
    }

    int valor1;
    int valor2;

    try {
      valor1 = int.parse(entrada1);
      valor2 = int.parse(entrada2);
    } catch (e) {
      print('Digite um valor do tipo inteiro.');
      continue;
    }

    int soma = valor1 + valor2;
    int subtracao = valor1 - valor2;
    int produto = valor1 * valor2;
    double divisao = valor1 / valor2;
    int divisaoInteiro = valor1 ~/ valor2;
    int divisaoResto = valor1 % valor2;

    print('A soma é: $soma');
    print('A subtração é: $subtracao');
    print('O produto é: $produto');

    if (valor2 != 0) {
      print('A divisão é: ${divisao.toStringAsFixed(2)}');
      print('A divisão inteira é: $divisaoInteiro');
      print('O resto da divisão é: $divisaoResto');
    } else {
      print('Segundo valor não pode ser zero.');
    }

    stdout.write('Para sair digite (s): ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Encerrado ....');
      break;
    } else {
      continue;
    }
  }
}
