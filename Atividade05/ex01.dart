// 1. Filtragem e Soma Condicional de Pares
// Dada uma lista de números inteiros, o objetivo é primeiro
// filtrar apenas os números que são pares e, simultaneamente,
// maiores que 10. Após a filtragem, deve-se calcular a soma
// total desses números restantes.
import 'dart:io';

// === Função para entrada de dados ====
List<int> entradaDados() {
  List<int> numerosInteiros = [];
  int num1 = 0;
  int num2 = 0;
  for (int i = 0; i <= 1; i++) {
    stdout.write('Digite o ${i + 1}º número da lista de inteiros: ');
    String? entrada = stdin.readLineSync();

    // Fazendo o tratamento da variável ===
    if (entrada == null || entrada.isEmpty) {
      print('Valores não podem ser nulos');
      i--;
      continue;
    }

    try {
      if (i == 0) {
        num1 = int.parse(entrada);
      } else {
        num2 = int.parse(entrada);
      }
    } catch (e) {
      print('Entrada inválida.');
      i--;
      continue;
    }
  }

  //====== Adicionando os números à lista ======
  for (int i = num1; i <= num2; i++) {
    numerosInteiros.add(i);
  }
  print('===> Tabela original: $numerosInteiros');
  return numerosInteiros;
}

//====== Função para filtrar os numeros pares e maiores que dez ====== 
List filtrarDados(List<int> numerosInteiros) {
  int soma = 0;
  List<int> numerosSomados = [];

  for (int i in numerosInteiros) {
    if (i % 2 == 0 && i > 10) {
      numerosSomados.add(i);
      soma += i;
    }
  }
  print('===> Números pares e maiores que dez: $numerosSomados');
  print('===> A soma dos números é: $soma');
  return [numerosSomados, soma];
}

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('1. Filtragem e Soma Condicional de Pares');
  print('=' * 50);

  while (true) {
    
    // ====== Chamando as funções ======
    List<int> numerosInteiros = entradaDados();
    filtrarDados(numerosInteiros);

    // Opção para sair ou continuar
    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
