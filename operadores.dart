import 'dart:io';

void main() {
  stdout.write('Entre com valor de A: ');
  int a = int.parse(stdin.readLineSync()!); //fazendo casting

  stdout.write('entre com valor de B: ');
  int b = int.parse(stdin.readLineSync()!); // fazendo casting

  // Operador de soma
  int soma = a + b;
  // Operador de subtração
  int subtracao = a - b;
  // Operador de produto
  int produto = a * b;
  // Operador de divisão
  double divisao = a / b;
  // Operador de divisão inteira
  int divInteira = a ~/ b;
  // Operador de resto da divisão
  int restoDivisao = a % b;

  print('*' * 70);
  print('A soma de $a + $b = $soma');
  print('a subtração de $a - $b = $subtracao');
  print('A multiplicação de $a x $b = $produto');
  print('A divisão de $a / $b = ${divisao.toStringAsFixed(2)}');
  print('A divisão inteira de $a ~/ $b = $divInteira');
  print('O resto de $a % $b = $restoDivisao');
  print('-' * 70);
}
