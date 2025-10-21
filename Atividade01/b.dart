//Faça um programa que peça 2 valores. Calcule e imprima  a soma, o produto,
// a subtração, a divisão, o resto da divisão e a divisão inteira.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Atividade "B" - Cálculos Matemáticos');
  print('-' * 50);

  stdout.write('Digite o 1º valor: ');
  String? entrada1 = stdin.readLineSync();

  stdout.write('Digite o 2º valor: ');
  String? entrada2 = stdin.readLineSync();

  if (entrada1 == null || entrada1.isEmpty ||
      entrada2 == null || entrada2.isEmpty) {
      print('Valores não podem ser nulo.');
      return;
    }
  int valor1;
  int valor2;

  try {
    valor1 = int.parse(entrada1);
    valor2 = int.parse(entrada2);
  } catch (e) {
    print('Entre com valores válidos');
    return;
  }

  int soma = valor1 + valor2;
  int subtracao = valor1 - valor2;
  int produto = valor1 * valor2;

  print('-' * 50);
  print('Calculos');
  print('-' * 50);
  print('A soma é : $soma');
  print('A subtração é: $subtracao');
  print('A multiplicação é: $produto');

  if (valor2 != 0) {
    double divisao = valor1 / valor2;
    int divisaoInteiro = valor1 ~/ valor2;
    int divisaoResto = valor1 % valor2;

    print('A divisão é: ${divisao.toStringAsFixed(2)}');
    print('A divisão inteira é: $divisaoInteiro');
    print('O resto da divisão é: $divisaoResto');
    print('-' * 50);
  } else {
    print('Erro: Divisão por zero não permitida!');
    print('-' * 50);
  }
}
