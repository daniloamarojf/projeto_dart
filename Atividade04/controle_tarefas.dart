//  Controle de tarefas do dia a dia
// - Armazenar tarefa como objeto do Map............... OK
// - Chaves: titulo, descrição e concluida............. OK
// - Tarefa deve ser armazenada dentro de uma lista.... OK
// - Adicionar tarefas................................. OK
// - Listar tarefas.................................... OK
// - Marcar tarefa como concluida...................... OK
// - Excluir as finalizadas............................ OK
// - Validações nulas e vazias......................... ??
// - Condiconais e repetição para menu................. ??925

// Resumo:
// - Tarefas pendentes................................. OK
// - Tarefas concluidas................................ OK

// * Filtro de busca por título ultilizando o metodo .where.. OK

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

    // ====== Incluir tarefas =======
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

      // ====== Visualizar as tarefas ======
    } else if (opcao == 2) {
      while (true) {
        print('\nMENU LISTAR');
        print('1 - Listar tarefas pendentes.');
        print('2 - Listar tarefas concluidas.');
        print('3 - Listar todas as tarefas\n');

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

        // ====== Visualizar somente as tarefas pendentes ======
        if (opcao == 1) {
          if (tarefas.isEmpty) {
            print('===> Nenhuma tarefa pendente.\n');
          } else {
            List<Map> tarefasPendentes = tarefas
                .where((tarefa) => tarefa['status'] == false)
                .toList();

            print('* * * Tarefas pendentes * * *');

            for (int i = 0; i < tarefasPendentes.length; i++) {
              var lista = tarefasPendentes[i];

              String statusTexto = lista['status'] ? 'Concluída' : 'Pendente';
              print(
                '${i + 1}. Titulo: ${lista['titulo']} Descrição: ${lista['descricao']} Status:$statusTexto}\n',
              );
            }

            // ====== Marcar tarefas como concluída ======
            while (true) {
              stdout.write(
                'Deseja marcar alguma TAREFA como CONCLUIDA (s/n)?: ',
              );
              String? resposta2 = stdin.readLineSync();

              if (resposta2 != null && resposta2.toLowerCase() == 's') {
                stdout.write('Qual tarefa deseja marcar como concluida? ');
                String? respostaConcluida = stdin.readLineSync();

                if (respostaConcluida == null || respostaConcluida.isEmpty) {
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
                print('\nVoltando ao menu principal');
                break;
              }
            }
            break;
          }

          // ====== Visualizar somente as tarefas concluídas ======
        } else if (opcao == 2) {
          List<Map> tarefasConcluidas = tarefas
              .where((tarefa) => tarefa['status'] == true)
              .toList();
          if (tarefasConcluidas.isEmpty) {
            print('===> Nenhuma tarefa concluida.\n');
          } else {
            print('* * * Tarefas Concluídas * * *');
            for (int i = 0; i < tarefasConcluidas.length; i++) {
              var listaConcluida = tarefasConcluidas[i];

              String statusTexto = listaConcluida['status']
                  ? 'Concluída'
                  : 'Pendente';
              print(
                '${i + 1}. Titulo: ${listaConcluida['titulo']} Descrição: ${listaConcluida['descricao']} Status: $statusTexto\n',
              );
            }

            // ====== Excluir tarefas concluídas ======
            stdout.write('Deseja EXCLUIR as tarefas CONCLUÍDAS (s/n)?');
            String? respostaExclusao = stdin.readLineSync();

            if (respostaExclusao != null &&
                respostaExclusao.toLowerCase() == 's') {
              stdout.write(
                'Todas as tarefas CONCLUÍDAS serão apagadas. Confirma essa ação? (s/n) ',
              );
              String? respostaConfirmacao = stdin.readLineSync();

              if (respostaConfirmacao == null || respostaConfirmacao.isEmpty) {
                print('Opção não pode se nula. Escolha uma tarefa.\n');
                continue;
              }

              tarefas.removeWhere((tarefas) => tarefas['status'] == true);
              print('Todas as tarefas concluídas foram excluídas.');
            }
          }
          print('\nVoltando ao menu principal');
          break;

          // ====== Visualizar todas as tarefas ======
        } else if (opcao == 3) {
          if (tarefas.isEmpty) {
            print('===> Nenhuma tarefa pendente.\n');
          } else {
            print('* * * Tarefas pendentes e concluídas * * *');

            for (int i = 0; i < tarefas.length; i++) {
              var lista = tarefas[i];

              String statusTexto = lista['status'] ? 'Concluída' : 'Pendente';
              print(
                '${i + 1}. Titulo: ${lista['titulo']} Descrição: ${lista['descricao']} Status:$statusTexto}\n',
              );
            }
            print('\nVoltando ao menu principal');
            break;
          }
        }
      }
    } else {
      print('Saindo do Programa...');
      break;
    }
  }
}
