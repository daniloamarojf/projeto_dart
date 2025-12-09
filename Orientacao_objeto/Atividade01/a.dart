// Faça um programa que peça 2 valores. Calcule e imprima  a soma,
// o produto, a subtração, a divisão, o resto da divisão e a divisão inteira.

import 'dart:io';

class Calculos {
  int numero1;
  int numero2;

  Calculos({this.numero1 = 0, this.numero2 = 0});

  int somar() {
    int soma = numero1 + numero2;
    print('A soma de $numero1 + $numero2 é ==> $soma');
    return soma;
  }

  int subtrair() {
    int subtracao = numero1 - numero2;
    print('A subtração de $numero1 - $numero2 é ==> $subtracao');
    return subtracao;
  }

  int multiplicar() {
    int produto = numero1 * numero2;
    print('A multiplicação de $numero1 X $numero2 é ==> $produto');
    return produto;
  }

  double dividir() {
    double divisao = numero1 / numero2;
    print('A divisão de $numero1 / $numero2 é ==> $divisao');
    return divisao;
  }

  int dividirResto() {
    int divisaoResto = numero1 % numero2;
    print('resto da divisão de $numero1 / $numero2 é ==> $divisaoResto');
    return divisaoResto;
  }

  int dividirInteiro() {
    int divisaoInteiro = numero1 ~/ numero2;
    print('A divisão interira de $numero1 / $numero2 é ==> $divisaoInteiro');
    return (numero1 ~/ numero2);
  }

  void entradaDados() {
    for (int i = 1; i <= 2; i++) {
      stdout.write('${i}º Número: ');
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.isEmpty) {
        print('Entrada não pode ser nula.');
        i--;
        continue;
      }

      int numero; 

      try {
        numero = int.parse(entrada);
      } catch (e) {
        print('Entarda inválida!');
      }

      if (i == 1) {
        numero1 = numero;
      } else {
        numero2 = numero;
      }
      
    }
  }
}


void main() {
  var calculos = Calculos();
  calculos.entradaDados();
}
