import 'package:flutter_app_1/dominio/registro_usuario.dart';
import 'package:test/test.dart';

void main() {
  group('Registro usuario correcto', (){
    final r  = RegistroUsuario.constructor(propuestaAnio: "2012", 
    propuestaNombre: "x", 
    propuestaApellido: "xy", 
    propuestaPais: "xyz", 
    propuestaEstado: "xyza");

    test('checkRegistroUsuario', (){
      expect(r.anioRegistro, equals(2012));
    });
  });
  
}