import 'package:flutter_app_1/verificacion/data_usuario.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('pruebas para buscar jugadas', () {
    test('obtener coleccion para benthor', () {
      ChecadorDeJugadasDePrueba checador = ChecadorDeJugadasDePrueba();

      expect(checador.obtenerJuegos(NickFormado.constructor("benthor")).juegos,
          contains("Race for the Galaxy"));
    });
  });
  group('pruebas para funciones de data usuario', () {
    test('funcion de obtener paginas', () {
      ChecadorDeJugadasDePrueba checador = ChecadorDeJugadasDePrueba();
      expect(checador.obtenerTotalPaginas("benthor"), equals(2));
    });
  });
}
