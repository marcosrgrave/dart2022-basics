import 'dart:io';
import 'dart:math';

import 'encapsulation.dart';

void main() {
  aula8_();
}

void aula1_tiposVariaveisBasicas() {
  String meuNome = "Marcos";
  print(meuNome);

  int numeroInteiro = 2;
  print(numeroInteiro);

  double numeroReal = 3.3234;
  print(numeroReal);

  bool trueOrFalse = true;
  print(trueOrFalse);

  List<String> listaStrings = ["string1", "string2"];
  print(listaStrings);
  print(listaStrings[0]);
  print("primeiro item: ${listaStrings[0]}\nsegundo item: ${listaStrings[1]}");
}

void aula2_nullSafety() {
  // o null-safety impede que as variáveis recebam valores nulos.
  // permitir valores nulos facilita a ocorrência de bugs.
  // nulo é "nada", ou seja, não é palpável para o software.
  // no caso de uma pesquisa por um valor nulo, o sistema precisará tratar este caso.

  // iniciando variável com valor nulo
  String? nome2; // com a interrogação: valor inicial = nulo.
  print(nome2); // retorna null

  // escolhendo um valor aletaório de uma lista
  List<String> listaNomes; // sem a interrogação: valor inicial = inexistente.
  listaNomes = ["nome1", "nome2", "nome3", "nome4", "nome5"];
  String nomeEscolhido = (listaNomes..shuffle()).first;
  print("Random name chosen: ${nomeEscolhido}"); // se for null, retornará erro

  // exclamação: indica ao dart que aquela variável não possuirá valor nulo.
  print(nomeEscolhido!);

  // late: indica que, após receber um valor, este nunca mais poderá ser nulo.
  late String nome3;
  nome3 = "algum nome ae";
  // nome3 = null;  // como a variável já recebeu um valor antes, dará erro
  print(nome3);
}

void aula3_estruturasControleDeFluxo() {
  // IF
  // criando um booleando aleatório e agindo com base neste
  bool forward = Random().nextBool();
  if (forward) {
    print("move forward");
  } else {
    print("move backward");
  }

  // SWITCH
  // definindo casos conforme o valor de uma variável
  int value = 2;
  value = 3;
  switch (value) {
    case 1:
      print("UM");
      break;
    case 2:
      print("DOIS");
      break;
    default: // valor padrão, ou seja, quando não corresponde a nenhum dos casos.
      print("default");
  }
}

void aula4_estruturasRepeticao() {
  // FOR
  int num_tabuada = 3;
  print("Tabuada do ${num_tabuada}");
  for (int i = 1; i <= 10; i++) {
    int resultado_tabuada = i * num_tabuada;
    print("${i} x ${num_tabuada} = ${resultado_tabuada}");
  }

  // WHILE
  int cont = 0;
  while (true) {
    cont++;
    print(cont);
    if (cont == 10) {
      break;
    }
  }
}

void aula5_classesEMetodos() {
  // funcao que retorna uma string...
  // ... e que possui um parâmetro do tipo string
  String printsAndReturnString(String txt) {
    print(txt);
    return "string printed";
  }

  // simplesmente executando a função logo acima
  printsAndReturnString("Hello World!");

  // instanciando, criando um objeto e printando uma de suas características
  var carro1 = Carro("Opala", "Ford", 1980, 27560.37);
  print("Modelo do carro: ${carro1.modelo}");
}

// criando classe utilizada na aula 5
class Carro {
  // final: indica que a variável terá sempre o mesmo tipo (string, int, etc.)
  final String modelo;
  final String marca;
  final int ano;
  final double quilometragem;

  Carro(this.modelo, this.marca, this.ano, this.quilometragem); // Constructor
}

// utilizando classe de outro arquivo (import)
void aula6_encapsulamento() {
  // imports não permitem a visualização de argumentos privados (_arg)
  Person pessoa = Person("Marcos");
  print(pessoa.name);
}

// apenas testando uma forma de input do usuário no dart
void testeInput() {
  String? inputString = stdin.readLineSync(); // input no tipo padrão (String)
  int inputInt = int.parse(inputString!); // de String para inteiro
  print(inputString);
}

void aula7_interfacesHerancasEPolimorfismo() {
  // o que é uma abstract class?
  // qual a diferença de extends e implements?

  // ambas podem alterar as características do pai
  String test1 = Dog().comunication;
  String test2 = Cat().comunication;
  print("${test1} | ${test2}");

  // ambas podem  manter as características do pai
  String test3 = Dog().caracteristicaDoPai;
  String test4 = Cat().caracteristicaDoPai;
  print("${test3} | ${test4}");

  String pagarComCartao = CreditCardPaymentMethod().pay();
  String pagarComTransferencia = BankTransferPaymentMethod().pay();
  print("${pagarComCartao} | ${pagarComTransferencia}");
}

// classe para testar implements e extends (aula7)
abstract class Animal {
  String comunication = "Standard Comunication";
  String caracteristicaDoPai = "caracteristica herdada do pai";
}

// implements: necessário definir os mesmos parâmetros da classe pai
class Dog implements Animal {
  String comunication = "AuAu";

  // implements exige que sejam definidas todas as características do pai...
  // ...mesmo estas sendo iguais ou não
  String caracteristicaDoPai = "caracteristica herdada do pai";
}

// extends: Herda características da classe pai (Herança)
class Cat extends Animal {
  // extends: já puxa os mesmos parâmetros e valores da classe mãe
  String comunication = "Miau";
}

// classe para testar Polimorfismo (implements)
abstract class PaymentMethod {
  String pay();
}

class CreditCardPaymentMethod implements PaymentMethod {
  pay() {
    return "Paid with Credit Card";
  }
}

class BankTransferPaymentMethod implements PaymentMethod {
  pay() {
    return "Paid with Bank Transfer";
  }
}

void aula8_() {
  return ;
}
