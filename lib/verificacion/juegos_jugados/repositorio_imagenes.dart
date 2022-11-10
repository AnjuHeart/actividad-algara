import 'package:http/http.dart' as http;
import 'package:xml/xml.dart';

abstract class RepositorioImagenes {
  Future<String> obtenerDatosJuego(String idJuego);
}

class RepositorioImagenesOnline extends RepositorioImagenes {
  Future<String> _obtenerXMLJuego(String idJuego) async {
    var url = "https://boardgamegeek.com/xmlapi2/thing?id=$idJuego";
    final respuestahttp = await http.get(Uri.parse(url));
    return respuestahttp.body;
  }

  String _obtenerDatos(String xmlString) {
    try {
      final documento = XmlDocument.parse(xmlString);
      final image = documento
          .findAllElements("thumbnail")
          .first
          .children
          .first
          .toString();
      final id = documento.findAllElements("item").first.getAttribute("id") ??
          "Item no encontrado";
      final links = documento.findAllElements("link");
      var designer = "";
      for (var link in links) {
        if (link.getAttribute("type") == "boardgamedesigner") {
          designer = link.getAttribute("value").toString();
        }
      }
      return id + "##" + image + "##" + designer;
    } catch (e) {
      return "No encontrado##No encontrado##No encontrado";
    }
  }

  @override
  Future<String> obtenerDatosJuego(String idJuego) async {
    final xml = await _obtenerXMLJuego(idJuego);
    return _obtenerDatos(xml);
  }
}
