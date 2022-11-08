import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/problemas.dart';
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

  MostrandoJuegos(this.juegos, this.jugador);
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
    on<IrAJuegos>((event, emit) {
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
274960##Point Salad
247763##Underwater Cities
260300##Dungeon Mayhem
239951##Gretchinz!
167791##Terraforming Mars
243697##Cooks & Crooks
223040##Fantasy Realms
91072##Saboteur 2 (expansion-only editions)
276025##Maracaibo
432##6 nimmt!
184921##Bunny Kingdom
157969##Sheriff of Nottingham
228341##Pulsar 2849
2655##Hive
180974##Potion Explosion
2653##Survive: Escape from Atlantis!
244654##Wildlands
202408##Adrenaline
98778##Hanabi
135378##Catan: Explorers & Pirates
171233##The Big Book of Madness
9674##Ingenious
13##CATAN
105593##Cheating Moth
65244##Forbidden Island
155987##Abyss
295947##Cascadia
129736##Cockroach Poker Royal
131357##Coup
39856##Dixit
206718##Ethnos
200680##Agricola (Revised Edition)
245476##CuBirds
275467##Letter Jam
54998##Cyclades
209778##Magic Maze
926##Catan: Cities & Knights
40692##Small World
271088##Ishtar: Gardens of Babylon
312484##Lost Ruins of Arnak
234477##Battle for Rokugan
150145##Skull King
199478##Flamme Rouge
167698##Magic: The Gathering – Arena of the Planeswalkers
260605##Camel Up (Second Edition)
271320##The Castles of Burgundy
257316##Weapon Wars
230408##Monopoly Gamer
262712##Res Arcana
233247##Civilization: A New Dawn
9220##Saboteur
192291##Sushi Go Party!
236217##Timebomb
169654##Deep Sea Adventure
282391##Stockpile: Epic Edition
12942##No Thanks!
108745##Seasons
169786##Scythe
198994##Hero Realms
111173##Little Devils
310203##Tiny Epic Pirates: Deluxe Edition
181810##Kodama: The Tree Spirits
224894##Michael Strogoff
822##Carcassonne
175117##Celestia
181304##Mysterium
9209##Ticket to Ride
118247##Lucky Numbers
10630##Memoir '44
54043##Jaipur
244992##The Mind
247367##Air, Land, & Sea
136063##Forbidden Desert
325##Catan: Seafarers
207016##Flick 'em Up!: Dead of Winter
161226##The Builders: Antiquity
121921##Robinson Crusoe: Adventures on the Cursed Island
209323##Oh My Goods!: Longsdale in Revolt
233078##Twilight Imperium: Fourth Edition
276830##Sanctum
162886##Spirit Island
261901##Tokyo Highway
66188##Fresco
70919##Takenoko
143884##Machi Koro
204583##Kingdomino
102237##Drako: Dragon & Dwarves
228668##Dungeons & Dragons: Tomb of Annihilation Board Game
182028##Through the Ages: A New Story of Civilization
232219##Dragon Castle
37904##Formula D
161417##Red7
157354##Five Tribes
253470##Greedy Kingdoms
170042##Raiders of the North Sea
176189##Zombicide: Black Plague
176920##Mission: Red Planet (Second Edition)
124172##Tsuro of the Seas
28023##Jamaica
59959##Letters from Whitechapel
163412##Patchwork
172287##Champions of Midgard
194655##Santorini
205398##Citadels
172220##Dungeons & Dragons: Temple of Elemental Evil Board Game
178900##Codenames
70323##King of Tokyo
56885##The Werewolves of Miller's Hollow: The Village
22864##Zeus on the Loose
291457##Gloomhaven: Jaws of the Lion
41114##The Resistance
164153##Star Wars: Imperial Assault
12333##Twilight Struggle
30549##Pandemic
202102##Hero Realms: Boss Deck – Lich
272409##Tiny Epic Tactics
202101##Hero Realms: Boss Deck – The Dragon
153938##Camel Up
207830##5-Minute Dungeon
266219##Tiny Epic Zombies: Deluxe Edition
165662##Haru Ichiban
226522##Exit: The Game – Dead Man on the Orient Express
202100##Hero Realms: The Ruin of Thandar Campaign Deck
91872##Dungeons & Dragons: The Legend of Drizzt Board Game
811##Rummikub
127023##Kemet
204184##Risk: Europe
222509##Lords of Hellas
264196##Dungeons & Dragons: Waterdeep – Dungeon of the Mad Mage Board Game
166384##Spyfall
59946##Dungeons & Dragons: Castle Ravenloft Board Game
171499##Cacao
150485##Cat Tower
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
107529##Kingdom Builder
192860##Oceanos
156009##Port Royal
28143##Race for the Galaxy
218530##Tortuga 1667
432##6 nimmt!
230802##Azul
93577##Rocket Jockey
175961##Three Cheers for Master
198928##Pandemic: Iberia
2651##Power Grid
235488##Istanbul: The Dice Game
199561##Sagrada
105551##Archipelago
184921##Bunny Kingdom
213984##Notre Dame: 10th Anniversary
143741##BANG! The Dice Game
30539##Get Bit!
9674##Ingenious
194879##Not Alone
244536##Tiny Epic Zombies
242574##Century: Eastern Wonders
125153##The Gallerist
233867##Welcome To...
258036##Between Two Castles of Mad King Ludwig
216403##Element
200077##Mint Works
123540##Tokaido
201921##Tiny Epic Quest
5782##Coloretto
145659##Scoville
83195##Ghost Blitz
191543##Micro Robots
122515##Keyflower
220308##Gaia Project
106662##Power Grid: The First Sparks
5##Acquire
36739##Black Sheep
39683##At the Gates of Loyang
148951##Tiny Epic Kingdoms
183394##Viticulture Essential Edition
19237##Ca\$h 'n Gun\$
156129##Deception: Murder in Hong Kong
133848##Euphoria: Build a Better Dystopia
215389##Head of Mousehold
172287##Champions of Midgard
216132##Clans of Caledonia
171668##The Grizzled
119781##Legacy: Gears of Time
54043##Jaipur
230080##Majesty: For the Realm
154246##La Isla
121410##Steam Park
12942##No Thanks!
223779##Pocket Mars
220877##Rajas of the Ganges
133473##Sushi Go!
235627##Iquazú
11##Bohnanza
172##For Sale
2653##Survive: Escape from Atlantis!
99875##Martian Dice
88950##Palenque
40692##Small World
70323##King of Tokyo
147101##Viticulture: Tuscany
54137##Battle Sheep
172308##Broom Service
3076##Puerto Rico
65244##Forbidden Island
171623##The Voyages of Marco Polo
242302##Space Base
128621##Viticulture
18602##Caylus
172385##Porta Nigra
215311##Downforce
62871##Zombie Dice
28720##Brass: Lancashire
9220##Saboteur
204583##Kingdomino
158339##Lost Legacy: The Starship
97207##Dungeon Petz
205226##Chocobo's Crystal Hunt
151448##Danmaku!!
180852##Tiny Epic Western
202977##Cytosis: A Cell Biology Board Game
176920##Mission: Red Planet (Second Edition)
116948##Cartoona
198773##Codenames: Pictures
139030##Mascarade
128882##The Resistance: Avalon
233678##Indian Summer
176734##The Manhattan Project: Energy Empire
224272##Hellapagos
15062##Shadows over Camelot
204027##Cottage Garden
35505##Walk the Plank!
162082##Deus
161929##Jardín Botánico de Tehuacán
165796##Assel Schlamassel
161226##The Builders: Antiquity
198525##Lotus
128780##Pax Porfiriana
100423##Elder Sign
770##Loot
150145##Skull King
129622##Love Letter
104162##Descent: Journeys in the Dark (Second Edition)
183626##Internal Affairs
70512##Luna
102794##Caverna: The Cave Farmers
175549##Salem 1692
123570##Strike
113294##Escape: The Curse of the Temple
3570##Chicken Cha Cha Cha
98778##Hanabi
98085##Seven Dragons
131366##Eight-Minute Empire
36218##Dominion
209685##Century: Spice Road
219215##Werewords
211534##Bears vs Babies
198740##Lovecraft Letter
127060##Bora Bora
34635##Stone Age
144733##Russian Railroads
111173##Little Devils
34599##Toledo
153938##Camel Up
227072##The Chameleon
22141##Cleopatra and the Society of Architects
178900##Codenames
180901##Joraku
160495##ZhanGuo
478##Citadels
40398##Monopoly Deal Card Game
125311##Okiya
17027##Sitting Ducks Gallery
207830##5-Minute Dungeon
173761##Telestrations After Dark
120677##Terra Mystica
116##Guillotine
13004##The Downfall of Pompeii
925##Werewolf
70149##Ora et Labora
16992##Tsuro
13##CATAN
168435##Between Two Cities
93724##Black Gold
195237##Leaders of Euphoria: Choose a Better Oppressor
24480##The Pillars of the Earth
37111##Battlestar Galactica: The Board Game
36523##Castellers
172881##Quartz
136888##Bruges
140271##Maximum Throwdown
156976##Planes
206169##Slide Blast
202732##Raise Your Goblets
154479##Piña Pirata
129090##Roll For It!
136063##Forbidden Desert
191862##Imhotep
205597##Jump Drive
182487##Little Drop of Poison
187515##Zooscape
196340##Yokohama
40531##Cosmic Encounter
9209##Ticket to Ride
97842##Last Will
34219##Biblios
624##Quoridor
138201##They Who Were 8
159503##The Captain Is Dead
171273##FUSE
182189##Treasure Hunter
164339##3 to 4 Headed Monster
15512##Incan Gold
7805##Fearsome Floors
150999##Valley of the Kings
1680##Elements
31483##Constantinopolis
124172##Tsuro of the Seas
187645##Star Wars: Rebellion
203430##Fuji Flush
171233##The Big Book of Madness
151347##Millennium Blades
28023##Jamaica
154809##Nippon
13823##Fairy Tale
191231##Via Nebula
131357##Coup
125028##Colorpop
192291##Sushi Go Party!
155703##Evolution
170216##Blood Rage
6249##Alhambra
147949##One Night Ultimate Werewolf
31481##Galaxy Trucker
75789##Mai-Star
160010##Conan
121408##Trains
157354##Five Tribes
171129##Spinderella
166384##Spyfall
30549##Pandemic
181810##Kodama: The Tree Spirits
63888##Innovation
163277##Cardline: Dinosaurs
158899##Colt Express
11971##Cockroach Poker
181304##Mysterium
140933##Blueprints
181687##The Pursuit of Happiness
147253##The Ancient World
165950##Beasty Bar
180564##Carcassonne: Star Wars
140796##Fluxx: The Board Game
15817##Manila
91514##Rhino Hero
35395##Salem
45##Perudo
154086##Gold West
56692##Parade
24068##Shadow Hunters
143515##Coal Baron
148203##Dutch Blitz
175088##Pharaoh's Gulo Gulo
143883##Ultimate Warriors Death Battle Game
51##Ricochet Robots
14996##Ticket to Ride: Europe
149155##Dead Man's Draw
152162##Diamonds: Second Edition
17133##Railways of the World
44163##Power Grid: Factory Manager
23686##Gift Trap
31260##Agricola
83629##The Hobbit
27162##Kingsburg
110327##Lords of Waterdeep
13308##Niagara
12692##Gloom
194669##Boss Monster: Collector Box
129556##Tapple
105593##Cheating Moth
143884##Machi Koro
41114##The Resistance
2407##Sorry!
84876##The Castles of Burgundy
90419##Airlines Europe
172837##Dead Man's Chest
2593##Pass the Pigs
171424##Kakerlakak
2280##Marco Polo
180198##Rolling America
131325##Timeline: General Interest
20100##Wits & Wagers
131260##Qwixx
2452##Jenga
50750##Belfort
173064##Leaving Earth
183880##Risk: Star Wars Edition
146652##Legendary Encounters: An Alien Deck Building Game
66188##Fresco
67492##Battles of Westeros
29368##Last Night on Earth: The Zombie Game
161417##Red7
176361##One Night Revolution
1198##SET
35677##Le Havre
142325##Kobayakawa
150658##Pandemic: The Cure
398##Wildlife Safari
131835##Boss Monster: The Dungeon Building Card Game
23964##The Game of Life (40th Anniversary Edition)
134352##Two Rooms and a Boom
105134##Risk Legacy
148943##Coup: Rebellion G54
153064##Good Cop Bad Cop
132372##Guildhall
103686##Mundus Novus
63628##The Manhattan Project
100679##Ultimate Warriorz
181279##Fury of Dracula (Third/Fourth Edition)
188##Go
177147##Survive: Space Attack!
144382##Canalis
157403##Black Fleet
22545##Age of Empires III: The Age of Discovery
48726##Alien Frontiers
154386##Medieval Academy
165986##Royals
97903##Terror in Meeple City
15121##Exago
27588##Zooloretto
140##Pit
157526##Viceroy
40793##Dice Town
3586##Sherlock
148290##Longhorn
108906##Thunder Alley
154634##Yardmaster
39938##Carson City
134559##Tower
140863##Council of Verona
128671##Spartacus: A Game of Blood and Treachery
27746##Colosseum
116954##Indigo
143075##Luchador! Mexican Wrestling Dice
133437##Dead Panic
122159##Cthulhu Fluxx
141035##Space Sheep!
84772##Sun## Sea & Sand
68448##7 Wonders
157969##Sheriff of Nottingham
902##Meuterer
126042##Nations
62219##Dominant Species
157809##Nations: The Dice Game
147151##Concept
8190##The Bridges of Shangri-La
140620##Lewis & Clark: The Expedition
43443##Castle Panic
37046##Ghost Stories
8095##Prophecy
121958##Sky Traders
160499##King of New York
22287##Buccaneer
106999##Coney Island
26990##Container
39856##Dixit
18258##Mission: Red Planet
64956##10 Days in the Americas
120217##City of Horror
71676##Back to the Future: The Card Game
38194##Cheaty Mages!
25643##Arkadia
2223##UNO
154638##7 Wonders: Babel
86246##Drum Roll
123260##Suburbia
15364##Vegas Showdown
153425##North Wind
83330##Mansions of Madness
92044##Dungeons & Dragons: Conquest of Nerath Board Game
155969##Harbour
45315##Dungeon Lords
104655##Lemonade Stand
12##Ra
141572##Paperback
4491##Cave Troll
1339##Dungeon!
19427##Gemblo
16772##Mall of Horror
142079##Space Cadets: Dice Duel
124708##Mice and Mystics
164153##Star Wars: Imperial Assault
10547##Betrayal at House on the Hill
121297##Fleet
135116##Rent a Hero
113924##Zombicide
155987##Abyss
17226##Descent: Journeys in the Dark
73761##K2
12493##Twilight Imperium: Third Edition
21241##Neuroshima Hex! 3.0
72225##CO₂
38862##Giants
147303##Carcassonne: South Seas
158340##Lost Legacy: Flying Garden
123096##Space Cadets
25261##Tannhäuser
113401##Timeline: Events
128667##Samurai Sword
73369##51st State
36946##Red November
99975##Timeline: Discoveries
22038##Warrior Knights
63740##Hotel Samoa
109125##Wallenstein (Second Edition)
137649##Level 7 [Omega Protocol]
142039##Lost Legacy
104527##The Game of Life Adventure Edition
140795##Say Bye to the Villains
85036##20th Century
43111##Chaos in the Old World
91312##Discworld: Ankh-Morpork
1234##Once Upon a Time: The Storytelling Card Game
95064##Ascension: Return of the Fallen
154600##Desperados of Dice Town
72125##Eclipse
91536##Quarriors!
28060##Archaeology
21790##Thurn and Taxis
114387##Thebes: The Tomb Raiders
142615##The Jelly Monster Lab
81453##Famiglia
58281##Summoner Wars
108687##Puerto Rico
25031##Power Grid: Benelux/Central Europe
39184##Speculation
140709##Alhambra: Family Box
210##Don Pepe
125618##Libertalia
147580##Power Grid: Australia & Indian Subcontinent
90137##Blood Bowl: Team Manager – The Card Game
40381##Modern Art Card Game
      """;
        }
      }
      Set<JuegoJugado> juegos = {};
      for (var juego in file.split('\n')) {
        if (juego != "") {
          String id = juego.split('##')[0];
          String nombre = juego.split('##')[1];
          juegos.add(JuegoJugado.constructor(
              idPropuesta: id, nombrePropuesta: nombre));
        }
      }
      emit(MostrandoJuegos(juegos, event.nombreUsuario));
    });
  }
}
