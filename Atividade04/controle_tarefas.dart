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
    print('3 - Sair\n');

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
            'status': false,
          });
          print('Tarefa adicionada com sucesso!\n');
        }

        stdout.write('Deseja incluir outra tarefa (s/n)?: ');
        String? resposta = stdin.readLineSync();

        if (resposta == null || resposta.toLowerCase() != 's') {
          print('\nVoltando ao menu . . .\n');
          break;
        }
      }

      // === Visualizar as tarefas ===
    } else if (opcao == 2) {
      while (true) {
        print('\nMENU LISTAR');
        print('1 - Listar tarefas pendentes.');
        print('2 - Listar tarefas concluidas.');
        print('3 - Sair\n');

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
          if (tarefas.isEmpty) {
            print('===> Nenhuma tarefa cadastada.\n');
          } else {
            List<Map> tarefasPendentes =
                tarefas.where((tarefa) => tarefa['status'] == false).toList();

            print('* * * Tarefas pendentes * * *');
            for (int i = 0; i < tarefasPendentes.length; i++) {
              var lista = tarefasPendentes[i];

              print(
                '${i + 1}. Titulo: ${lista['titulo']} Descrição: ${lista['descricao']} Status:${lista['status']}\n',
              );
            }

            while (true) {
              stdout.write(
                  'Deseja marcar alguma TAREFA como CONCLUIDA (s/n)?: ');
              String? resposta2 = stdin.readLineSync();

              if (resposta2 != null && resposta2.toLowerCase() == 's') {
                stdout.write('Qual tarefa deseja marcar como concluida? ');
                String? respostaConcluida = stdin.readLineSync();

                if (respostaConcluida == null ||
                    respostaConcluida.isEmpty) {
                  print('Opção não pode se nula. Escolha uma tarefa.\n');
                  continue;
                }

                int indice;

                try {
                  indice = int.parse(respostaConcluida);
                } catch (e) {
                  print('Tarefa não existe. Escolha uma tarefa.\n');
                  continue;
                }

                tarefas[indice - 1]['status'] = true;
                print('Tarefa marcada como concluida.\n');
                continue;
              } else {
                break;
              }
            }
          }
        } else if (opcao == 2) {
          if (tarefas.isEmpty) {
            print('===> Nenhuma tarefa cadastada.\n');
          } else {
            List<Map> tarefasConcluidas =
                tarefas.where((tarefa) => tarefa['status'] == true).toList();

            print('* * * Tarefas Concluídas * * *');
            for (int i = 0; i < tarefasConcluidas.length; i++) {
              var listaConcluida = tarefasConcluidas[i];

              print(
                  '${i + 1}. Titulo: ${listaConcluida['titulo']} Descrição: ${listaConcluida['descricao']} Status: ${listaConcluida['status']}\n');
            }

            stdout.write(
                'Deseja EXCLUIR as tarefas CONCLUÍDAS (s/n)?');
            String? respostaExclusao = stdin.readLineSync();

            if (respostaExclusao != null &&
                respostaExclusao.toLowerCase() == 's') {
              stdout.write(
                  'Todas as tarefas CONCLUÍDAS serão apagadas. Confirma essa ação? (s/n) ');
              String? respostaConfirmacao = stdin.readLineSync();

              if (respostaConfirmacao == null ||
                  respostaConfirmacao.isEmpty) {
                print('Opção não pode se nula. Escolha uma tarefa.\n');
                continue;
              }

              tarefas.removeWhere(
                  (tarefas) => tarefas['status'] == true);
            }
          }
        }
      }
    }
  }
}
