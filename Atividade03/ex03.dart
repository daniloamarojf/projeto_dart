// 3. Cálculo de Média Ponderada Após Descarte
// Considere uma lista de notas de alunos. O exercício exige
// que se descarte a menor nota da lista e, em seguida, calcule
// a média aritmética das notas restantes. O resultado deve
// ser um número decimal (double).

import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('3. Cálculo de Média Ponderada Após Descarte');
  print('=' * 50);

  while (true) {
    // === Declarando variáveis e listas
    int nota;
    int soma = 0;
    List<int> notas = [];

    // === Loop repetindo 4 veses para entrada do usuário
    for (int i = 1; i <= 4; i++) {
      stdout.write('Digite a nota${i}: ');
      String? entrada = stdin.readLineSync();

      // === Fazendo o tratamento das variáveis
      if (entrada == null || entrada.isEmpty) {
        print('Valor não podem ser nulos');
        continue;
      }

      try {
        nota = int.parse(entrada);
      } catch (e) {
        print('Entrada inválida.');
        continue;
      }

      notas.add(nota); // Adicionando as notas à lista
    }

    print('===> Lista de notas: $notas');

    // === Usando o método reduce para encontar a menor nota
    int menor = notas.reduce(
      (vl_acumulado, nota) => vl_acumulado < nota ? vl_acumulado : nota,
    );
    notas.remove(menor); // Da lista notas remove a menor
    print('===> Lista de notas (sem o menor valor): $notas');

    // === Percorrendo a lista e somando as notas
    for (nota in notas) {
      soma += nota;
    }

    double media = soma / notas.length;

    print('===> A média das notas é: ${media.toStringAsFixed(2)}');

    // Opção para sair ou continuar
    stdout.write('Digite "s" para sair ou pressione Enter para continuar');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
