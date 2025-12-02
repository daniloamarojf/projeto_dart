// 6. Filtragem Dupla em Lista de Palavras
// Dada uma lista de palavras (strings), filtre e colete em uma nova
// lista apenas as palavras que satisfazem duas condições simultâneas:
// 1) o comprimento da palavra deve ser maior que 5 caracteres;
// 2) a palavra deve começar com a letra 'A' (maiúscula ou minúscula).

import 'dart:io';

List<String> entradaDados() {
  List<String> palavras = [];

  // === Loop para entrada do usuário
  for (int i = 1; i <= 5; i++) {
    stdout.write('${i}ª Palavra: ');
    String? palavra = stdin.readLineSync();

    // === Fazendo o tratamento das variáveis
    if (palavra == null || palavra.isEmpty) {
      print('Entrada não pode ser nula');
      i--;
      continue;
    }

    palavras.add(palavra.toUpperCase());
  }
  print('===> Lista de palavras:');
  print('$palavras');
  return palavras;
}

List filtrarPalavras(List<String> entradaDados) {
  List<String> palavrasSelecionadas = [];

  // Percorrendo a lista
  // Length para contar os elementos e encontrar os > que 5
  // startsWith para encontar a palavra que começa com "a"
  for (String palavra in entradaDados) {
    if (palavra.length >= 5 && palavra.startsWith('A')) {
      palavrasSelecionadas.add(palavra);
    }
  }

  print('===> Lista com palavras com mais de 5 letras e que começam com "a"');
  print('$palavrasSelecionadas');
  return palavrasSelecionadas;
}

void main() {
  // === Cabeçalho ===
  print('=' * 50);
  print('6. Filtragem Dupla em Lista de Palavras');
  print('=' * 50);

  while (true) {

    filtrarPalavras(entradaDados());

    // Opção para sair ou continuar
    stdout.write('Digite "s" par sair ou pressione Enter para continuar.');
    String? resposta = stdin.readLineSync();

    if (resposta != null && resposta.toLowerCase() == 's') {
      print('Saindo do programa . . .');
      break;
    }
  }
}
