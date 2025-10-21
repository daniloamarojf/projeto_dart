// Faça um programa para calcular juros.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Exercício "S" - Calcular Juros');
  print('-' * 50);

  stdout.write('Digite a valor R\$: ');
  String? entradaValor = stdin.readLineSync();

  stdout.write('Digite a taxa de juros (%):');
  String? entradaTaxa = stdin.readLineSync();

  if (entradaValor == null ||
      entradaValor.isEmpty ||
      entradaTaxa == null ||
      entradaTaxa.isEmpty) {
    print('Valores não podem ser nulos.');
    return;
  }

  double valor;
  double taxa;

  try {
    valor = double.parse(entradaValor);
    taxa = double.parse(entradaTaxa);
  } catch (e) {
    print('Digite valores válidos');
    return;
  }

  double taxaJuros = taxa / 100;
  double comJuros = (valor * taxaJuros) + valor;

  print('-' * 50);
  print('O valor de: R\$ ${valor} com juros de: ${taxa}% é: R\$ ${comJuros}');
  print('-' * 50);
}
