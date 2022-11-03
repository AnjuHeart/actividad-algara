import 'dart:io';

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
    final takenoko = JuegoJugado.constructor(
        idPropuesta: "70919", nombrePropuesta: "Takenoko");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      expect(true, equals(false));
    }, (r) {
      expect(r, contains(takenoko));
    });
  });

  test('Benthor no ha jugado "Monopoly"', () async {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    final monopoly =
        JuegoJugado.constructor(idPropuesta: "9", nombrePropuesta: "Monopoly");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
    respuesta.match((l) {
      //expect(true, equals(false));
      assert(false);
    }, (r) {
      expect(!r.contains(monopoly), true);
    });
  });
  group('Pruebas para fokuleh', () {
    RepositorioXmlPruebas repositorioXmlPruebas = RepositorioXmlPruebas();
    RepositorioJuegosJugadosPruebas repositorio =
        RepositorioJuegosJugadosPruebas(repositorioXmlPruebas);
    test('fokuleh esta bien formado', () async {
      final respuesta = await repositorio
          .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
      expect(respuesta.isRight(), true);
    });
    test('fokuleh ha jugado 6 juegos', () async {
      final respuesta = await repositorio
          .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
      respuesta.match((l) {
        expect(true, equals(false));
      }, (r) {
        expect(r.length, equals(6));
      });
    });
    test('fokuleh ha jugado a Fantasy Realms con id 223040', ()async{
      final fantasyRealms = JuegoJugado.constructor(
        idPropuesta: "223040", nombrePropuesta: "Fantasy Realms");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
    respuesta.match((l) {
      expect(true, equals(false));
    }, (r) {
      expect(r.contains(fantasyRealms), true);
    });
    });
    test('fokuleh no ha jugado al monopoly', ()async{
      final monopoly =
        JuegoJugado.constructor(idPropuesta: "9", nombrePropuesta: "Monopoly");
    final respuesta = await repositorio
        .obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
    respuesta.match((l) {
      //expect(true, equals(false));
      assert(false);
    }, (r) {
      expect(!r.contains(monopoly), true);
    });
    });
  });
  group('pruebas para repositorio real', (){
    test('benthor tiene X juegos', () async{
      RepositorioXmlReal repositorioXml = RepositorioXmlReal();
      RepositorioJuegosJugadosPruebas repositorioJuegos = RepositorioJuegosJugadosPruebas(repositorioXml);
      final respuesta = await repositorioJuegos.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
      respuesta.match(
        (l){
          assert(false);
        }, 
        (r){
          const nombreArchivo = './test/verificacion/juegos_jugados/benthorFinal.txt';
          String strJuegos = "";
          for (JuegoJugado juego in r){
            strJuegos += juego.id + "," + juego.nombre + "\n";
          }
          var file = File(nombreArchivo);
          var sink = file.openWrite();
          sink.write(strJuegos);
          expect(r.length, equals(429));
        });
    });
    test('fokuleh tiene X juegos', () async{
      RepositorioXmlReal repositorioXml = RepositorioXmlReal();
      RepositorioJuegosJugadosPruebas repositorioJuegos = RepositorioJuegosJugadosPruebas(repositorioXml);
      final respuesta = await repositorioJuegos.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
      respuesta.match(
        (l){
          assert(false);
        }, 
        (r){
          const nombreArchivo = './test/verificacion/juegos_jugados/fokulehFinal.txt';
          String strJuegos = "";
          for (JuegoJugado juego in r){
            strJuegos += juego.id + "," + juego.nombre + "\n";
          }
          var file = File(nombreArchivo);
          var sink = file.openWrite();
          sink.write(strJuegos);
          expect(r.length, equals(150));
        });
    });
    test('benthor ha jugado a Mascarade 139030', ()async{
      RepositorioXmlReal repositorioXml = RepositorioXmlReal();
      RepositorioJuegosJugadosPruebas repositorioJuegos = RepositorioJuegosJugadosPruebas(repositorioXml);
      final mascarade = JuegoJugado.constructor(idPropuesta: "139030", nombrePropuesta: "Mascarade");
      final respuesta = await repositorioJuegos.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('benthor'));
      respuesta.match(
        (l){
          assert(false);
        }, 
        (r){
          expect(r.contains(mascarade), true);
        });
    });

    test('fokuleh ha jugado a Scythe 169786', ()async{
      RepositorioXmlReal repositorioXml = RepositorioXmlReal();
      RepositorioJuegosJugadosPruebas repositorioJuegos = RepositorioJuegosJugadosPruebas(repositorioXml);
      final scythe = JuegoJugado.constructor(idPropuesta: "169786", nombrePropuesta: "Scythe");
      final respuesta = await repositorioJuegos.obtenerJuegosJugadosPorUsuario(NickFormado.constructor('fokuleh'));
      respuesta.match(
        (l){
          assert(false);
        }, 
        (r){
          expect(r.contains(scythe), true);
        });
    });
  });
}
