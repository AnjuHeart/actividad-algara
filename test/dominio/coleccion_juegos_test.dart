import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:test/test.dart';

void main() {
  test('mismo nombre diferente id sí son diferentes', (){
    JuegoJugado j1 = JuegoJugado.constructor(idPropuesta: '1', nombrePropuesta: 'uno');
    JuegoJugado j2 = JuegoJugado.constructor(idPropuesta: '2', nombrePropuesta: 'uno');
    expect(j1 == j2, equals(false));
  });
  test('mismo nombre mismo id si son iguales', (){
    JuegoJugado j1 = JuegoJugado.constructor(idPropuesta: '1', nombrePropuesta: 'uno');
    JuegoJugado j2 = JuegoJugado.constructor(idPropuesta: '1', nombrePropuesta: 'uno');
    expect(j1 == j2, equals(true));
  });
  test('no se permiten nombres vacios', (){
    expect(()=>JuegoJugado.constructor(idPropuesta: '1', nombrePropuesta: ''), throwsA(isA<JuegoJugadoMalFormado>()));
  });
  test('no se permiten id vacias', (){
    expect(()=>JuegoJugado.constructor(idPropuesta: '', nombrePropuesta: 'nombre'), throwsA(isA<JuegoJugadoMalFormado>()));
  });
}