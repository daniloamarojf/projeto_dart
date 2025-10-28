// Cálculo de velocidade média: Faça um programa que receba as
// distâncias percorridas a cada intervalo de tempo e calcule
// a velocidade média total do percurso.

import 'dart:io';

void main() {
  print('-' * 50);
  print('Cálculo de velocidade média');
  print('-' * 50);

  while (true) {
    double distancia;
    double tempo;

    stdout.write('Qual da distancia percorrida (km)? : ');
    String? entradaKm = stdin.readLineSync();

    stdout.write('Qual tempo do percurso (horas)? ');
    String? entradaHoras = stdin.readLineSync();

    if (entradaKm == null ||
        entradaKm.isEmpty ||
        entradaHoras == null ||
        entradaHoras.isEmpty) {
      print('Valores nãopodem ser nulos.');
      continue;
    }

    try {
      distancia = double.parse(entradaKm);
      tempo = double.parse(entradaHoras);
    } catch (e) {
      print('Entrada inválida.');
      continue;
    }

    double velocidadeMedia = distancia / tempo;

    print('Velociade média para o percurso de $distancia KM em $tempo Horas é: ${velocidadeMedia.toStringAsFixed(2)} Km/h'
    );

    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
