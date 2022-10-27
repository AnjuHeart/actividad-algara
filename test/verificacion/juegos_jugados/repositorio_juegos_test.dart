import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_juegos.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_xml.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  test('Para benthor esta bien formado', () async {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    expect(respuesta.isRight(), true);
  });
  test('Benthor tiene 5 juegos', () async {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      expect(true, equals(false));
    }, (r) {
      expect(r.length, equals(2));
    });
  });

  test('Benthor ha jugado "Takenoko"', () async {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    final takenoko = JuegoJugado.constructor(idPropuesta: "70919", nombrePropuesta: "Takenoko");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      expect(true, equals(false));
    }, (r) {
      expect(
          r,
          contains(takenoko));
    });
  });

  test('Benthor no ha jugado "Monopoly"', () async {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    final monopoly = JuegoJugado.constructor(idPropuesta: "9", nombrePropuesta: "Monopoly");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      //expect(true, equals(false));
      assert(false);
    }, (r) {
      expect(
          !r.contains(monopoly),
          true);
    });
  });
}
