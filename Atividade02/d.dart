// Verificação de ano bissexto: Faça um programa que receba
// um ano e verifique se ele é bissexto, exibindo a resposta.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Verificação de Ano Bissexto.');
  print('-' * 50);

  while (true) {
    int ano;

    stdout.write('Digite o ano: ');
    String? entrada = stdin.readLineSync();
    

    stdout.write('Digite "s" para sair ou pressione Enter para continuar: ');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa ...');
      break;
    }
  }
}
