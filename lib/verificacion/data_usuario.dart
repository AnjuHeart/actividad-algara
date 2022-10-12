import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:xml/xml.dart';
import 'package:http/http.dart' as http;

abstract class ChecadorDeJugadas {
  ColeccionJuegos obtenerJuegos(NickFormado nick);
}

class ChecadorDeJugadasDePrueba extends ChecadorDeJugadas {
  final String _benthorPagOne = "";
  final String _benthorPagTwo = "";

  obtenerJuegosPorPaginaDesdeXML(XmlDocument document) {}

  obtenerJuegosTodasLasPaginas(String nick) {
    /*
      List<String> juegos
      int paginas =  obtenertotalpaginas (nick);
      for (x=1;paginas;x++;){
        var jugadasPagina = fetch https://boardgamegeek.com/xmlapi2/plays?username=benthor&page=$x
        var coleccionporPagina = obtenerJuegosPorPaginaDesdeXML(jugadasPagina)
        juegos.add()
      }
     */
  }
  Future<int> obtenerTotalPaginas(String nick) async {
    if (nick == "benthor") {
      return 2;
    }
    final respuesta = await http.get(
        Uri.parse('https://boardgamegeek.com/xmlapi2/plays?username=$nick'));
    final documento = XmlDocument.parse(respuesta.body);
    int totalJugadas = int.parse(
        documento.findAllElements("plays").first.getAttribute("total") ?? "0");
    int paginas = (totalJugadas / 10).ceil();
    return paginas;
  }

  @override
  ColeccionJuegos obtenerJuegos(NickFormado nick) {
    return ColeccionJuegos.constructor(
        propuestaJuegos: [], propuestaFechas: []);
  }
}
