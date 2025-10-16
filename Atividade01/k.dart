// Faça um programa com entrada de dados para calcular
// a área de 4 objetos.
import 'dart:io';
import 'dart:math';

void main() {

  print('-' * 50);
  print('Atividade "K" - Calcular área de objetos');
  print('-' * 50);
  print('1 - Quadrado');
  print('2 - Retangulo');
  print('3 - Círculo');
  print('4 - Triangulo');

  stdout.write('Deseja calcular a área de quel objeto?: ');
  String? entrada = stdin.readLineSync();

  if (entrada ==null || entrada.isEmpty) {
    print('Opção não pode ser nula.');
    return;
  }

  int opcao;

  try {
    opcao = int.parse(entrada);
  } catch (e) {
    print('Entre com opção válida.');
    return;
  }

  switch (opcao) {
    case 1:
      stdout.write('Digite o lado do quadrado: ');
      String? medidaLado = stdin.readLineSync();

      if (medidaLado ==null || medidaLado.isEmpty) {
        print('Opção não pode ser nula.');
        return;
      }

      double? ladoQuadrado;

      try {
        ladoQuadrado = double.parse(medidaLado);
      } catch (e) {
        print('Entre com opção válida.');
        return;
      }
      
      double areaQuandrado = pow(ladoQuadrado, 2).toDouble();
      print('A área do quandrado é: ${areaQuandrado}');
      break;

    case 2:
      stdout.write('Digite a altura do retângulo: ');
      String? medidaAltura = stdin.readLineSync();

      stdout.write('Digite a base do retângulo: ');
      String? medidaBase = stdin.readLineSync();

      if (medidaAltura == null || medidaAltura.isEmpty ||
        medidaBase == null || medidaBase.isEmpty) {
          print('Valor não pode ser nulo.');
          return;
        }

      double altura;
      double base;

      try {
        altura = double.parse(medidaAltura);
        base = double.parse(medidaBase);
      } catch (e) {
        print('Digite um valor válido.');
        return;
      }

      double areaRetangulo = base * altura;
      print('A área do retangulo é: ${areaRetangulo}');
      break;

    case 3:
      stdout.write('Digite o raio do círculo: ');
      String? medidaRaio = stdin.readLineSync();

      if (medidaRaio ==null || medidaRaio.isEmpty) {
        print('Opção não pode ser nula.');
        return;
      }

      double? raio;
      

      try {
        raio = double.parse(medidaRaio);
      } catch (e) {
        print('Entre com opção válida.');
        return;
      }
      
      double areaCirculo = 3.14 * pow(raio, 2).toDouble();
      print('A área do circulo é: ${areaCirculo}');
      break;

    case 4:
      stdout.write('Digite a altura do retângulo: ');
      String? medidaAlturaTriangulo = stdin.readLineSync();

      stdout.write('Digite a base do retângulo: ');
      String? medidaBaseTriangulo = stdin.readLineSync();

      if (medidaAlturaTriangulo == null || medidaAlturaTriangulo.isEmpty ||
        medidaBaseTriangulo == null || medidaBaseTriangulo.isEmpty) {
          print('Valor não pode ser nulo.');
          return;
        }

      double alturaTriangulo;
      double baseTriangulo;

      try {
        alturaTriangulo = double.parse(medidaAlturaTriangulo);
        baseTriangulo = double.parse(medidaBaseTriangulo);
      } catch (e) {
        print('Digite um valor válido.');
        return;
      }

      double areaTriangulo = (baseTriangulo * alturaTriangulo) / 2;
      print('A área do retangulo é: ${areaTriangulo}');
      break;
    
  }


}
