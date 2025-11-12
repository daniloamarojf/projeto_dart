void main() {
  // length -> retorna o total de pares chave/valor no Map
  Map<String, int> mapLength = {'a': 1, 'b': 2, 'c': 3};
  print('Este Map tem tamnaho: ${mapLength.length}');
  print('-' * 70);

  // isEMpyt / isNotEmpyt -> verificam se o Map está ou não
  dynamic mapTesteVazio = {};
  dynamic mapTesteCheio = {'a': 1};

  print('Map vazio? ${mapTesteVazio.isEmpty}'); // true
  print('Map cheio? ${mapTesteCheio.isEmpty}'); // false

  print('Map não vazio? ${mapTesteVazio.isEmpty}'); // false
  print('Map não cheio? ${mapTesteCheio.isEmpty}'); // true
  print('-' * 70);

  // Key / values -> retornam todas as chaves e valores (Iterable)
  Map<String, int> mapChaveValor = {'a': 1, 'b': 2, 'c': 3};
  print('Chaves: ${mapChaveValor.keys}'); // (a, b, c)
  print('Valores: ${mapChaveValor.values}'); // (1, 2, 3)
  print('-' * 70);

  // containsKey / containsValue -> verificam a existência de chaves e valores
  Map<String, int> mapContain = {'a': 1, 'b': 2, 'c': 3};
  print('O Map contém a chave "a"? ${mapContain.containsKey('a')}'); // true
  print('O Map contém a chave "d"? ${mapContain.containsKey('d')}'); // false

  print('O Map contém o valor 1? ${mapContain.containsValue(1)}'); // true
  print('O Map contém o valor 4? ${mapContain.containsValue(4)}'); // false
  print('-' * 70);

  // putIfAbsent -> adiciona uma chave/valor apenas se a chave não existir
  Map<String, int> testeAbsent = {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $testeAbsent');

  print('Adicionando o par chave/valor d:4');
  testeAbsent.putIfAbsent('d', () => 4);
  print(testeAbsent); // {'a': 1, 'b': 2, 'c': 3, 'd': 4};

  print('Tentando adicionar o par chave/valor d:5');
  testeAbsent.putIfAbsent('d', () => 5);
  print(testeAbsent); // não altera, pois "d"
  print('-' * 70);

  // remove -> remove um par chave/valor pela chave
  Map<String, int> testeRemove = {'a': 1, 'b': 2, 'c': 3};
  print('Map original: $testeRemove');
  testeRemove.remove('b');
  print('Após remover chave "b": $testeRemove'); // {a: 1, c: 3}
  print('-' * 70);

  // update -> altera o valor de uma chave existente
  // Se a chave não existir, pode ser criada com ifAbsent
  Map<String, int> mapUpdate = {'a': 1, 'b': 2, 'c': 3};
  print('Map origina: $mapUpdate');

  mapUpdate.update('b', (value) => value + 1);
  print('Após inclusão de d: $mapUpdate'); // {a: 1, b: 3, c: 3};

  mapUpdate.update('d', (value) => value + 1, ifAbsent: () => 4); // cria a chave d com valor 4
  print('Após inclusão de d: $mapUpdate'); // {a: 1, b: 3, c: 3, d: 4 };
}
