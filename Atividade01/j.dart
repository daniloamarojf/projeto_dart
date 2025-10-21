// Faça um programa que receba um valor em reais, 
//depois calcule quantos euros, dólares e wons 
//dariam para comprar com esse valor.
import 'dart:io';

void main() {
  print('-' * 50);
  print('Atividade "K" - Conversão de Moedas');
  print('-' * 50);

  stdout.write('Digite o valor em reais: ');
  String? entrada = stdin.readLineSync();

  if (entrada == null || entrada.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  double valorReais;

  try {
    valorReais = double.parse(entrada);
  } catch (e) {
    print('Digite um valor válido');
    return;
  }

  print('-' * 50);
  print('1 - Dolar');
  print('2 - Euro');
  print('3 - Wons');

  stdout.write('Escolha uma opção para converção: ');
  String? numero = stdin.readLineSync();

   if (numero == null || numero.isEmpty) {
    print('Valor não pode ser nulo.');
    return;
  }

  double opcao;

  try {
    opcao = double.parse(numero);
  } catch (e) {
    print('Digite um valor válido');
    return;
  }

  


  switch (opcao) {
    
    case 1:
      double dolar = 5.47;
      double ValorDolar = valorReais / dolar;
      print('R\$ ${valorReais} equivale à \$ ${ValorDolar.toStringAsFixed(2)}');
      break;
    case 2:
    double euro = 6.38;
    double valorEuro = valorReais / euro;
    print('R\$ ${valorReais} equilave à € ${valorEuro.toStringAsFixed(2)}');
    break;
    case 3:
      double won = 0.004;
      double valorWon = valorReais / won;
      print('R\$ ${valorReais} equilave à w ${valorWon.toStringAsFixed(2)}');
  }

}