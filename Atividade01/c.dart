// Faça um programa que peça um ano qualquer. 
//O programa deverá calcular e imprimir a idade.
import 'dart:io';
void main() {

  print('-' * 50);
  print('Atividade "C" - Cálculo de Idade');
  print('-' * 50);

  DateTime dataAtual = DateTime.now();
  int anoAtual = dataAtual.year;

  stdout.write('Digite o ano de nascimento: ');
  int anoNascimento = int.parse(stdin.readLineSync()!);

  int idade = anoAtual - anoNascimento;


  if (anoNascimento <= anoAtual){
    print('A idade atual é: $idade');
  } else {
    print('Erro: Ano de nascimento maior que ano atual!');
  }
  
  print('-' * 50);
}
