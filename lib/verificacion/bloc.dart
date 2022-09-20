import 'package:bloc/bloc.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:flutter_app_1/dominio/registro_usuario.dart';
import 'package:flutter_app_1/verificacion/repositorio_verificacion.dart';

class EventoVerificacion {}
class Creado extends EventoVerificacion {}
class NombreRecibido extends EventoVerificacion {
  final String nombreAProcesar;

  NombreRecibido(this.nombreAProcesar);
  
}
class NombreConfirmado extends EventoVerificacion {}

class EstadoVerificacion {}
class Creandose extends EstadoVerificacion {}
class SolicitandoNombre extends EstadoVerificacion {}
class EsperandoConfirmacionNombre extends EstadoVerificacion {}
class MostrandoNombre extends EstadoVerificacion {
  final String nombre;
  final String apellido;
  final int anio;
  final String pais;
  final String estado;

  MostrandoNombre(this.nombre, this.apellido, this.anio, this.pais, this.estado);

}
class MostrandoNombreNoConfirmado extends EstadoVerificacion {
  final Problema problema;

  MostrandoNombreNoConfirmado(this.problema);
}

class BlocVerificacion extends Bloc<EventoVerificacion, EstadoVerificacion> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
      emit(SolicitandoNombre());
    });
    on<NombreRecibido>((event, emit) {
      RepositorioPruebasVerificacion repositorio = RepositorioPruebasVerificacion();
      var estadoUsuario = repositorio.obenerRegistroUsuario(NickFormado.constructor(event.nombreAProcesar));
      estadoUsuario.match(
        (l) => emit(MostrandoNombreNoConfirmado(l)), 
        (r) => emit(MostrandoNombre(r.nombre, r.apellido, r.anioRegistro, r.pais, r.estado)));
    });
  }
}
