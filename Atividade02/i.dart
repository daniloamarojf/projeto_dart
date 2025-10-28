// Classificação de ângulos: Faça um programa que receba
// um ângulo em graus e classifique-o como agudo (<90°),
// reto (90°), obtuso (>90° e <180°) ou rente (180°).

import 'dart:io';

void main() {
  print('-' * 50);
  print('Classificação de ângulos');
  print('-' * 50);

  while (true) {
    int grau;

    stdout.write('Entre com valor do ângulo: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Atenção! Entarda não pode ser nulo.');
      continue;
    }

    try {
      grau = int.parse(entrada);
    } catch (e) {
      print('Atenção! Entrada inválida');
      continue;
    }

    if (grau <= 180) {
      if (grau < 90) {
        print('O ângulo de $grau° é denominado: ÂNGULO AGUDO.');
      } else if (grau == 90) {
        print('O ângulo de $grau° é denominado: ÂNGULO RETO.');
      } else if (grau > 90 && grau < 180) {
        print('O ângulo de $grau° é denominado: ÂNGULO OBTUSO.');
      } else {
        print('O ângulo de $grau° é denominado: ÂNGULO RENTE.');
      }
    } else {
      print('Atenção! Valor precisa ser menor que 180°');
      continue;
    }

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
