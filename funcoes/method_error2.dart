void main() {
  print('-' * 70);
  print('TEstando NoSuchMethodError');
  print('-' * 70);

  try {
    // Variável booleana
    dynamic variavel = true;
    // Tentando iterar
    variavel++;
  } catch (e) {
    print('Erro!!! $e');
    print('-' * 70);
  }
}
