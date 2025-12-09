import 'dart:io';

class Compromisso {
  String titulo;
  String data;
  String hora;
  String descricao;

  // Construtor com parâmetros nomeados e obrigatórios (requerid)
  Compromisso({
    required this.titulo,
    required this.data,
    required this.hora,
    required this.descricao,
  });

  // Método para exibir o compromisso formatado
  // overrride sobrescreve o método toString, utilizando para exibição
  @override
  String toString() {
    return 'Título: $titulo | Data: $data | Hora: $hora | Descrição: $descricao';
  }
}

// Classe Agenda que guarda múltiplos compromissos
class Agenda {
  List<Compromisso> compromissos = [];

  // Adiciona um compromisso à lista
  void adicionarCompromisso(Compromisso compromisso) {
    compromissos.add(compromisso);
    print('\nCompromisso adicionada com sucesso!\n');
  }

  // Lista todos os compromissos registrados
  void listarCompromisssos() {
    if (compromissos.isEmpty) {
      print('\nNenhum compromisso cadastrado.\n');
    } else {
      print('\nLista de Compromissos:');
      for (int i = 0; i < compromissos.length; i++) {
        print('${i + 1}. ${compromissos[i]}');
      }
    }
  }
}

// Função para ler texto com validação de null e vazio
String lerEntrada(String mensagem) {
  String? entrada;
  do {
    stdout.write(mensagem);
    entrada = stdin.readLineSync();

    // Validação null safety (antrada != null)  e vazio
    if (entrada == null || entrada.trim().isEmpty) {
      print('Entrada inválida. Por favor, informe um valor.');
    }
  } while (entrada == null || entrada.trim().isEmpty);

  return entrada.trim();
}

// Função para validar formato de data DD-MM-YYYY usando regex
String lerData() {
  String data;
  RegExp exp = RegExp(r'^\d{2}-\d{2}-\d{4}$'); // Dia-Mês-Ano

  do {
    data = lerEntrada('Data (DD-MM-YYYY): ');
    if (!exp.hasMatch(data)) {
      print('Formato inválido! Use DD-MM-YYYY. Ex. 15-05-2025');
    }
  } while (!exp.hasMatch(data));

  return data;
}

// Função para validar formato de hora HH:MM usando regex
String lerHora() {
  String hora;
  RegExp exp = RegExp(r'\d{2}:\d{2}$'); // Horas:Minutos

  do {
    hora = lerEntrada('Hora (HH:MM): ');
    if (!exp.hasMatch(hora)) {
      print('Formato inválido! Use HH:MM. Ex. 10:10');
    }
  } while (!exp.hasMatch(hora));

  return hora;
}

void main() {
  Agenda agenda = Agenda();
  int opcao = 0;

  do {
    // Exibição de menu
    print('\n==== MENU AGENDA =====');
    print('1 - Adicionar Compromissso');
    print('2 - Listar Compromissos');
    print('3 - Sair');
    stdout.write('Escolha uma opção: ');

    // Conversão segura de entrada para inteiro
    String? entradaOpcao = stdin.readLineSync();
    opcao = int.tryParse(entradaOpcao ?? '') ?? 0;

    switch (opcao) {
      case 1:
        print('\n--- NOVO COMPROMISSO ---');

        // Coleta e validação dos dados
        String titulo = lerEntrada('Titulo: ');
        String data = lerData();
        String hora = lerHora();
        String descricao = lerEntrada('Descrição');

        // Criação de objeto Compromisso
        Compromisso novo = Compromisso(
          titulo: titulo,
          data: data,
          hora: hora,
          descricao: descricao,
        );

        // Adicionando à agenda
        agenda.adicionarCompromisso(novo);
        break;

      case 2:
        // Listar compromissos cadastrados
        agenda.listarCompromisssos();
        break;

      case 3:
        print('\nOpção invélida. tente novemante.');
    }
    // faz com que o programa continue repetindo o menu enquanto a
    // variável opção for diferente de 3.
  } while (opcao != 3);
}
