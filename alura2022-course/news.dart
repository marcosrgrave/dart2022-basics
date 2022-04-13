main() {
  Object teste = new Teste();
  print(teste);

  /// documentacao de uma unica linha

  /**
  documentacao de varias linhas
  **/

  int i = 0;
  do {
    print(i++);
  } while (i < 5); // o mais comum é: while(cond) do{}, neste caso inverte

  // comentario de uma linha

  /*
  comentario de varias linhas
  */
}

class Teste {
  String text = "";
}

void funcTesteDocumentacao() {
  /**
  teste de documentacao de varias linhas
  **/
  return;
}
