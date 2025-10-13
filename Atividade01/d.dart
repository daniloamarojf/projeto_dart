// Faça um programa que peça 4 notas com  entrada de dados. O programa deverá calcular a média das notas digitadas.
import 'dart:io';

// Função para o calculo de média
double media (double a, double b, double c, double d) {
    return (a + b +c + d) / 4;
  }

  double verificarNota(int numero) {
    while (true) {
      stdout.write('Digite a ${numero}ª Nota: ');
      String? nota = stdin.readLineSync();

      if (nota == null || nota.isEmpty) {
        print('Digite um valor válido.');
        continue;
      }

      try {
        return double.parse(nota);
      } catch (e) {
        print('Digite um valor válido.');
      }
    }
  }

void main() {


  print('-' * 50);
  print('Atividade "D" - Cálculo de média');
  print('-' * 50);

  double nota1 = verificarNota(1);
  double nota2 = verificarNota(2);
  double nota3 = verificarNota(3);
  double nota4 = verificarNota(4);

  double resultado = media(nota1, nota2, nota3, nota4);

  print('-' * 50);
  print('A média é: $resultado');
  print('-' * 50);

}
