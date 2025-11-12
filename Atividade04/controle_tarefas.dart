//  Controle de tarefas do dia a dia
// - Armazenar tarefa como objeto do Map.
// - Chaves: titulo, descrição e concluida
// - Tarefa deve ser armazenada dentro de uma lista.
// - Adicionar tarefas
// - Listar tarefas
// - Marcar tarefa como concluida
// - Excluir as finalizadas
// - Validações nulas e vazias
// - Condiconais e repetição para menu.

// Resumo:
// - Tarefas pendentes
// - Tarefas concluidas

// * Filtro de busca por título ultilizando o metodo .where

import 'dart:io';

void main() {
  List<Map<String, dynamic>> tarefas = [];

  print('*' * 50);
  print('- - - CONTROLE DE TAREFAS - - -');
  print('*' * 50);

  while (true) {
    print('\nMENU PRINCIPAL');
    print('1 - Adicionar tarefa.');
    print('2 - Listar tarefas.');
    print('3 - Marcar como concluída.');
    print('4 - Excluir tarefas.');
    print('5 - Sair\n');

    stdout.write('Escolha uma opção: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
      print('Opção não pode se nula. Escolha uma opção.\n');
      continue;
    }

    int opcao;

    try {
      opcao = int.parse(entrada);
    } catch (e) {
      print('Opção inválida. Escolha uma opção.\n');
      continue;
    }

    // === Incluir tarefas ====
    if (opcao == 1) {
      while (true) {
        stdout.write('Título da tarefa: ');
        String? titulo = stdin.readLineSync();

        stdout.write('Descrição da tarefa: ');
        String? descricao = stdin.readLineSync();

        if (titulo == null ||
            titulo.trim().isEmpty ||
            descricao == null ||
            descricao.trim().isEmpty) {
          print('Entrada não pode ser nula.');
          continue;
        } else {
          tarefas.add({'titulo': titulo, 'descricao': descricao, 'status': 'Pendente'});
          print('Tarefa adicionada com sucesso!\n');
        }

        stdout.write('Deseja incluir outra pessoa (s/n)?: ');
        String? resposta = stdin.readLineSync();

        if (resposta == null || resposta.toLowerCase() != 's') {
          print('\nVoltando ao menu . . .\n');
          break;
        }
      }

      // === Visualizar as tarefas ===
    } else if (opcao == 2) {
      if (tarefas.isEmpty) {
        print('===> Nenhuma tarefa cadastada.\n');
      } else {
        print('* * * Lista de tarefas * * *');
        for (int i = 0; i < tarefas.length; i++) {
          var lista = tarefas[i];

          print(
            '${i + 1}. Titulo: ${lista['titulo']}\n   Descrição: ${lista['descricao']}\n   Status:${lista['staus']}\n',
          );
        }
      }
    } else if (opcao == 3) {}
  }
}
