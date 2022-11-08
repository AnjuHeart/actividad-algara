import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:xml/xml.dart';

abstract class ChecadorDeJugadas {
  ColeccionJuegos obtenerJuegos(NickFormado nick);
}

class ChecadorDeJugadasDePrueba extends ChecadorDeJugadas {
  final String _benthorPagOne = """
  <plays username="benthor" userid="597373" total="105" page="1" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
<play id="34017961" date="2019-02-21" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Dwarf King" objecttype="thing" objectid="85250">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="34017955" date="2019-02-21" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="34004213" date="2019-02-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="RoboRally" objecttype="thing" objectid="18">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="34004226" date="2019-02-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="34004202" date="2019-02-12" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Splendor" objecttype="thing" objectid="148228">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="34004193" date="2019-02-07" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Just One" objecttype="thing" objectid="254640">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="34004135" date="2019-02-07" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tiny Epic Galaxies" objecttype="thing" objectid="163967">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33699919" date="2019-02-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Carcassonne" objecttype="thing" objectid="822">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="33699927" date="2019-02-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Multiuniversum" objecttype="thing" objectid="192638">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="33695876" date="2019-01-31" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tzolk'in: The Mayan Calendar" objecttype="thing" objectid="126163">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695869" date="2019-01-30" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="RoboRally" objecttype="thing" objectid="18">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695856" date="2019-01-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul" objecttype="thing" objectid="148949">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695847" date="2019-01-25" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Coimbra" objecttype="thing" objectid="245638">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695840" date="2019-01-25" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Teotihuacan: City of Gods" objecttype="thing" objectid="229853">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695835" date="2019-01-24" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Builders: Middle Ages" objecttype="thing" objectid="144553">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695831" date="2019-01-24" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Cacao" objecttype="thing" objectid="171499">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695824" date="2019-01-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695817" date="2019-01-17" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Neptun" objecttype="thing" objectid="164237">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32901088" date="2018-12-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Steam" objecttype="thing" objectid="27833">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="32901101" date="2018-12-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Through the Ages: A Story of Civilization" objecttype="thing" objectid="25613">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32901136" date="2018-12-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul: Stained Glass of Sintra" objecttype="thing" objectid="256226">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="32897686" date="2018-12-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Great Western Trail" objecttype="thing" objectid="193738">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32901050" date="2018-12-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Kanban: Driver's Edition" objecttype="thing" objectid="109276">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32897719" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32897609" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Genial Spezial" objecttype="thing" objectid="40830">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32897703" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Kingdom Builder" objecttype="thing" objectid="107529">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32898355" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Oceanos" objecttype="thing" objectid="192860">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32901025" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Port Royal" objecttype="thing" objectid="156009">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="33695784" date="2018-12-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Race for the Galaxy" objecttype="thing" objectid="28143">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695759" date="2018-12-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Genial Spezial" objecttype="thing" objectid="40830">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695764" date="2018-12-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tortuga 1667" objecttype="thing" objectid="218530">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695754" date="2018-12-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="6 nimmt!" objecttype="thing" objectid="432">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="33695748" date="2018-12-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul" objecttype="thing" objectid="230802">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="33695739" date="2018-12-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Rocket Jockey" objecttype="thing" objectid="93577">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32492276" date="2018-12-10" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32492269" date="2018-12-06" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Cacao" objecttype="thing" objectid="171499">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32492272" date="2018-12-06" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Oceanos" objecttype="thing" objectid="192860">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32396638" date="2018-12-05" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Splendor" objecttype="thing" objectid="148228">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32386438" date="2018-12-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Three Cheers for Master" objecttype="thing" objectid="175961">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32386434" date="2018-12-03" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul" objecttype="thing" objectid="230802">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="32386410" date="2018-12-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32386400" date="2018-12-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Pandemic: Iberia" objecttype="thing" objectid="198928">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="32386389" date="2018-12-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Power Grid" objecttype="thing" objectid="2651">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="32313397" date="2018-11-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Builders: Middle Ages" objecttype="thing" objectid="144553">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32313403" date="2018-11-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Builders: Middle Ages" objecttype="thing" objectid="144553">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32313372" date="2018-11-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32313386" date="2018-11-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul: The Dice Game" objecttype="thing" objectid="235488">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="32386418" date="2018-11-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Sagrada" objecttype="thing" objectid="199561">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32281604" date="2018-11-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32290747" date="2018-11-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32281606" date="2018-11-27" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32207196" date="2018-11-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Archipelago" objecttype="thing" objectid="105551">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32207170" date="2018-11-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul" objecttype="thing" objectid="230802">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="32207204" date="2018-11-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Bunny Kingdom" objecttype="thing" objectid="184921">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="32150147" date="2018-11-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Cacao" objecttype="thing" objectid="171499">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31930233" date="2018-11-08" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Notre Dame: 10th Anniversary" objecttype="thing" objectid="213984">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgamecompilation"/>
</subtypes>
</item>
</play>
<play id="31930206" date="2018-11-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="BANG! The Dice Game" objecttype="thing" objectid="143741">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="31930273" date="2018-11-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Get Bit!" objecttype="thing" objectid="30539">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31930188" date="2018-11-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Ingenious" objecttype="thing" objectid="9674">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31930202" date="2018-11-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Not Alone" objecttype="thing" objectid="194879">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31727332" date="2018-10-27" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31679173" date="2018-10-25" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Dwarf King" objecttype="thing" objectid="85250">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31679167" date="2018-10-25" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tiny Epic Zombies" objecttype="thing" objectid="244536">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31613870" date="2018-10-19" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Century: Eastern Wonders" objecttype="thing" objectid="242574">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="31613847" date="2018-10-19" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Gallerist" objecttype="thing" objectid="125153">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31568162" date="2018-10-18" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Ingenious" objecttype="thing" objectid="9674">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31568168" date="2018-10-18" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31568156" date="2018-10-18" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Welcome To..." objecttype="thing" objectid="233867">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31462554" date="2018-10-11" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Power Grid" objecttype="thing" objectid="2651">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="31462546" date="2018-10-11" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31409189" date="2018-10-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Between Two Castles of Mad King Ludwig" objecttype="thing" objectid="258036">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="31409175" date="2018-10-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Element" objecttype="thing" objectid="216403">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="31409199" date="2018-10-04" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Mint Works" objecttype="thing" objectid="200077">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311386" date="2018-10-01" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Ingenious" objecttype="thing" objectid="9674">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311383" date="2018-09-30" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Ingenious" objecttype="thing" objectid="9674">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311336" date="2018-09-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Oceanos" objecttype="thing" objectid="192860">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311327" date="2018-09-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Port Royal" objecttype="thing" objectid="156009">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="31311305" date="2018-09-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Sagrada" objecttype="thing" objectid="199561">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311319" date="2018-09-29" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tokaido" objecttype="thing" objectid="123540">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311290" date="2018-09-27" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tiny Epic Quest" objecttype="thing" objectid="201921">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311293" date="2018-09-26" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Sagrada" objecttype="thing" objectid="199561">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311294" date="2018-09-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Sagrada" objecttype="thing" objectid="199561">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31311296" date="2018-09-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Sagrada" objecttype="thing" objectid="199561">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31137216" date="2018-09-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Coloretto" objecttype="thing" objectid="5782">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31137219" date="2018-09-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul: The Dice Game" objecttype="thing" objectid="235488">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="31137212" date="2018-09-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Oceanos" objecttype="thing" objectid="192860">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31085743" date="2018-09-16" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tiny Epic Quest" objecttype="thing" objectid="201921">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="31085723" date="2018-09-15" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Takenoko" objecttype="thing" objectid="70919">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30816125" date="2018-08-30" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Carcassonne" objecttype="thing" objectid="822">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="30696134" date="2018-08-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Scoville" objecttype="thing" objectid="145659">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30534443" date="2018-08-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul" objecttype="thing" objectid="230802">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="30465298" date="2018-08-09" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul: The Dice Game" objecttype="thing" objectid="235488">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="30297214" date="2018-07-31" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Tiny Epic Quest" objecttype="thing" objectid="201921">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30276129" date="2018-07-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Ghost Blitz" objecttype="thing" objectid="83195">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="30276133" date="2018-07-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul: The Dice Game" objecttype="thing" objectid="235488">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="30276124" date="2018-07-28" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Micro Robots" objecttype="thing" objectid="191543">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="30219386" date="2018-07-26" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Keyflower" objecttype="thing" objectid="122515">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30219377" date="2018-07-23" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Istanbul: The Dice Game" objecttype="thing" objectid="235488">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
<play id="30111887" date="2018-07-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Deep Sea Adventure" objecttype="thing" objectid="169654">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30161540" date="2018-07-20" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Gaia Project" objecttype="thing" objectid="220308">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
</plays>""";
  final String _benthorPagTwo = """
<plays username="benthor" userid="597373" total="105" page="2" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
  <play id="30106950" date="2018-07-19" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="The Builders: Middle Ages" objecttype="thing" objectid="144553">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30106928" date="2018-07-19" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Race for the Galaxy" objecttype="thing" objectid="28143">
<subtypes>
<subtype value="boardgame"/>
</subtypes>
</item>
</play>
<play id="30089129" date="2018-07-18" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Carcassonne" objecttype="thing" objectid="822">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="30089116" date="2018-07-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Azul" objecttype="thing" objectid="230802">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameintegration"/>
</subtypes>
</item>
</play>
<play id="30089120" date="2018-07-13" quantity="1" length="0" incomplete="0" nowinstats="0" location="">
<item name="Power Grid: The First Sparks" objecttype="thing" objectid="106662">
<subtypes>
<subtype value="boardgame"/>
<subtype value="boardgameimplementation"/>
</subtypes>
</item>
</play>
</plays>
""";

  List<String> obtenerJuegosPorPaginaDesdeXML(
      String documentAsString, List<String> listaJuegosActual) {
    final documento = XmlDocument.parse(documentAsString);
    documento
        .findAllElements("plays")
        .first
        .findAllElements("play")
        .forEach((element) {
      String itemName =
          element.findAllElements("item").first.getAttribute("name") ?? "";
      listaJuegosActual.add(itemName);
    });
    return listaJuegosActual.toSet().toList();
  }

  List<String> obtenerJuegosTodasLasPaginas(String nick) {
    List<String> juegos = [];
    int paginas = obtenerTotalPaginas(nick);
    for (var i = 0; i < paginas; i++) {
      /*var documentosJugadasEstaPagina = fetch https://boardgamegeek.com/xmlapi2/plays?username=$nick&page=$x*/
      var documentoJugadasEstaPagina = "";
      if (nick == "benthor") {
        if (i == 0) {
          documentoJugadasEstaPagina = _benthorPagOne;
        }
        if (i == 1) {
          documentoJugadasEstaPagina = _benthorPagTwo;
        }
        juegos =
            obtenerJuegosPorPaginaDesdeXML(documentoJugadasEstaPagina, juegos);
      }
    }
    return juegos;
  }

  int obtenerTotalPaginas(String nick) {
    /*
    final respuesta = http.get(
        Uri.parse('https://boardgamegeek.com/xmlapi2/plays?username=$nick'));*/
    String respuesta = "";
    if (nick == "benthor") {
      respuesta = _benthorPagOne;
    }
    final documento = XmlDocument.parse(respuesta);
    int totalJugadas = int.parse(
        documento.findAllElements("plays").first.getAttribute("total") ?? "0");
    int paginas = (totalJugadas / 100).ceil();

    return paginas;
  }

  @override
  ColeccionJuegos obtenerJuegos(NickFormado nick) {
    return ColeccionJuegos.constructor(
        propuestaJuegos: obtenerJuegosTodasLasPaginas(nick.valor));
  }
}
