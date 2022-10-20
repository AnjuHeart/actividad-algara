import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_xml.dart';
import 'package:test/test.dart';

void main() {
  test('Si le paso benthor me debe regresar un sólo xml', () async{
    RepositorioXmlPruebas repositorio = RepositorioXmlPruebas();
    final resulatdo = await repositorio.obtenerXml(NickFormado.constructor("benthor"));
    resulatdo.match(
      (l){
        assert(false);
      },
      (r){
        expect(r.length, equals(1));
      });
  });
  test('Si le paso fokuleh me debe regresar cuatro xml', ()async{
    RepositorioXmlPruebas repositorio = RepositorioXmlPruebas();
    final resulatdo = await repositorio.obtenerXml(NickFormado.constructor("fokuleh"));
    resulatdo.match(
      (l){
        assert(false);
      },
      (r){
        expect(r.length, equals(4));
      });
  });
  test('Si le paso loquesea me debe regresar un problema', ()async{
    RepositorioXmlPruebas repositorio = RepositorioXmlPruebas();
    final resulatdo = await repositorio.obtenerXml(NickFormado.constructor("loqueseaja"));
    expect(resulatdo.isLeft(), true);
  });
}