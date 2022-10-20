import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_juegos.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  test('Para benthor esta bien formado', () async {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    expect(respuesta.isRight(), true);
  });
  test('Benthor tiene 5 juegos', () async {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      expect(true, equals(false));
    }, (r) {
      expect(r.length, equals(5));
    });
  });

  test('Benthor ha jugado "Takenoko"', () async {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
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
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
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
  /*test('Para las funciones de obtener xml', () {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
    final documento = repositorio.obtenerXMLDeUsuario("benthor");
    final jugadas =
        documento.findAllElements("plays").first.findAllElements("play");
    expect(jugadas, isNotEmpty);
  });
  test('Para las funciones de obtener juegos desde xml', () {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
    final documento = repositorio.obtenerXMLDeUsuario("benthor");
    final juegos = repositorio.obtenerJuegosDesdeXML(documento);
    expect(juegos, isNotEmpty);
  });
  test('Verificar contenido del set de juegos', () {
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas();
    final documento = repositorio.obtenerXMLDeUsuario("benthor");
    final juegos = repositorio.obtenerJuegosDesdeXML(documento);
    expect(
        juegos.contains(JuegoJugado.constructor(
            idPropuesta: "70919", nombrePropuesta: "Takenoko")),
        true);
  });*/
  test('funcion numero de paginas regresa 4 con fokuleh', () async{
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
  });
}
