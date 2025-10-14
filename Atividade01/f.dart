// Faça um programa que recebe um número inteiro e mostre o sucessor e antecessor.
import 'dart:io'; 
int calcularAntecessor (int numero){
  return numero - 1;
}

int calcularSucessor (int numero){
  return numero + 1;
}

int verificarNumero () {
  while(true) {
    stdout.write('Digite um número: ');
    String? valor = stdin.readLineSync();

    if (valor == null || valor.isEmpty) {
      print('Valor não pode ser nulo.');
      continue;
    }

    
    try {
      return int.parse(valor);
    } catch (e) {
      print('Digite um valor válido.');

    }
  }
}
void main() {

  print('-' * 50);
  print('Atividade "F" - Antecessor e Sucessor');
  print('-' * 50);

  
  int numero = verificarNumero();

  int antecessor = calcularAntecessor(numero);
  int sucessor = calcularSucessor(numero);
  

  print('-' * 50);
  print('O Antecessor de ${numero} é: $antecessor');
  print('O Sucessor de ${numero} é: $sucessor');
  print('-' * 50);

}
