import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_imagenes.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_xml.dart';
import 'package:flutter_app_1/verificacion/repositorio_verificacion.dart';

class EventoVerificacion {}

class Creado extends EventoVerificacion {}

class NombreRecibido extends EventoVerificacion {
  final String nombreAProcesar;

  NombreRecibido(this.nombreAProcesar);
}

class IrAJuegos extends EventoVerificacion {
  final String nombreUsuario;

  IrAJuegos(this.nombreUsuario);
}

class NombreConfirmado extends EventoVerificacion {}

class EstadoVerificacion {}

class Creandose extends EstadoVerificacion {}

class SolicitandoNombre extends EstadoVerificacion {}

class EsperandoConfirmacionNombre extends EstadoVerificacion {}

class MostrandoJuegos extends EstadoVerificacion {
  final Set<JuegoJugado> juegos;
  final String jugador;
  final List<String> datosJuego;

  MostrandoJuegos(this.juegos, this.jugador, this.datosJuego);
}

class MostrandoNombre extends EstadoVerificacion {
  final String _nombre;
  final String _apellido;
  final int _anio;
  final String _pais;
  final String _estado;
  final String nombreUsuario;

  late String mensaje = "";
  MostrandoNombre(this._nombre, this._apellido, this._anio, this._pais,
      this._estado, this.nombreUsuario) {
    mensaje = 'El usuario se registró en el año: ' + _anio.toString() + '\n';
    mensaje += 'Nombre del usuario: ' + _nombre + '\n';
    mensaje += 'Apellido del usurio: ' + _apellido + '\n';
    mensaje += 'Pais del usurio: ' + _pais + '\n';
    mensaje += 'Estado o provincia del usurio: ' + _estado + '\n';
  }
}

class MostrandoNombreNoConfirmado extends EstadoVerificacion {
  final Problema problema;
  late String mensaje = "";
  MostrandoNombreNoConfirmado(this.problema) {
    if (problema is VersionIncorrectaXML) {
      mensaje = "La versión de XML está mal";
    }
    if (problema is UsuarioNoRegistrado) {
      mensaje = "El usuario no existe";
    }
  }
}

class BlocVerificacion extends Bloc<EventoVerificacion, EstadoVerificacion> {
  BlocVerificacion() : super(Creandose()) {
    on<Creado>((event, emit) {
      emit(SolicitandoNombre());
    });
    on<NombreRecibido>((event, emit) {
      RepositorioPruebasVerificacion repositorio =
          RepositorioPruebasVerificacion();
      var estadoUsuario = repositorio.obenerRegistroUsuario(
          NickFormado.constructor(event.nombreAProcesar));
      estadoUsuario.match(
          (l) => emit(MostrandoNombreNoConfirmado(l)),
          (r) => emit(MostrandoNombre(r.nombre, r.apellido, r.anioRegistro,
              r.pais, r.estado, event.nombreAProcesar)));
    });
    on<IrAJuegos>((event, emit) async {
      RepositorioImagenesOnline repoImagenes = RepositorioImagenesOnline();
      String file = "";
      if (event.nombreUsuario == "fokuleh") {
        try {
          file = File('./lib/verificacion/juegos_jugados/fokulehFinal.txt')
              .readAsStringSync();
        } catch (e) {
          file = """
                  97842##Last Will
                183840##Oh My Goods!
                27760##CATAN: Traders & Barbarians
                298069##Cubitos
                170561##Valeria: Card Kingdoms
                244521##The Quacks of Quedlinburg
                227224##The Red Cathedral
                266083##L.L.A.M.A.
                201808##Clank!: A Deck-Building Adventure
                230080##Majesty: For the Realm
                220628##Stellium
                158899##Colt Express
                220308##Gaia Project
                220##High Society
                129622##Love Letter
                293141##King of Tokyo: Dark Edition
                770##Loot
                """;
        }
      }
      if (event.nombreUsuario == "benthor") {
        try {
          file = File('./lib/verificacion/juegos_jugados/benthorFinal.txt')
              .readAsStringSync();
        } catch (e) {
          file = """
          85250##The Dwarf King
          70919##Takenoko
          18##RoboRally
          148228##Splendor
          254640##Just One
          163967##Tiny Epic Galaxies
          822##Carcassonne
          192638##Multiuniversum
          126163##Tzolk'in: The Mayan Calendar
          148949##Istanbul
          245638##Coimbra
          229853##Teotihuacan: City of Gods
          144553##The Builders: Middle Ages
          171499##Cacao
          164237##Neptun
          27833##Steam
          25613##Through the Ages: A Story of Civilization
          256226##Azul: Stained Glass of Sintra
          193738##Great Western Trail
          109276##Kanban: Driver's Edition
          169654##Deep Sea Adventure
          40830##Genial Spezial
                """;
        }
      }
      Set<JuegoJugado> juegos = {};
      List<String> datosJuego = [];
      for (var juego in file.split('\n')) {
        if (juego != "") {
          String id = juego.split('##')[0];
          String nombre = juego.split('##')[1];
          juegos.add(JuegoJugado.constructor(
              idPropuesta: id, nombrePropuesta: nombre));
          datosJuego.add(await repoImagenes.obtenerDatosJuego(id.trim()));
        }
      }
      emit(MostrandoJuegos(juegos, event.nombreUsuario, datosJuego));
    });
  }
}
