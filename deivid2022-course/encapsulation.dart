class Person {
  final String name;

  // "_" indica uma característica privada
  // que somente o objeto precisa ter acesso
  String _cpf = "dado sensível";
  int _value = 24; // valor que será usado apenas pelo objeto

  int get valueReadOnly => _value; // tornando aquele valor consultável

  int setValue(int valueSetter) => _value = valueSetter; // setando o valor

  Person(this.name);
}

// void main() {
//   // quando se está no arquivo do objeto (sem import),
//   // é permitido o acesso aos argumentos privados
  
//   Person marcos = Person("Marcos");
//   print(marcos._cpf);

//   marcos.valueReadOnly; // consultando valores "read only"
//   marcos.setValue(35); // setando valores que podem ser setados
//   print(marcos._value);
// }
