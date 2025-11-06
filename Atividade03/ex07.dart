// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase)
// concatenando apenas as palavras que terminam com a letra 'R'
// (maiúscula ou minúscula). As palavras devem ser separadas por um
// espaço na frase final.

import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('-' * 50);
  print('7. Criação de Frase com Filtro');
  print('-' * 50);

  while (true) {
    List<String> palavras = [];
    List<String> frase = [];

    // === Loop para entrada do usuário
    for (int i = 1; i <= 5; i++) {
      stdout.write('${i}ª Palavra: ');
      String? palavra = stdin.readLineSync();

      // === Fazendo o tratamento das variáveis
      if (palavra == null || palavra.isEmpty) {
        print('Palavra não pode ser nulo.');
        i--;
        continue;
      }

      palavras.add(palavra);
    }
  }
}
