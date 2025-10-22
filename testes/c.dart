// Faça um programa que peça um ano qualquer. 
//O programa deverá calcular e imprimir a idade.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Calcular Idade');
  print('-' * 50);

  while (true) {

    int anoNasc;
    DateTime dataAtual = DateTime.now();
    int anoAtual = dataAtual.year;


    stdout.write('Digite O ano de nascimento: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Ano de nascimento não pode ser nulo.');
      continue;
    }

    try {
      anoNasc = int.parse(entrada);
    } catch (e) {
      print('Entre um ano válido.');
      continue;
    }
    int idade = anoAtual - anoNasc;

    if (anoNasc > anoAtual) {
        print('Ano de nascimento maior que ano atual.');
        continue;
    } else {
      print('A idade atual é: ${idade} anos.');
    }
  }
}
