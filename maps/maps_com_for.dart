void main() {
  Map<String, int> meuMap = {'a': 1, 'b': 2, 'c': 3};

  // 1. Usando entries -> percorre pares cgave/valor diretamente
  print('-' * 70);
  print('VARREDURA COM entries');
  print('-' * 70);
  for (var entrada in meuMap.entries) {
    String chave = entrada.key;
    int valor = entrada.value;
    print('$chave: $valor');
  }
  print('-' * 70);

  // 2. Usando key -> percorre apenas a chave
  // Podemos recuperar o valor acessando o Map com chave
  Map<String, dynamic> meuMap2 = {'Nome': 'John Doe', 'nascimento': 1970};

  print('VARREDURA COM key');
  print('' * 70);
  for (String chave in meuMap2.keys) {
    dynamic valor = meuMap2[chave]; // busca o valor correspondente à chave
    print('$chave: $valor');
  }
  print('-' * 70);

  // 3. Usando values -> percorre apenas os valores do Map
  Map<String, dynamic> meuMap3 = {'Nome': 'John Doe', 'nascimento': 1970};

  print('VARREDUR COM values');
  print('-' * 70);
  for (var valor in meuMap3.values) {
    print(valor);
  }
  print('-' * 70);
}
