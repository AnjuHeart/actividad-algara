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
  String benthor =
      """<?xml version="1.0" encoding="utf-8"?><plays username="benthor" userid="597373" total="1737" page="1" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
<play id="34017961" date="2019-02-21" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="The Dwarf King" objecttype="thing" objectid="85250">
				<subtypes>
					<subtype value="boardgame" />
				</subtypes>
			</item>
		</play>
	<play id="34017955" date="2019-02-21" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="Takenoko" objecttype="thing" objectid="70919">
				<subtypes>
					<subtype value="boardgame" />
				</subtypes>
			</item>
		</play>
	<play id="34004213" date="2019-02-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="RoboRally" objecttype="thing" objectid="18">
				<subtypes>
					<subtype value="boardgame" />
				</subtypes>
			</item>
		</play>
	<play id="34004226" date="2019-02-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="Takenoko" objecttype="thing" objectid="70919">
				<subtypes>
					<subtype value="boardgame" />
				</subtypes>
			</item>
		</play>
	<play id="34004202" date="2019-02-12" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="Splendor" objecttype="thing" objectid="148228">
				<subtypes>
					<subtype value="boardgame" />
				</subtypes>
			</item>
		</play>
	<play id="34004193" date="2019-02-07" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
			<item name="Just One" objecttype="thing" objectid="254640">
				<subtypes>
					<subtype value="boardgame" />
					<subtype value="boardgameimplementation" />
				</subtypes>
			</item>
		</play>
	</plays>
""";
  XmlDocument obtenerXMLDeUsuario(String usuario) {
    if (usuario == "benthor") {
      return XmlDocument.parse(benthor);
    }
    //fetch ↓ return fetched document.parse(fetch)
    return XmlDocument();
  }

  Set<JuegoJugado> obtenerJuegosDesdeXML(XmlDocument documento) {
    Set<JuegoJugado> juegosJugados = {};
    documento
        .findAllElements("plays")
        .first
        .findAllElements("play")
        .forEach((element) {
      XmlElement item = element.findAllElements("item").first;
      String itemName = item.getAttribute("name") ?? "";
      String itemID = item.getAttribute("objectid") ?? "";
      juegosJugados.add(JuegoJugado.constructor(
          idPropuesta: itemID, nombrePropuesta: itemName));
    });
    return juegosJugados;
  }

  @override
  Future<Either<Problema, Set<JuegoJugado>>> obtenerJuegosJugadosPorUsuario(
      NickFormado nick) {
    XmlDocument documento = obtenerXMLDeUsuario(nick.valor);
    Right(obtenerJuegosDesdeXML(documento));
    throw UnimplementedError();
  }
}
