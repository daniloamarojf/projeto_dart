// 7. Criação de Frase com Filtro
// Dada uma lista de strings, crie uma única string (frase)
// concatenando apenas as palavras que terminam com a letra 'R'
// (maiúscula ou minúscula). As palavras devem ser separadas por um
// espaço na frase final.

import 'dart:io';

List<String> entradaDados() {
  List<String> palavras = [];

  // ====== Loop para entrada do usuário
  for (int i = 0; i <= 5; i++) {
    stdout.write('${i + 1}ª Palavra: ');
    String? palavra = stdin.readLineSync();

    // ====== Fazendo a trtamento da variável ======
    if (palavra == null || palavra.isEmpty) {
      print('Entrada não pode ser nula');
      i--;
      continue;
    }

    palavras.add(palavra.toUpperCase());
  }
  return palavras;
}

List concatenar(List<String> entradaDados) {
  List<String> palavrasSelecionadas = [];
  String? frase;
  for (String palavra in entradaDados) {
    if (palavra.endsWith('R')) {
      palavrasSelecionadas.add(palavra);
    }
    frase = palavrasSelecionadas.join(' ');
  }
  print('===> String concatenada é: ${frase}');
  return palavrasSelecionadas;
}

void main() {
  // === Cabeçalho ===
  print('-' * 50);
  print('7. Criação de Frase com Filtro');
  print('-' * 50);

  while (true) {
    concatenar(entradaDados());

    // Opção para sair ou continuar
    stdout.write('Digite "s" para sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
