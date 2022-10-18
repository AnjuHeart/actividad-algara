import 'dart:io';

import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
import 'package:fpdart/fpdart.dart';
import 'package:xml/xml.dart';

abstract class RepositorioJuegosJugados {
  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(
      NickFormado nick);
}

class RepositorioJuegosJugadosPruebas extends RepositorioJuegosJugados {
  
  int obtenerTotalPaginas(String nick) {
    /*
    final respuesta =  await http.get(
        Uri.parse('https://boardgamegeek.com/xmlapi2/plays?username=$nick'));*/
    String respuesta = "";
    if (nick == "benthor") {
      respuesta = File('./test/verificacion/juegos_jugados/benthor.xml').readAsStringSync();
    }
    if(nick == "fokuleh"){
      respuesta = File('./test/verificacion/juegos_jugados/fokuleh1.xml').readAsStringSync();
    }
    final documento = XmlDocument.parse(respuesta);
    int totalJugadas = int.parse(
        documento.findAllElements("plays").first.getAttribute("total") ?? "0");
    int paginas = (totalJugadas / 100).ceil();

    return paginas;
  }

  List<String> obtenerListaDeDireccionesXml(String nombre, int totalPaginas){
    List<String> direcciones =[];
    for (var i = 1; i <= totalPaginas; i++) {
      if(nombre == "benthor"){
        direcciones.add("./test/verificacion/juegos_jugados/benthor.xml");
      }
      

      //direcciones.add("https://boardgamegeek.com/xmlapi2/plays?username=$nombre&pag=$i")
    }
  }
  
  List<String> _obtenerXmlJugadasDelDisco({required String nombre}){
    List<String> jugadasPorPaginas = [];
    if(nombre == "benthor"){
      jugadasPorPaginas.add(File('./test/verificacion/juegos_jugados/benthor.xml').readAsStringSync());
    }
    if(nombre == "fokuleh"){
      jugadasPorPaginas.add(File('./test/verificacion/juegos_jugados/fokuleh1.xml').readAsStringSync());
      jugadasPorPaginas.add(File('./test/verificacion/juegos_jugados/fokuleh2.xml').readAsStringSync());
      jugadasPorPaginas.add(File('./test/verificacion/juegos_jugados/fokuleh3.xml').readAsStringSync());
    }
    return jugadasPorPaginas;
  }

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
    List<String> losXml = _obtenerXmlJugadasDelDisco(nombre: nick.valor);
    final resulatdo = _obtenerJuegosJugadosDesdeXml(losXml);
    return resulatdo;
  }
}
