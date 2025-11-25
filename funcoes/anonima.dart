void main() {
  print('-' * 70);
  print('EXEMPLO DE FUNÇÃO ANÔNIMA: BASICA');
  print('-' * 70);

  List<int> numeros = [1, 2, 3, 4, 5];

  // Em uma varrredura forEach para retornar o dobro dos números
  numeros.forEach((numero) {
      print(numero * 2);
    });
}
