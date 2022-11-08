import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:flutter_app_1/verificacion/juegos_jugados/repositorio_xml.dart';
import 'package:fpdart/fpdart.dart';
import 'package:xml/xml.dart';

abstract class RepositorioJuegosJugados {
  final RepositorioXml repositorioXml;

  RepositorioJuegosJugados(this.repositorioXml);

  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(
      NickFormado nick);
}

class RepositorioJuegosJugadosPruebas extends RepositorioJuegosJugados {
  RepositorioJuegosJugadosPruebas(repositorioXml) : super(repositorioXml);

  Either<Problema, Set<JuegoJugado>> _obtenerJuegosJugadosDesdeXml(
      List<String> losXml) {
    final resultado = losXml.map((e) => _obtenerUnSoloSet(e));
    if (resultado.any((element) => element is Problema)) {
      return Left(VersionIncorrectaXML());
    }
    final soloSets = resultado.map((e) => e.getOrElse((l) => {}));
    //Set<JuegoJugado> resultadofinal = {};
    //soloSets.forEach((element) {resultadofinal.addAll(element.toList());});
    final resultadofinal = soloSets.fold<Set<JuegoJugado>>(
        {},
        (Set<JuegoJugado> prev, Set<JuegoJugado> element) =>
            prev..addAll(element));
    return Right(resultadofinal);
  }

  Either<Problema, Set<JuegoJugado>> _obtenerUnSoloSet(String elXml) {
    try {
      String xmlitemIndex = "item";
      String itemNameAttribute = "name";
      String itemIDAttribute = "objectid";
      XmlDocument documento = XmlDocument.parse(elXml);
      final losPlay = documento.findAllElements(xmlitemIndex);
      final conjuntoIterable = losPlay.map((e) {
        String nombre = e.getAttribute(itemNameAttribute)!;
        String id = e.getAttribute(itemIDAttribute)!;
        return JuegoJugado.constructor(
            idPropuesta: id, nombrePropuesta: nombre);
      });
      return Right(conjuntoIterable.toSet());
    } catch (e) {
      return Left(VersionIncorrectaXML());
    }
  }

  @override
  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(
      NickFormado nick) async {
    Either<Problema, List<String>> resultadoXml =
        await repositorioXml.obtenerXml(nick);
    return resultadoXml.match((l) {
      return Left(l);
    }, (r) {
      return _obtenerJuegosJugadosDesdeXml(r);
    });

  }
}
