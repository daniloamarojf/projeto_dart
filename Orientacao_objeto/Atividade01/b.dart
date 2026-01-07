// Faça um programa que peça um ano qualquer. 
//O programa deverá calcular e imprimir a idade.

import 'dart:io';

class Calculos {
  int anoAtual = DateTime.now().year;
  int anoNascimento = 0;

  int calcularIdade() {
    int idade = anoAtual - anoNascimento;
    print('A idade é ${idade} anos');
    return idade;
  }

  void entradaDados() {
    
    while (true) {

      stdout.write('Qual o ano de nascimento?: ');
      String? entrada = stdin.readLineSync();

      if (entrada == null || entrada.isEmpty) {
        print('Entrada não pode ser nula.');
        continue;
      }

      

      try {
        anoNascimento = int.parse(entrada);
      } catch(e) {
        
        print('Entrada inválida');
        continue;
      }

    }
    

  }
}

void main() {

  var calculos = Calculos();

  calculos.entradaDados();
  calculos.calcularIdade();
}

