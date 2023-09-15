import 'dart:math';
import 'dart:collection';

void main() {
  int totalElementos = 10;

  var vetor = [];
  var map = Map();

  int valor = 0;
  int contador = 0;

  for (int i = 0; i < totalElementos; i++) {
    int numeroAleatorio = Random().nextInt(10);
    vetor.add(numeroAleatorio);
  }

  vetor.forEach((element) {
    if (!map.containsKey(element)) {
      map[element] = 1;
    } else {
      map[element] += 1;
    }
  });
  print("O vetor: $vetor");
  print(map);
}
