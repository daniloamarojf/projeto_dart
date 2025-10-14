// Faça um programa que receba e divida 2 números. 
//A saída da divisão precisará ser formatada com 4 casas decimais.

import 'dart:io';

// função para realizar a divisão
double  dividir (double a, double b){
  return a / b;
}

// Função para verificar os termos(ler e validar a entrada)
double verificarTermos (String termo) {
  while (true) {
    stdout.write('Digite o ${termo}: ');

    // incluir String? pois readLineSync aceita valores nulos
    String? numero = stdin.readLineSync(); 

    // Validação para não aceitar valores nulos
    if (numero == null || numero.isEmpty) {
      print('Valor não pode ser nulo.');
      continue;
    }

  // Converte a string em double; se der erro pede a entrada novamente
    try {
      return double.parse(numero);
    } catch (e) {
      print('Digite um valor válido.');
    }
  }
}

void main() {
  print('-' * 50);
  print('Atividade "E" - Cálculo de divisão');
  print('-' * 50);

  // As variáveis estão recebendo os numeros
  double numero1 = verificarTermos('dividendo');
  double numero2 = verificarTermos('divisor');

  // Verificando se o divisor é diferente de zero
  if (numero2 != 0) {
    double resultado = dividir(numero1, numero2);

    print('-' * 50);
    print('O Quociente é: ${resultado.toStringAsFixed(4)}');
    print('-' * 50);
  } else {
    print('Erro: Divisão por zero não permitida.');
  }

  
}

