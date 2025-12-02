// 8. Transformação de Lista de Palavras em Lista de Comprimentos
// Dada uma lista de palavras, crie uma nova lista de inteiros onde
// cada inteiro representa o número de caracteres da palavra
// correspondente na lista original.

import 'dart:io';

void main() {
  List<String> entradaDados() {
    List<String> palavras = [];

    for (int i = 0; i <= 5; i++) {
      stdout.write('${i + 1}ª Palavra: ');
      String? palavra = stdin.readLineSync();

      if (palavra == null || palavra.isEmpty) {
        print('Entrada não pode ser nula');
        i--;
        continue;
      }
      palavras.add(palavra);
    }
    print('===> Lista de Palavras: $palavras');
    return palavras;
  }

  List<int> calcularComprimento(List<String> entradaDados) {
    List<int> comprimento = [];
    for (String palavra in entradaDados) {
      comprimento = entradaDados[palavra.length];
    }
  }

  while (true) {
    // === Cabeçalho ===
    print('-' * 50);
    print('8. Transformação de Lista de Palavras em Lista de Comprimentos');
    print('-' * 50);

    entradaDados();
  }
}
