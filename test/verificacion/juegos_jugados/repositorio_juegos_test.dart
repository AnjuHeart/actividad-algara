import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_juegos.dart';
import 'package:test/test.dart';
import 'package:xml/xml.dart';

void main() {
  test('Para benthor esta bien formado', () async{
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    expect(respuesta.isRight(), true);
  });
  test('Benthor tiene 5 juegos', () async{
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match(
      (l){
        expect(true, equals(false));
      },
      (r){
        expect(r.length, equals(5));
      });
  });

  test('Benthor ha jugado "Takenoko"', () async{
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match(
      (l){
        expect(true, equals(false));
      },
      (r){
        expect(r, contains(JuegoJugado.constructor(idPropuesta: "70919", nombrePropuesta: "Takenoko")));
      });
  });

  test('Benthor no ha jugado "Teotihuacan: City of Gods"', () async{
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
    final respuesta = await repositorio.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match(
      (l){
        expect(true, equals(false));
      },
      (r){
        expect(!r.contains(JuegoJugado.constructor(idPropuesta: "229853", nombrePropuesta: "Teotihuacan: City of Gods")), true);
      });
  });
  test('Para las funciones de obtener xml', (){
    RepositorioJuegosJugadosPruebas repositorio = RepositorioJuegosJugadosPruebas();
    final documento = repositorio.obtenerXMLDeUsuario("benthor");
    final jugadas = documento.findAllElements("palys").first.findAllElements("play");
    expect(jugadas, isNotEmpty);
  });
}