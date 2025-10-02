import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    print(i); //quebra de linha
  }

  for (int i = 1; i <= 5; i++) {
    stdout.write('$i '); //sem quebra de linha
  }
}
/**
 * Neste exemplo, a variável i é inicializada 
 * com o valor 1 antes do início do loop.
 * A condição de controle 1 <= 5 verifica se a 
 * variável i é menor ou igual a 5. Enquanto
 * essa condição for verdadeira, o bloco de
 * código dentro do loop será execultado.
 * O incremento i++ é execultao após cada iteração,
 * adicionando 1 à variável i. O resultado desse 
 * código seá a impressão dos númros de
 * 1 a 5 na saída parão.
 */
