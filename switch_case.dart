import 'dart:io';

void main() {
  print('1 - Numero par');
  print('2 - Maior número');
  print('3 - Sair');

  stdout.write('Escolha uma opção ( 1, 2 ou 3): ');
  var opcao = int.parse(stdin.readLineSync()!);

  switch (opcao) {
    case 1:
      stdout.write('Entre com o valor de a: ');
      var a = int.parse(stdin.readLineSync()!);

      if (a % 2 == 0) {
        print('O número $a é par!');
      } else {
        print('O número $a é ímpar!');
      }
      break; // Interrompe o case
    case 2:
      stdout.write('Entre com o valor de a: ');
      var a = int.parse(stdin.readLineSync()!);
      stdout.write('Entre com o valor de b: ');
      var b = int.parse(stdin.readLineSync()!);

      if (a > b) {
        print('O número $a é maior que o número $b!');
      } else if (a < b) {
        print('O número $a é menor que o numero $b!');
      } else {
        print('Os números são iguais!');
      }
      break; // Interrompe o case
    case 3:
      print('Saindo de programa...');
      break;
    default:
      print('Fora do intervalo de opções!');
  }
}
