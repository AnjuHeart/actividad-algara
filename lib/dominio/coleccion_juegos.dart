import 'package:flutter_app_1/dominio/problemas.dart';

class ColeccionJuegos {
  late final List<String> juegos;

  ColeccionJuegos._(this.juegos);

  factory ColeccionJuegos.constructor({required List<String> propuestaJuegos}) {
    if (propuestaJuegos == []) {
      propuestaJuegos.add("Este usuario no ha jugado nada");
    }
    return ColeccionJuegos._(
      propuestaJuegos,
    );
  }
}

class JuegoJugado {
  final String id;
  final String nombre;

  JuegoJugado._({required this.id, required this.nombre});
  
  factory JuegoJugado.constructor({required idPropuesta, required nombrePropuesta}) {
    if(nombrePropuesta.trim().isEmpty) throw JuegoJugadoMalFormado();
    if(idPropuesta.trim().isEmpty) throw JuegoJugadoMalFormado();

    return JuegoJugado._(id: idPropuesta, nombre: nombrePropuesta);
  }

  @override
  bool operator ==(covariant JuegoJugado other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.nombre == nombre;
  }

  @override
  int get hashCode => id.hashCode ^ nombre.hashCode;
}