import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/registro_usuario.dart';
import 'package:flutter_app_1/verificacion/repositorio_verificacion.dart';  
import 'package:test/test.dart';

void main() {
  group('Pruebas de verificacion offline', (){
    test('Con benthor me regresa valor',(){
      RepositorioPruebasVerificacion repositorio = RepositorioPruebasVerificacion();
      var resultado = repositorio.obenerRegistroUsuario(NickFormado('benthor'));
      resultado.match(
        (l) => expect(false, equals(true)),
        (r) {
          expect(r.anioRegistro, equals(2012));
          expect(r.nombre, equals('Benthor'));
          expect(r.apellido, equals('Benthor'));
          expect(r.estado, equals(mensajeCampoVacio));
          expect(r.pais, equals(mensajeCampoVacio));
        }
      );

    });
    test('con AMLO me regresa valor', (){
      RepositorioPruebasVerificacion repositorio = RepositorioPruebasVerificacion();
      var resultado = repositorio.obenerRegistroUsuario(NickFormado('amlo'));

      resultado.match(
        (l){
          expect(true, equals(true));
        },
        (r){
          expect(r.anioRegistro, equals(2012));
          expect(r.nombre, equals('Benthor'));
          expect(r.apellido, equals('Benthor'));
          expect(r.estado, equals(mensajeCampoVacio));
          expect(r.pais, equals(mensajeCampoVacio));
        });
    });
  });
}