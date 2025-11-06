void main() {
  // -------------------------------------------
  // Map de agenda: cada chave é o nome da pessoa
  // e cada valor é outro Map com informações detalhadas (idade e email)
  Map<String, dynamic> agenda = {
    'John': {'idade': 50, 'email': 'John@gamil.com'},
    'Jane': {'idade': 40, 'email': 'jane@gamil.com'},
  };

  // ---------------------------------------------
  // Map de cadastro pessoal: chave -> valor com tipos variados (int, double, String)
  Map<String, dynamic> cadastro = {
    'nome': 'John Doe',
    'nascimento': 1970,
    'altura': 1.80,
    'est_civil': 'solteiro',
    'cidade': 'Juiz de Fora',
    'uf': 'MG',
  };

  // ------------------------------------------------
  // Saida formatada
  print('' * 70);
  print('Minha agenda');
  print(agenda); // imprime o Map completo
  print('-' * 70);

  print('-' * 70);
  print('Meu cadastro');
  print(cadastro);
  print('-' * 70);
}
