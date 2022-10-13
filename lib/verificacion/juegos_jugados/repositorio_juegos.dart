import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:fpdart/fpdart.dart';
import 'package:xml/xml.dart';

abstract class RepositorioJuegosJugados{
  Future<Either<Problema,Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(NickFormado nick);
}

class RepositorioJuegosJugadosPruebas extends RepositorioJuegosJugados{
  XmlDocument obtenerXMLDeUsuario (String usuario){

    return XmlDocument();
  }
  Set<JuegoJugado> obtenerJuegosDesdeXML(XmlDocument documento){

    return {JuegoJugado.constructor(idPropuesta: "", nombrePropuesta: "")};
  }
  @override
  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(NickFormado nick) {
    throw UnimplementedError();
  }

}