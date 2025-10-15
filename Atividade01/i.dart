// Faça um programa que receba um número inteiro. 
//O programa deverá imprimir tabuada de multiplicação 
//deste número.
import 'dart:io';

void main() {
    print('-' * 50);
    print('Exercício "I" - Tabuada de multiplicação');
    print('-' * 50);

    stdout.write('Deseja visualizar a tabuada de qual número?: ');
    String? entrada = stdin.readLineSync();

    if (entrada == null || entrada.isEmpty) {
        print('Número não pode ser nulo.');
        return;
    }

    int numero;
    int resultado;

    try {
        numero = int.parse(entrada);
    } catch (e) {
        print('Digite um valor válido.');
        return;
    }

    print('-' * 50);
    print('TABUADA DE NÚMERO "${numero}"');
    print('-' * 50);

    for (int i = 1; i <= 10; i++) {
        resultado = i * numero;
        print('${i} x ${numero} = ${resultado}');
    }
}


