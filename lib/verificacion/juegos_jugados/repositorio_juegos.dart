import 'dart:io';

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
  
  RepositorioJuegosJugadosPruebas(RepositorioXmlPruebas repositorioXml) : super(repositorioXml);

  Either<Problema, Set<JuegoJugado>> _obtenerJuegosJugadosDesdeXml(List<String> losXml){
    try {
      String xmlitemIndex = "item";
      String itemNameAttribute = "name";
      String itemIDAttribute = "objectid";

      Set<JuegoJugado> setResultado = {};
      for (var xml in losXml) {
        XmlDocument documento = XmlDocument.parse(xml);
        final losPlay = documento.findAllElements(xmlitemIndex);
        final conjuntoIterable = losPlay.map((e){
          String nombre = e.getAttribute(itemNameAttribute)!;
          String id = e.getAttribute(itemIDAttribute)!;
          return JuegoJugado.constructor(idPropuesta: id, nombrePropuesta: nombre);
        });
        final conjunto = Set<JuegoJugado>.from(conjuntoIterable);
        setResultado.addAll(conjunto);
      }
      return Right(setResultado);
    } catch (e) {
      return Left(VersionIncorrectaXML());
    }
  }

  @override
  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(
      NickFormado nick) async{
    final losXml = await repositorioXml.obtenerXml(nick);
    losXml.match(
      (problema){
        return Left(problema);
      }, 
      (listaXml){
        final resulatdo = _obtenerJuegosJugadosDesdeXml(listaXml);
        return resulatdo;
      });
    return Left(VersionIncorrectaXML());
  }
}
