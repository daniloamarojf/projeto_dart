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
          tarefas.add({
            'titulo': titulo,
            'descricao': descricao,
            'status': 'false',
          });
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
            '${i + 1}. Titulo: ${lista['titulo']} Descrição: ${lista['descricao']} Status:${lista['status']}\n',
          );
        }
      }

      while (true) {
        print('------ Escolha uma Opção: -------');
        print('1 - Marcar tarefas como concluida');
        print('2 - Excluir tarefas concluidas');
        print('3 - Voltar ao CONTROLE DE TAREFAS\n');

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

        if (opcao == 1) {
          stdout.write('Qual tarefa deseja marcar como concluida? ');
          String? entrada = stdin.readLineSync();

          if (entrada == null || entrada.isEmpty) {
            print('Opção não pode se nula. Escolha uma tarefa.\n');
            continue;
          }

          int indice;

          try {
            indice = int.parse(entrada);
          } catch (e) {
            print('Tarefa não existe. Escolha uma tarefa.\n');
            continue;
          }

          tarefas[indice - 1]['status'] = true;
          print('Tarefa marcada como concluida.\n');
          print(tarefas);

          stdout.write('Deseja marcar outra tarefa como concluida: (s/n)?: ');
          String? resposta = stdin.readLineSync();

          if (resposta == null || resposta.toLowerCase() != 's') {
            print('\nVoltando ao menu . . .\n');
            break;
          }
        }
      }

      // === Marcar como concluida ===
    } else if (opcao == 3) {}
  }
}
