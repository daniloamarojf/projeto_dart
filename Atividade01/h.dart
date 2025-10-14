// Faça um programa para converter medidas
import 'dart:io';

void main() {

  print('-' * 50);
  print('Atividade "H" - Converção de medidas');
  print('-' * 50);

  stdout.write('Digite e medida em metros: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print('Medida não pode ser nula.');
    return;
  }

  double medida;

  try {
    medida = double.parse(entrada);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }

  print('-' * 50);
  print('1 - Quilômetros');
  print('2 - Hectômetros');
  print('3 - Decametros');
  print('4 - Decímetros');
  print('5 - Centimetros');
  print('6 - Milímetros');

  stdout.write('Como deseja converte?');
  String? numero = stdin.readLineSync();

  if (numero == null || numero.isEmpty) {
    print('Medida não pode ser nula.');
    return;
  }

  int opcao;

  try {
    opcao = int.parse(numero);
  } catch (e) {
    print('Digite um valor válido.');
    return;
  }
  
  switch (opcao) {
    case 1:
      double km = medida / 1000;
      print('${medida} m equivale a ${km} Quilômetros');
      break;
    case 2:
      double hm = medida / 100;
      print('${medida} m equivale a ${hm} Hectômetros');
      break;
    case 3:
      double dam = medida / 10;
      print('${medida} m equivale a ${dam} Decâmetros');
      break;
    case 4:
      double dm = medida / 0.1;
      print('${medida} m equivale a ${dm} Decímetros');
      break;
    case 5:
      double cm = medida / 0.01;
      print('${medida} m equivale a ${cm} Centímetros');
      break;
    case 6:
      double mm = medida / 0.001;
      print('${medida} m equivale a ${mm} Milímetros');
      break;
  }


}
