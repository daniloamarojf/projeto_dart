// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova
// lista apenas as palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres;
// 2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

import 'dart:io';

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('6. Filtragem Dupla em Lista de Palavras');
  print('=' * 50);

  while (true) {
    List<String> palavras = [];
    List<String> palavrasSelecionadas = [];

    // === Loop para entrada do usuário
    for (int i = 1; i <= 5; i++) {
      stdout.write('${i}ª Palavra: ');
      String? palavra = stdin.readLineSync();

      // === Fazendo o tratamento das variáveis
      if (palavra == null || palavra.isEmpty) {
        print('Valor não podem ser nulos');
        i--;
        continue;
      }

      palavras.add(palavra.toUpperCase());
    }
    print('===> Lista de palavras:');
    print('$palavras');

    // Percorrendo a lista
    // Length para contar os elementos e encontrar os > que 5
    // Contains para encontar a a palavra que contém "a"
    for (String palavra in palavras) {
      if (palavra.length >= 5 && palavra.contains('A')) {
        palavrasSelecionadas.add(palavra);
      }
    }

    print('===> Lista com palavras com mais de 5 letras e que contém "a"');
    print('$palavrasSelecionadas');

    // Opção para sair ou continuar
    stdout.write('Digite "s" par sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
