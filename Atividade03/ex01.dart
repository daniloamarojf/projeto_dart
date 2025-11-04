// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro
// filtrar apenas os números que são pares e, simultaneamente,
// maiores que 10. Após a filtragem, deve-se calcular a soma
// total desses números restantes.
import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('1. Filtragem e Soma Condicional de Pares');
  print('=' * 50);

  while (true) {

    // === Declarando variáveis e listas ===
    int numero1;
    int numero2;
    int soma = 0;
    List<int> numerosSomados = [];
    List<int> numerosInteiros = [];

    // === Entrada de dados ====
    stdout.write('Digite o 1º número da lista de interios: ');
    String? entrada1 = stdin.readLineSync();

    stdout.write('Digite o 2º número da lista de interios: ');
    String? entrada2 = stdin.readLineSync();

    // Fazendo o tratamento da variável ===
    if (entrada1 == null ||
        entrada1.isEmpty ||
        entrada2 == null ||
        entrada2.isEmpty) {
      print('Valor não podem ser nulos');
      continue;
    }

    try {
      numero1 = int.parse(entrada1);
      numero2 = int.parse(entrada2);
    } catch (e) {
      print('Entrada inválida.');
      continue;
    }

    // === Adicionando os números à lista ===
    for (int n = numero1; n <= numero2; n++) {
      numerosInteiros.add(n);
    }


    // === Filtrando números pares e maiores que dez ===
    for (int i = numero1; i <= numero2; i++) {
      if (i % 2 == 0 && i > 10) {
        numerosSomados.add(i);
        soma += i;
      }
    }

    // === Print dos resultados
    print('===> Lista original: $numerosInteiros');
    print('===> Lista com números pares e maiores que dez: $numerosSomados');
    print('===> A soma dos número é: $soma');

    // Opção para sair ou continuar
    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
