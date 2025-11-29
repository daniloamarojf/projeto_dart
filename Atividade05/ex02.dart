// 2. Identificação e Contagem de Ocorrências Distintas
// Dada uma lista de inteiros que contém valores duplicados,
// o desafio é determinar quantos valores únicos existem na lista.
// A solução deve percorrer a lista e construir uma nova coleção
// (ou usar um Set temporário, se permitido, ou uma lista auxiliar)
// para armazenar apenas os elementos que ainda não foram vistos,
// reportando o total de elementos únicos ao final.

import 'dart:io';

List<int> determinarUnicos(List<int> numerosInteiros) {
  List<int> numerosUnicos = numerosInteiros.toSet().toList();
  print('===> Lista original: $numerosInteiros');
  print('===> Lista com elementos únicos: $numerosUnicos');
  print('Quantidade de elementos únicos: ${numerosUnicos.length}');

  return numerosUnicos;
}

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('2. Identificação e Contagem de Ocorrências Distintas');
  print('=' * 50);

  while (true) {
    List<int> numerosInteiros = [10, 20, 30, 10, 30, 40, 50, 10, 50, 60, 10, 20];

    determinarUnicos(numerosInteiros);
    

    stdout.write(
      'Digite "s" para sair ou  pressione Enter para ver novamente.',
    );
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
