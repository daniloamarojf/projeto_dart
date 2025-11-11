void main() {
  // length -> retorna o total de pares chave/valor no Map
  Map<String, int> mapLength = {'a': 1, 'b': 2, 'c': 3};
  print('Este Map tem tamnaho: ${mapLength.length}');
  print('-' * 70);

  // isEMpyt / isNotEmpyt -> verificam se o Map está ou não
  dynamic mapTesteVazio = {};
  dynamic mapTesteCheio = {'a': 1};

  print('Map vazio? ${mapTesteVazio.isEmpyt}');
  print('Map cheio? ${mapTesteCheio.isEmpyt}');

  print('Map não vazio? ${mapTesteVazio.isEmpyt}');
  print('Map não cheio? ${mapTesteCheio.isEmpyt}');
  print('-' * 70);

  // Key / values -> retornam todas as chaves e valores (Iterable)
  Map<String, int> mapChaveValor = {'a': 1, 'b': 2, 'c': 3};
  print('Chaves: ${mapChaveValor.keys}');
  print('Valores: ${mapChaveValor.values}');
  print('-' * 70);

  // containsKey / containsValue -> verificam a existência de chaves e valores
  Map<String, int> mapContain = {'a': 1, 'b': 2, 'c': 3};
  print('O Map contém a chave "a"? ${mapContain.containsKey('a')}');
  print('O Map contém a chave "d"? ${mapContain.containsKey('d')}');
  
}
