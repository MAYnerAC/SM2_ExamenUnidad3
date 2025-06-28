import 'package:flutter_test/flutter_test.dart';
import 'package:proyecto_moviles_2/services/favorites_service.dart';
import 'package:proyecto_moviles_2/services/auth_service_a.dart';

void main() {
  group('FavoritesService', () {
    test('Agrega y remueve favoritos correctamente', () {
      const testId = 'producto123';
      FavoritesService.toggleFavorite(testId);
      expect(FavoritesService.isFavorite(testId), true);

      FavoritesService.toggleFavorite(testId);
      expect(FavoritesService.isFavorite(testId), false);
    });
  });

  group('AuthService', () {
    test('Usuario no logueado al inicio', () {
      AuthService.logout(); // Asegura que esté deslogueado
      expect(AuthService.isUserLoggedIn(), false);
    });

    test('Asignar y obtener userId (simulado)', () async {
      // Simula un login exitoso forzando _userId si no usas Firebase aquí
      // Esto es útil si `signIn` depende de Firebase y no quieres conexión real
      final user = await AuthService.signIn('correo@inexistente.com', '1234');
      expect(user, false); // Debería fallar con un usuario ficticio
    });
  });
}
