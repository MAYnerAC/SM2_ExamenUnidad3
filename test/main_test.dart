// test/main_test.dart

import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Suma simple', () {
    expect(2 + 3, 5);
  });

  test('String contiene palabra', () {
    String texto = 'Hola mundo';
    expect(texto.contains('Hola'), true);
  });

  test('Lista contiene elemento', () {
    List<int> numeros = [1, 2, 3];
    expect(numeros.contains(2), true);
  });
}
