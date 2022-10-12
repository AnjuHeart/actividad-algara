import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';

abstract class ChecadorDeJugadas {
  ColeccionJuegos obtenerJuegos(NickFormado nick);
}

class ChecadorDeJugadasDePrueba extends ChecadorDeJugadas {
  @override
  ColeccionJuegos obtenerJuegos(NickFormado nick) {
    const String _benthor = """
                      <items totalitems="79" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse" pubdate="Tue, 11 Oct 2022 13:45:30 +0000">
<item objecttype="thing" objectid="5" subtype="boardgame" collid="26369304">
<name sortindex="1">Acquire</name>
<yearpublished>2008</yearpublished>
<image>https://cf.geekdo-images.com/j2z3W6hWGdQ8g-iZps_CyA__original/img/KKafmwWsggrFjmfJJB8Do86M5Y8=/0x0/filters:format(jpeg)/pic342163.jpg</image>
<thumbnail>https://cf.geekdo-images.com/j2z3W6hWGdQ8g-iZps_CyA__thumb/img/xYxNkHklGZBGIVOtNfiiTnzlNA0=/fit-in/200x150/filters:strip_icc()/pic342163.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:46:55"/>
<numplays>17</numplays>
</item>
<item objecttype="thing" objectid="88005" subtype="boardgame" collid="47588888">
<name sortindex="1">Aguila Roja</name>
<yearpublished>2010</yearpublished>
<image>https://cf.geekdo-images.com/1iWEb7CDt9_XrkNOGTWMmw__original/img/M6xv9oCCt3_D_V3sIjd1EBGjoo8=/0x0/filters:format(jpeg)/pic876782.jpg</image>
<thumbnail>https://cf.geekdo-images.com/1iWEb7CDt9_XrkNOGTWMmw__thumb/img/TY4-yHoQtlZsZGGpOauGn5wNKBg=/fit-in/200x150/filters:strip_icc()/pic876782.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-12-11 16:02:53"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="105551" subtype="boardgame" collid="21840410">
<name sortindex="1">Archipelago</name>
<yearpublished>2012</yearpublished>
<image>https://cf.geekdo-images.com/6kwNH1BGcKpwO6CpV3qRTQ__original/img/u2HsLmMtugNBX_o6dix4eDtYbwk=/0x0/filters:format(jpeg)/pic1640388.jpg</image>
<thumbnail>https://cf.geekdo-images.com/6kwNH1BGcKpwO6CpV3qRTQ__thumb/img/iJRQEfXxLAa0ekEd2Lw3DedQolI=/fit-in/200x150/filters:strip_icc()/pic1640388.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:47:45"/>
<numplays>12</numplays>
</item>
<item objecttype="thing" objectid="143741" subtype="boardgame" collid="24702165">
<name sortindex="1">BANG! The Dice Game</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/8E_MUKu19BM6YiUHXlbNGQ__original/img/uu7_Af-hk9AouG6fPJVI2SP5H_w=/0x0/filters:format(jpeg)/pic1684602.jpg</image>
<thumbnail>https://cf.geekdo-images.com/8E_MUKu19BM6YiUHXlbNGQ__thumb/img/ssaobey1vaJ03uGkj1BBQMAFiE4=/fit-in/200x150/filters:strip_icc()/pic1684602.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-09-06 22:22:26"/>
<numplays>59</numplays>
</item>
<item objecttype="thing" objectid="54137" subtype="boardgame" collid="43454068">
<name sortindex="1">Battle Sheep</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/CyRdRpZaIsCb4B8zfotI4Q__original/img/5FfCNbuFMYfXNoUKKAZkJugz-dE=/0x0/filters:format(jpeg)/pic1887253.jpg</image>
<thumbnail>https://cf.geekdo-images.com/CyRdRpZaIsCb4B8zfotI4Q__thumb/img/whuWEpda3VITkjptCXHcYD4tCm0=/fit-in/200x150/filters:strip_icc()/pic1887253.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:43:00"/>
<numplays>22</numplays>
</item>
<item objecttype="thing" objectid="37111" subtype="boardgame" collid="33596760">
<name sortindex="1">Battlestar Galactica: El juego de tablero</name>
<originalname>Battlestar Galactica: The Board Game</originalname>
<yearpublished>2009</yearpublished>
<image>https://cf.geekdo-images.com/1swoyYPO5imBPopnSlNFfQ__original/img/fOGlGkVHvfSFLkDayYMnGg0VIcc=/0x0/filters:format(jpeg)/pic448837.jpg</image>
<thumbnail>https://cf.geekdo-images.com/1swoyYPO5imBPopnSlNFfQ__thumb/img/N2K_l0SrF3llqEPCELmaC6IHPiI=/fit-in/200x150/filters:strip_icc()/pic448837.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2016-10-23 10:54:40"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="36739" subtype="boardgame" collid="29267935">
<name sortindex="1">Black Sheep</name>
<yearpublished>2008</yearpublished>
<image>https://cf.geekdo-images.com/iPhom8y58l_o7_iI7OFSAQ__original/img/tlO2Fcf3Yy9nzObetrWpubdPHw4=/0x0/filters:format(jpeg)/pic359281.jpg</image>
<thumbnail>https://cf.geekdo-images.com/iPhom8y58l_o7_iI7OFSAQ__thumb/img/gxTN6WWUkLhHbr4OhsRO3slaS6c=/fit-in/200x150/filters:strip_icc()/pic359281.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:43:50"/>
<numplays>21</numplays>
</item>
<item objecttype="thing" objectid="11" subtype="boardgame" collid="22906321">
<name sortindex="1">Bohnanza</name>
<yearpublished>2000</yearpublished>
<image>https://cf.geekdo-images.com/hTK_hi_S0RvDRuZKyNEgvQ__original/img/t0_TtOwUs0DfQzI2tN7gEVAQ9wc=/0x0/filters:format(jpeg)/pic69366.jpg</image>
<thumbnail>https://cf.geekdo-images.com/hTK_hi_S0RvDRuZKyNEgvQ__thumb/img/laOeOkZJnxHAmCPp7OCg66Xd-zY=/fit-in/200x150/filters:strip_icc()/pic69366.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:00:00"/>
<numplays>27</numplays>
</item>
<item objecttype="thing" objectid="127060" subtype="boardgame" collid="21840404">
<name sortindex="1">Bora Bora</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/9YEjZIVdWVcUVWC7o8aKsQ__original/img/FmxZfRUytUU35lwbNkTetKJT6YM=/0x0/filters:format(jpeg)/pic1542342.jpg</image>
<thumbnail>https://cf.geekdo-images.com/9YEjZIVdWVcUVWC7o8aKsQ__thumb/img/DvUZLxCdQsrU6uMqXnLU-ksIEJs=/fit-in/200x150/filters:strip_icc()/pic1542342.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:44:06"/>
<numplays>11</numplays>
</item>
<item objecttype="thing" objectid="28720" subtype="boardgame" collid="43615508">
<name sortindex="1">Brass</name>
<originalname>Brass: Lancashire</originalname>
<yearpublished>2009</yearpublished>
<image>https://cf.geekdo-images.com/PEYo2csXGM3-US1BGspJ4g__original/img/i0EOG9KFPIE-ywy2cZbPJHD-vL8=/0x0/filters:format(jpeg)/pic261878.jpg</image>
<thumbnail>https://cf.geekdo-images.com/PEYo2csXGM3-US1BGspJ4g__thumb/img/jcHn1nd-CITh7xlWxeNE4gW-lhI=/fit-in/200x150/filters:strip_icc()/pic261878.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-08 17:47:12"/>
<numplays>5</numplays>
</item>
<item objecttype="thing" objectid="172308" subtype="boardgame" collid="64450473">
<name sortindex="1">Broom Service</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/PcxTKtTwov2vxkZZbRVDAw__original/img/kjg4hSkTE2a8MKlkZNgTGqfKqgc=/0x0/filters:format(jpeg)/pic2546156.jpg</image>
<thumbnail>https://cf.geekdo-images.com/PcxTKtTwov2vxkZZbRVDAw__thumb/img/exJUDw66ox4k5H5dSX_oAOuRNXk=/fit-in/200x150/filters:strip_icc()/pic2546156.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-10-01 16:31:48"/>
<numplays>2</numplays>
</item>
<item objecttype="thing" objectid="136888" subtype="boardgame" collid="21840451">
<name sortindex="1">Bruges</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/A8JeebUT3mu4zUmYs9clDQ__original/img/v5d03Jz4di-I6S6C1iihj6JEeoY=/0x0/filters:format(jpeg)/pic1652004.jpg</image>
<thumbnail>https://cf.geekdo-images.com/A8JeebUT3mu4zUmYs9clDQ__thumb/img/0O-Yp8KcLpb_lUXGm3AgymPJKos=/fit-in/200x150/filters:strip_icc()/pic1652004.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2016-02-18 09:25:42"/>
<numplays>15</numplays>
</item>
<item objecttype="thing" objectid="161226" subtype="boardgame" collid="68410330">
<name sortindex="5">The Builders: Antiquity</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/D_KnKBBIOrPvqykC_wkRow__original/img/DcNwuUAYw8HQYrK3DJftwBAZs3U=/0x0/filters:format(jpeg)/pic3095866.jpg</image>
<thumbnail>https://cf.geekdo-images.com/D_KnKBBIOrPvqykC_wkRow__thumb/img/-xPxSrRrIdgDxRRi43-5Ml0ieyM=/fit-in/200x150/filters:strip_icc()/pic3095866.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2020-02-01 10:09:52"/>
<numplays>2</numplays>
</item>
<item objecttype="thing" objectid="144553" subtype="boardgame" collid="27829035">
<name sortindex="5">The Builders: Middle Ages</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/Dm4DlsDMxj7pEWypXeQAXQ__original/img/khA8wBNSQnGggbqOPrqKXr2BNjA=/0x0/filters:format(jpeg)/pic1987602.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Dm4DlsDMxj7pEWypXeQAXQ__thumb/img/dJCYEHG06GbTCdkuGTw6npGI0xk=/fit-in/200x150/filters:strip_icc()/pic1987602.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:44:27"/>
<numplays>31</numplays>
</item>
<item objecttype="thing" objectid="19237" subtype="boardgame" collid="22720299">
<name sortindex="1">Cash 'n Gun</name>
<yearpublished>2006</yearpublished>
<image>https://cf.geekdo-images.com/FgbqO3wfCJi0sUvHtVHvdw__original/img/nAFyKm4N_vDtuuGCDOt4ruFVI44=/0x0/filters:format(jpeg)/pic412514.jpg</image>
<thumbnail>https://cf.geekdo-images.com/FgbqO3wfCJi0sUvHtVHvdw__thumb/img/HZtiwoRBovMXzIvithnpvkwOOX0=/fit-in/200x150/filters:strip_icc()/pic412514.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-04-28 10:20:37"/>
<numplays>12</numplays>
</item>
<item objecttype="thing" objectid="171499" subtype="boardgame" collid="50347049">
<name sortindex="1">Cacao</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/Jy1rS7NG2wqirpOCLvhkyg__original/img/49My8xcK0zffmueZq6Hesgwcgfo=/0x0/filters:format(jpeg)/pic2524808.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Jy1rS7NG2wqirpOCLvhkyg__thumb/img/0VUnPBotsCTtySrt2tNFJr0Uf48=/fit-in/200x150/filters:strip_icc()/pic2524808.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-03-16 13:45:12"/>
<numplays>17</numplays>
</item>
<item objecttype="thing" objectid="822" subtype="boardgame" collid="21840415">
<name sortindex="1">Carcassonne</name>
<yearpublished>2000</yearpublished>
<image>https://cf.geekdo-images.com/6kKPhiK0VloFSgCwK--LxQ__original/img/Omer5-ZtTmlH0lkBtJ18MmEXPAQ=/0x0/filters:format(jpeg)/pic1253768.jpg</image>
<thumbnail>https://cf.geekdo-images.com/6kKPhiK0VloFSgCwK--LxQ__thumb/img/HGypT4L42bhGOWe6zBI9M4KE_uM=/fit-in/200x150/filters:strip_icc()/pic1253768.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:00:53"/>
<numplays>29</numplays>
</item>
<item objecttype="thing" objectid="2993" subtype="boardgame" collid="21840417">
<name sortindex="1">Carcassonne: Inns & Cathedrals</name>
<originalname>Carcassonne: Expansion 1 – Inns & Cathedrals</originalname>
<yearpublished>2005</yearpublished>
<image>https://cf.geekdo-images.com/m4mu1ieAS1GxMjQDh1M5Aw__original/img/08qwqwvrtUPqYCdbndJzyK1G9gc=/0x0/filters:format(jpeg)/pic97384.jpg</image>
<thumbnail>https://cf.geekdo-images.com/m4mu1ieAS1GxMjQDh1M5Aw__thumb/img/huBAFBM8poV74hLj37OI2U3ksRw=/fit-in/200x150/filters:strip_icc()/pic97384.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:01:20"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="15158" subtype="boardgame" collid="21840428">
<name sortindex="1">Carcassonne: The Princess & the Dragon</name>
<originalname>Carcassonne: Expansion 3 – The Princess & The Dragon</originalname>
<yearpublished>2005</yearpublished>
<image>https://cf.geekdo-images.com/Yw5y0HJbIDLdd1AR8jiG4w__original/img/OlXlyd1qMQLacxtOha6W6tLFme4=/0x0/filters:format(jpeg)/pic97382.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Yw5y0HJbIDLdd1AR8jiG4w__thumb/img/g816wFvURajeyvXqv9xa_T6FcSw=/fit-in/200x150/filters:strip_icc()/pic97382.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:01:27"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="2591" subtype="boardgame" collid="21840425">
<name sortindex="1">Carcassonne: The River</name>
<yearpublished>2001</yearpublished>
<image>https://cf.geekdo-images.com/H12D5cs6KGb9XObJW_kCdA__original/img/q30HCSn2ECQ3JOI0hgKZ3YBpFBw=/0x0/filters:format(jpeg)/pic935260.jpg</image>
<thumbnail>https://cf.geekdo-images.com/H12D5cs6KGb9XObJW_kCdA__thumb/img/2Yoi5rNStIlawSIsunWVQNzMgDY=/fit-in/200x150/filters:strip_icc()/pic935260.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:01:38"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="5405" subtype="boardgame" collid="40812007">
<name sortindex="1">Carcassonne: Traders & Builders</name>
<originalname>Carcassonne: Expansion 2 – Traders & Builders</originalname>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/BaBb91gSf9Lu7CA0Pa9sOg__original/img/NHZlKCrmmNLzmN8k5X4UAjfRWMI=/0x0/filters:format(jpeg)/pic2659946.jpg</image>
<thumbnail>https://cf.geekdo-images.com/BaBb91gSf9Lu7CA0Pa9sOg__thumb/img/wKxqmMudEz0HaM7MEDKLbTVa1qE=/fit-in/200x150/filters:strip_icc()/pic2659946.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:44:48"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="18602" subtype="boardgame" collid="21840436">
<name sortindex="1">Caylus</name>
<yearpublished>2006</yearpublished>
<image>https://cf.geekdo-images.com/nyczElYWAQC3VgCLFpikdg__original/img/M4QSjfJXcbyWovs7jphCDcLBOgY=/0x0/filters:format(jpeg)/pic714825.jpg</image>
<thumbnail>https://cf.geekdo-images.com/nyczElYWAQC3VgCLFpikdg__thumb/img/rEQWcdbCyy_9u0L2Qxvy-St4RTE=/fit-in/200x150/filters:strip_icc()/pic714825.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:46:15"/>
<numplays>14</numplays>
</item>
<item objecttype="thing" objectid="5782" subtype="boardgame" collid="21840443">
<name sortindex="1">Coloretto</name>
<yearpublished>2003</yearpublished>
<image>https://cf.geekdo-images.com/Z_C3ujE0BcRpbQjDd1Vatg__original/img/vX1WXUNWWN6TT01O-YhfgXJvpSc=/0x0/filters:format(jpeg)/pic149765.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Z_C3ujE0BcRpbQjDd1Vatg__thumb/img/40jfO9cNXB20z1fm6FfSkGf5qVQ=/fit-in/200x150/filters:strip_icc()/pic149765.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:01:54"/>
<numplays>36</numplays>
</item>
<item objecttype="thing" objectid="172062" subtype="boardgame" collid="45871428">
<name sortindex="1">Fairytale Gloom</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/jFReewEY23nmncMGIyr04w__original/img/IG1juwJTahSefnMmcun-EtwQjwM=/0x0/filters:format(jpeg)/pic2462187.jpg</image>
<thumbnail>https://cf.geekdo-images.com/jFReewEY23nmncMGIyr04w__thumb/img/TlmMHmTPete9xTbAG2qVbdz-Nxk=/fit-in/200x150/filters:strip_icc()/pic2462187.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-08 17:44:57"/>
<numplays>0</numplays>
<comment>thanks to my friend Doc Logan</comment>
</item>
<item objecttype="thing" objectid="83195" subtype="boardgame" collid="37713304">
<name sortindex="1">Fantasma Blitz</name>
<originalname>Ghost Blitz</originalname>
<yearpublished>2011</yearpublished>
<image>https://cf.geekdo-images.com/0VvL-xYBsePb1DaV7AtpPw__original/img/8Sm6xq3mCTUdoqyw3029iBquvv4=/0x0/filters:format(jpeg)/pic1322076.jpg</image>
<thumbnail>https://cf.geekdo-images.com/0VvL-xYBsePb1DaV7AtpPw__thumb/img/U4wQ7QCvmPaaj8enF6-CNosJvuM=/fit-in/200x150/filters:strip_icc()/pic1322076.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2016-10-23 10:40:00"/>
<numplays>7</numplays>
</item>
<item objecttype="thing" objectid="66188" subtype="boardgame" collid="60395838">
<name sortindex="1">Fresco</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/w3guzR0x9119877WSUJrPw__original/img/im38L984_wcxms72OU9m8Dniaf0=/0x0/filters:format(jpeg)/pic3712917.jpg</image>
<thumbnail>https://cf.geekdo-images.com/w3guzR0x9119877WSUJrPw__thumb/img/cyKqdZZhX3_PECHPrvmry_WQpiU=/fit-in/200x150/filters:strip_icc()/pic3712917.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-05-07 09:41:26"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="23964" subtype="boardgame" collid="21840466">
<name sortindex="5">The Game of Life (40th Anniversary Edition)</name>
<yearpublished>1999</yearpublished>
<image>https://cf.geekdo-images.com/gJ8NIt1CJaIyJkGcl-16wQ__original/img/p2EvZscOKQXgv9c3mtsf53QrI_U=/0x0/filters:format(jpeg)/pic222563.jpg</image>
<thumbnail>https://cf.geekdo-images.com/gJ8NIt1CJaIyJkGcl-16wQ__thumb/img/OmuyK901kq8V8sKbAohHG8NQll4=/fit-in/200x150/filters:strip_icc()/pic222563.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:45:42"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="104527" subtype="boardgame" collid="21840465">
<name sortindex="5">The Game of Life Adventure Edition</name>
<yearpublished>2011</yearpublished>
<image>https://cf.geekdo-images.com/095-qZdH7T9nY64xSR-WLw__original/img/G7FoC-XIDZP4_6dGrKOg-WjTf1U=/0x0/filters:format(png)/pic1158570.png</image>
<thumbnail>https://cf.geekdo-images.com/095-qZdH7T9nY64xSR-WLw__thumb/img/FXAK10IheIBOqihJ5W97LSj611c=/fit-in/200x150/filters:strip_icc()/pic1158570.png</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:44:50"/>
<numplays>2</numplays>
</item>
<item objecttype="thing" objectid="116" subtype="boardgame" collid="21840446">
<name sortindex="1">Guillotine</name>
<yearpublished>2005</yearpublished>
<image>https://cf.geekdo-images.com/annCDhWOMlY6po0GLaoJLw__original/img/z1IGF2K6zdzL3ZpC266gjg6Ez5A=/0x0/filters:format(jpeg)/pic100499.jpg</image>
<thumbnail>https://cf.geekdo-images.com/annCDhWOMlY6po0GLaoJLw__thumb/img/G4rQEHfIjtmDABFaImqQa99M5_c=/fit-in/200x150/filters:strip_icc()/pic100499.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-02-10 12:58:31"/>
<numplays>16</numplays>
</item>
<item objecttype="thing" objectid="154246" subtype="boardgame" collid="36508499">
<name sortindex="4">La Isla</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/NR5VdEHv-LilFS3UKG82wg__original/img/PU2IpbxX8KGs_sIV5IoBW6jfIS4=/0x0/filters:format(jpeg)/pic2073938.jpg</image>
<thumbnail>https://cf.geekdo-images.com/NR5VdEHv-LilFS3UKG82wg__thumb/img/PO7_SuSMn-k1xOVj4resJoonmnA=/fit-in/200x150/filters:strip_icc()/pic2073938.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:41:24"/>
<numplays>7</numplays>
</item>
<item objecttype="thing" objectid="142615" subtype="boardgame" collid="22945635">
<name sortindex="5">The Jelly Monster Lab</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/OD5RW_EKIB4fhnbWRU5eJQ__original/img/yy7BrPSo-u_EBPhEG2eO1NF2s6c=/0x0/filters:format(png)/pic1785895.png</image>
<thumbnail>https://cf.geekdo-images.com/OD5RW_EKIB4fhnbWRU5eJQ__thumb/img/sz82ZxcAKM8LeB2ZtrnpllRWXC4=/fit-in/200x150/filters:strip_icc()/pic1785895.png</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-04-28 10:21:11"/>
<numplays>6</numplays>
</item>
<item objecttype="thing" objectid="109276" subtype="boardgame" collid="60055326">
<name sortindex="1">Kanban: Driver's Edition</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/rzSmS-GD8_pGl9bWo07FWQ__original/img/TFtpuGRO0cbVjWl03YhtzTBRk5A=/0x0/filters:format(jpeg)/pic5638431.jpg</image>
<thumbnail>https://cf.geekdo-images.com/rzSmS-GD8_pGl9bWo07FWQ__thumb/img/jo2betPcpo8mVZPIs993TT_nOMo=/fit-in/200x150/filters:strip_icc()/pic5638431.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-04-22 19:46:20"/>
<numplays>3</numplays>
</item>
<item objecttype="thing" objectid="70323" subtype="boardgame" collid="28848781">
<name sortindex="1">King of Tokyo</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/coCXbNbgwr6zU9xEiH51Jw__original/img/NkxGXQhckYvUP9762oBa9Hu-UQ8=/0x0/filters:format(jpeg)/pic2346214.jpg</image>
<thumbnail>https://cf.geekdo-images.com/coCXbNbgwr6zU9xEiH51Jw__thumb/img/GCBGrTXd_7HGSMjun53VUC558r0=/fit-in/200x150/filters:strip_icc()/pic2346214.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:41:06"/>
<numplays>26</numplays>
</item>
<item objecttype="thing" objectid="119781" subtype="boardgame" collid="31234847">
<name sortindex="1">Legacy: Gears of Time</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/XbZv1q9MlYIBGQoaxdOS9g__original/img/UEfOIrgFerDW5F_HBfdNJkCEjFM=/0x0/filters:format(jpeg)/pic1750489.jpg</image>
<thumbnail>https://cf.geekdo-images.com/XbZv1q9MlYIBGQoaxdOS9g__thumb/img/3nxZ3hStk8PTVz9fLuI0wrLUWHg=/fit-in/200x150/filters:strip_icc()/pic1750489.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-11-10 22:56:05"/>
<numplays>12</numplays>
</item>
<item objecttype="thing" objectid="158339" subtype="boardgame" collid="27626622">
<name sortindex="1">Lost Legacy: The Starship</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/aOB_o5UdsJorNJXl-cSP8w__original/img/x2vwRidRBfSKXHtK41U0L8zeG4k=/0x0/filters:format(jpeg)/pic1998162.jpg</image>
<thumbnail>https://cf.geekdo-images.com/aOB_o5UdsJorNJXl-cSP8w__thumb/img/yP1Xl_aWaif7XmwKbWkyvokXbyY=/fit-in/200x150/filters:strip_icc()/pic1998162.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-03-19 10:49:50"/>
<numplays>13</numplays>
</item>
<item objecttype="thing" objectid="168584" subtype="boardgame" collid="64453717">
<name sortindex="1">Love Letter: Batman</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/PWa3bk0_hc3h9wes51e2gA__original/img/IQtAddXlLb6o6sqaem7J4n7NL5g=/0x0/filters:format(jpeg)/pic2290765.jpg</image>
<thumbnail>https://cf.geekdo-images.com/PWa3bk0_hc3h9wes51e2gA__thumb/img/SxEtASAGYnXBmWKaSNtXgUu3f78=/fit-in/200x150/filters:strip_icc()/pic2290765.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-10-01 20:12:53"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="70512" subtype="boardgame" collid="45443793">
<name sortindex="1">Luna: In the Domain of the Moon Priestess</name>
<originalname>Luna</originalname>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/tMYWtENCa6qdHg3DLIDqcw__original/img/36hPaylXSE-5S4oKm6TPb9ElU6A=/0x0/filters:format(png)/pic2538939.png</image>
<thumbnail>https://cf.geekdo-images.com/tMYWtENCa6qdHg3DLIDqcw__thumb/img/K5WlrHSW_e0JqRhu6Na_D-h5klU=/fit-in/200x150/filters:strip_icc()/pic2538939.png</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:45:42"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="99875" subtype="boardgame" collid="21840447">
<name sortindex="1">Martian Dice</name>
<yearpublished>2011</yearpublished>
<image>https://cf.geekdo-images.com/2lGrrpl027lnR17LF51ixA__original/img/p4fIrAghq9YjGHk2O7J2uPdbmtg=/0x0/filters:format(jpeg)/pic1516575.jpg</image>
<thumbnail>https://cf.geekdo-images.com/2lGrrpl027lnR17LF51ixA__thumb/img/dm46DOLOpCyEe0Fff7YlTmxNSPw=/fit-in/200x150/filters:strip_icc()/pic1516575.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-05-05 12:34:23"/>
<numplays>14</numplays>
</item>
<item objecttype="thing" objectid="139030" subtype="boardgame" collid="36508521">
<name sortindex="1">Mascarade</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/zhOWyjxviRzP_JRBU4g5ZA__original/img/fBbvJ3dadHwqCQksASzkrP5uqfo=/0x0/filters:format(jpeg)/pic3118987.jpg</image>
<thumbnail>https://cf.geekdo-images.com/zhOWyjxviRzP_JRBU4g5ZA__thumb/img/6eskzW6JNqP4BYGH_mzyYz-ToQo=/fit-in/200x150/filters:strip_icc()/pic3118987.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2016-10-23 10:45:16"/>
<numplays>24</numplays>
</item>
<item objecttype="thing" objectid="191543" subtype="boardgame" collid="45443758">
<name sortindex="1">Micro Robots</name>
<yearpublished>2016</yearpublished>
<image>https://cf.geekdo-images.com/LwpvXteaGcKAaT2Chry7Dg__original/img/hUkhKczFazW0rWKq0guVkGEKDaw=/0x0/filters:format(jpeg)/pic3920143.jpg</image>
<thumbnail>https://cf.geekdo-images.com/LwpvXteaGcKAaT2Chry7Dg__thumb/img/jO62zfuC_8qrG5RwIUZyHeB2-Fs=/fit-in/200x150/filters:strip_icc()/pic3920143.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-08 17:48:22"/>
<numplays>3</numplays>
</item>
<item objecttype="thing" objectid="176920" subtype="boardgame" collid="38852501">
<name sortindex="1">Mission: Red Planet (Second Edition)</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/qMUyGstRWieYOyTVA1vsNQ__original/img/5AvYhFjlCGzHxGrvmlj-Qg6_uW0=/0x0/filters:format(jpeg)/pic2499748.jpg</image>
<thumbnail>https://cf.geekdo-images.com/qMUyGstRWieYOyTVA1vsNQ__thumb/img/DAoKCAePfujueMVYiwWmGDJPZgk=/fit-in/200x150/filters:strip_icc()/pic2499748.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-02-25 21:59:26"/>
<numplays>7</numplays>
</item>
<item objecttype="thing" objectid="40398" subtype="boardgame" collid="35331666">
<name sortindex="1">Monopoly Deal Card Game</name>
<yearpublished>2008</yearpublished>
<image>https://cf.geekdo-images.com/8kHMSAvFxf-ygPoTEf3lsg__original/img/6T_wJRTmh34FKgbvP3axgvnlNFc=/0x0/filters:format(jpeg)/pic716758.jpg</image>
<thumbnail>https://cf.geekdo-images.com/8kHMSAvFxf-ygPoTEf3lsg__thumb/img/HqFr6hVxjLWxIq6yAk3Drj9gOBc=/fit-in/200x150/filters:strip_icc()/pic716758.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:40:41"/>
<numplays>9</numplays>
</item>
<item objecttype="thing" objectid="164237" subtype="boardgame" collid="58160093">
<name sortindex="1">Neptun</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/qBiGiwFP-I55zFGU38Tlzw__original/img/BOOLA6Cqwipt2p92lQunwn7LByI=/0x0/filters:format(jpeg)/pic2335546.jpg</image>
<thumbnail>https://cf.geekdo-images.com/qBiGiwFP-I55zFGU38Tlzw__thumb/img/zvgEPqVQIO2g-7gZ9BIIx_R1-Tg=/fit-in/200x150/filters:strip_icc()/pic2335546.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-02-04 15:14:58"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="12942" subtype="boardgame" collid="42410967">
<name sortindex="1">No Thanks!</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/2P4-gR4xYLnfZtljfc2dRA__original/img/nfnXCkBIcoFLJBpiJLWwBcN1saU=/0x0/filters:format(jpeg)/pic2602161.jpg</image>
<thumbnail>https://cf.geekdo-images.com/2P4-gR4xYLnfZtljfc2dRA__thumb/img/zQE9bdhYVPJbnbO7AOnatF9l5Yw=/fit-in/200x150/filters:strip_icc()/pic2602161.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-05-08 11:18:57"/>
<numplays>45</numplays>
</item>
<item objecttype="thing" objectid="213984" subtype="boardgame" collid="54804287">
<name sortindex="1">Notre Dame: 10th Anniversary</name>
<yearpublished>2017</yearpublished>
<image>https://cf.geekdo-images.com/XUol3sEec0k-XElqJI9_ew__original/img/wesYiDJ2ARPC0iMfEna0p8BgOz4=/0x0/filters:format(jpeg)/pic3617406.jpg</image>
<thumbnail>https://cf.geekdo-images.com/XUol3sEec0k-XElqJI9_ew__thumb/img/IEEM868VfpTscZdyeFdiI9eT4NY=/fit-in/200x150/filters:strip_icc()/pic3617406.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-10-08 09:08:55"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="192860" subtype="boardgame" collid="54341862">
<name sortindex="1">Oceanos</name>
<yearpublished>2016</yearpublished>
<image>https://cf.geekdo-images.com/pSz89XjEGXbZZn5ROo45EQ__original/img/Wm4nqb0UNLmG4ISVBzDRN925A7U=/0x0/filters:format(jpeg)/pic3014888.jpg</image>
<thumbnail>https://cf.geekdo-images.com/pSz89XjEGXbZZn5ROo45EQ__thumb/img/Rbz9RYPUhHIpxOHRNxcgKhzTAQc=/fit-in/200x150/filters:strip_icc()/pic3014888.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-09-16 23:13:23"/>
<numplays>7</numplays>
</item>
<item objecttype="thing" objectid="88950" subtype="boardgame" collid="48555559">
<name sortindex="1">Palenque</name>
<yearpublished>2011</yearpublished>
<image>https://cf.geekdo-images.com/VNAQrJhseeXRoxMT_CZ-SA__original/img/U96fHRuc1wa_E3QFWS2KhV3CkrE=/0x0/filters:format(jpeg)/pic877093.jpg</image>
<thumbnail>https://cf.geekdo-images.com/VNAQrJhseeXRoxMT_CZ-SA__thumb/img/mgXg4441ONbw774TNWr9AH5nhDk=/fit-in/200x150/filters:strip_icc()/pic877093.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-01-22 12:58:18"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="128780" subtype="boardgame" collid="44286048">
<name sortindex="1">Pax Porfiriana</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/8eJ48UzKLLNz2AT_bhuPRA__original/img/0IarHHwU9mP2uR2Mzai24okV3PY=/0x0/filters:format(jpeg)/pic2499476.jpg</image>
<thumbnail>https://cf.geekdo-images.com/8eJ48UzKLLNz2AT_bhuPRA__thumb/img/W1cw8ik76AXLFZm6e8qPb1b3LL0=/fit-in/200x150/filters:strip_icc()/pic2499476.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:40:23"/>
<numplays>5</numplays>
</item>
<item objecttype="thing" objectid="163967" subtype="boardgame" collid="40086462">
<name sortindex="1">Pequeñas Grandes Galaxias</name>
<originalname>Tiny Epic Galaxies</originalname>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/x1Ri6_r6b8CKYvJuxC3hJw__original/img/Zl24iJyoGhUmaukXf10JUsp4vGw=/0x0/filters:format(jpeg)/pic2745628.jpg</image>
<thumbnail>https://cf.geekdo-images.com/x1Ri6_r6b8CKYvJuxC3hJw__thumb/img/DHisBHVJfuAd2S8W1Ceuyswuwh8=/fit-in/200x150/filters:strip_icc()/pic2745628.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-02-25 21:57:33"/>
<numplays>10</numplays>
<comment>Thanks to my friend Tomba</comment>
</item>
<item objecttype="thing" objectid="148951" subtype="boardgame" collid="31044517">
<name sortindex="1">Pequeños Grandes Reinos</name>
<originalname>Tiny Epic Kingdoms</originalname>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/8g03Iha53WnhSw1l56kvYA__original/img/E-MEDK2IcF0IqELVIUQGkNIFXf8=/0x0/filters:format(jpeg)/pic2253423.jpg</image>
<thumbnail>https://cf.geekdo-images.com/8g03Iha53WnhSw1l56kvYA__thumb/img/9UtkxQGkFrcQELQhgZxagOSKOsU=/fit-in/200x150/filters:strip_icc()/pic2253423.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:47:16"/>
<numplays>16</numplays>
</item>
<item objecttype="thing" objectid="180852" subtype="boardgame" collid="42410175">
<name sortindex="1">Pequeños Grandes Westerns</name>
<originalname>Tiny Epic Western</originalname>
<yearpublished>2016</yearpublished>
<image>https://cf.geekdo-images.com/mFrBRRxvR45G39ofOTvtWQ__original/img/YbWwiQzODYmpsf6py-bJ0B3tqOo=/0x0/filters:format(jpeg)/pic3179870.jpg</image>
<thumbnail>https://cf.geekdo-images.com/mFrBRRxvR45G39ofOTvtWQ__thumb/img/_siXTD5igY0g3TrS0EGgpqIZmY0=/fit-in/200x150/filters:strip_icc()/pic3179870.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:47:40"/>
<numplays>5</numplays>
</item>
<item objecttype="thing" objectid="24480" subtype="boardgame" collid="40811765">
<name sortindex="5">Los Pilares de la Tierra</name>
<originalname>The Pillars of the Earth</originalname>
<yearpublished>2006</yearpublished>
<image>https://cf.geekdo-images.com/lh3xInfWo4_o9LrUWZY-xg__original/img/lAL8_tzQ3iPi8su4DGX1Mt_Kjko=/0x0/filters:format(jpeg)/pic292094.jpg</image>
<thumbnail>https://cf.geekdo-images.com/lh3xInfWo4_o9LrUWZY-xg__thumb/img/q0EBfEP4V01556KGMYupbnXUvIA=/fit-in/200x150/filters:strip_icc()/pic292094.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:48:06"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="2651" subtype="boardgame" collid="50791445">
<name sortindex="1">Power Grid</name>
<yearpublished>2004</yearpublished>
<image>https://cf.geekdo-images.com/yd6LuatytHRhcFCxCf-EEg__original/img/OS13C6W4i1XW__wWVVVaqF7BV0c=/0x0/filters:format(jpeg)/pic4459753.jpg</image>
<thumbnail>https://cf.geekdo-images.com/yd6LuatytHRhcFCxCf-EEg__thumb/img/jWTonZ5oYNlPzpELKHIJGWSS0Y8=/fit-in/200x150/filters:strip_icc()/pic4459753.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-04-05 10:18:01"/>
<numplays>7</numplays>
</item>
<item objecttype="thing" objectid="3076" subtype="boardgame" collid="21840396">
<name sortindex="1">Puerto Rico</name>
<yearpublished>2002</yearpublished>
<image>https://cf.geekdo-images.com/tMvLoa2wUtKekIRhNbMbOA__original/img/PpiUKC-po6d7TnTF8nzQuWEZds8=/0x0/filters:format(jpeg)/pic474392.jpg</image>
<thumbnail>https://cf.geekdo-images.com/tMvLoa2wUtKekIRhNbMbOA__thumb/img/RTiV7uFNs-Hspmg0olsWr6jqJX4=/fit-in/200x150/filters:strip_icc()/pic474392.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:14:30"/>
<numplays>10</numplays>
</item>
<item objecttype="thing" objectid="28143" subtype="boardgame" collid="43454020">
<name sortindex="1">Race for the Galaxy</name>
<yearpublished>2007</yearpublished>
<image>https://cf.geekdo-images.com/40r0zriPeT-tuQaOHCLqWQ__original/img/5_Mv6Nci49W-xWNv8ooDqo6no2g=/0x0/filters:format(jpeg)/pic236327.jpg</image>
<thumbnail>https://cf.geekdo-images.com/40r0zriPeT-tuQaOHCLqWQ__thumb/img/Gj9xzdjoKFF9nG6AllL-mdvR3dw=/fit-in/200x150/filters:strip_icc()/pic236327.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-06-27 12:32:15"/>
<numplays>12</numplays>
</item>
<item objecttype="thing" objectid="85250" subtype="boardgame" collid="37713370">
<name sortindex="5">El Rey de los Enanos</name>
<originalname>The Dwarf King</originalname>
<yearpublished>2012</yearpublished>
<image>https://cf.geekdo-images.com/S0GMTG_JDn-qqP28oyochw__original/img/cWlBb8cTckZ1sqF0VUZQKqOzvC0=/0x0/filters:format(jpeg)/pic1429989.jpg</image>
<thumbnail>https://cf.geekdo-images.com/S0GMTG_JDn-qqP28oyochw__thumb/img/CHpLP0wG3_hl9MQaNssgWXIPmW0=/fit-in/200x150/filters:strip_icc()/pic1429989.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2016-10-23 10:42:27"/>
<numplays>17</numplays>
</item>
<item objecttype="thing" objectid="93577" subtype="boardgame" collid="31629138">
<name sortindex="1">Rocket Jockey</name>
<yearpublished>2012</yearpublished>
<image>https://cf.geekdo-images.com/AbGfBhUK-QuuOLgW0tGU0A__original/img/wbPS0dVtWoVqs88pO79YrQVMnZA=/0x0/filters:format(jpeg)/pic1119583.jpg</image>
<thumbnail>https://cf.geekdo-images.com/AbGfBhUK-QuuOLgW0tGU0A__thumb/img/Q21MckaWLkB3saW0fQQ3s4PoKiI=/fit-in/200x150/filters:strip_icc()/pic1119583.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2015-12-03 14:44:34"/>
<numplays>6</numplays>
</item>
<item objecttype="thing" objectid="9220" subtype="boardgame" collid="21840441">
<name sortindex="1">Saboteur</name>
<yearpublished>2004</yearpublished>
<image>https://cf.geekdo-images.com/4OdzSrbUJD-WNtBn6hKG8g__original/img/PQr7_ti9pwu8Adp1PmbLTzMS8kk=/0x0/filters:format(jpeg)/pic172286.jpg</image>
<thumbnail>https://cf.geekdo-images.com/4OdzSrbUJD-WNtBn6hKG8g__thumb/img/l4a4P8qQ4bavJryu51BbRht0xe8=/fit-in/200x150/filters:strip_icc()/pic172286.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:14:58"/>
<numplays>10</numplays>
</item>
<item objecttype="thing" objectid="40692" subtype="boardgame" collid="24456823">
<name sortindex="1">Small World</name>
<yearpublished>2010</yearpublished>
<image>https://cf.geekdo-images.com/DoOU9EBnFhdM4lCHRh_7Xg__original/img/1R0_eLQYd5nMulch3hg9piX00ak=/0x0/filters:format(jpeg)/pic2865580.jpg</image>
<thumbnail>https://cf.geekdo-images.com/DoOU9EBnFhdM4lCHRh_7Xg__thumb/img/G2ECVlp-EEcNv4KSxaEDFUDG9sw=/fit-in/200x150/filters:strip_icc()/pic2865580.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-08-19 22:36:15"/>
<numplays>19</numplays>
</item>
<item objecttype="thing" objectid="148228" subtype="boardgame" collid="28848814">
<name sortindex="1">Splendor</name>
<yearpublished>2014</yearpublished>
<image>https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__original/img/Y2tUGY2nPTGd_epJYKQXPkQD8AM=/0x0/filters:format(jpeg)/pic1904079.jpg</image>
<thumbnail>https://cf.geekdo-images.com/rwOMxx4q5yuElIvo-1-OFw__thumb/img/D4hkkHfOgu22PwgJomjplWAveuo=/fit-in/200x150/filters:strip_icc()/pic1904079.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-12-11 15:57:20"/>
<numplays>39</numplays>
</item>
<item objecttype="thing" objectid="121410" subtype="boardgame" collid="32064551">
<name sortindex="1">Steam Park</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/RwWF-IQ8EvyBAxCV0s5dhA__original/img/WUZRF2MaADZuz3oi3VPFScVF9Ww=/0x0/filters:format(jpeg)/pic2069055.jpg</image>
<thumbnail>https://cf.geekdo-images.com/RwWF-IQ8EvyBAxCV0s5dhA__thumb/img/14U4Umlpd0aOo65A3couUFic5pI=/fit-in/200x150/filters:strip_icc()/pic2069055.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-10-06 11:49:10"/>
<numplays>11</numplays>
</item>
<item objecttype="thing" objectid="27833" subtype="boardgame" collid="22906144">
<name sortindex="1">Steam: Rails to Riches</name>
<originalname>Steam</originalname>
<yearpublished>2009</yearpublished>
<image>https://cf.geekdo-images.com/IB38fOp0mTvFuvfdHczf0Q__original/img/SN5DSgS5Z0GOEzTBulGgX3faHCA=/0x0/filters:format(jpeg)/pic392515.jpg</image>
<thumbnail>https://cf.geekdo-images.com/IB38fOp0mTvFuvfdHczf0Q__thumb/img/UpyU-hvpdn3Q2b4Y486w2M3CO8I=/fit-in/200x150/filters:strip_icc()/pic392515.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-04-19 20:15:11"/>
<numplays>18</numplays>
</item>
<item objecttype="thing" objectid="2653" subtype="boardgame" collid="64450483">
<name sortindex="1">Survive: Escape from Atlantis!</name>
<yearpublished>1982</yearpublished>
<image>https://cf.geekdo-images.com/0M2ck50-GanxBWfOHUZ64A__original/img/5VKS6zuDQlHBQcTcDNRNFYu-7Bg=/0x0/filters:format(png)/pic1300182.png</image>
<thumbnail>https://cf.geekdo-images.com/0M2ck50-GanxBWfOHUZ64A__thumb/img/6ffKBS6bTCKgCmH7zdHJIxcU8ZA=/fit-in/200x150/filters:strip_icc()/pic1300182.png</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-10-01 16:32:15"/>
<numplays>5</numplays>
</item>
<item objecttype="thing" objectid="246912" subtype="boardgame" collid="64444337">
<name sortindex="1">Take 5 & Take A Number</name>
<yearpublished>2018</yearpublished>
<image>https://cf.geekdo-images.com/F4QVKZx_DlQMoVdJZouJgQ__original/img/qCRVl4WKw3D-R1wq9MLHY7q-7NE=/0x0/filters:format(jpeg)/pic6684008.jpg</image>
<thumbnail>https://cf.geekdo-images.com/F4QVKZx_DlQMoVdJZouJgQ__thumb/img/0pwUJ2-xu9krm4hMJPdZMuvlPPc=/fit-in/200x150/filters:strip_icc()/pic6684008.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-10-01 12:02:42"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="70919" subtype="boardgame" collid="54341742">
<name sortindex="1">Takenoko</name>
<yearpublished>2016</yearpublished>
<image>https://cf.geekdo-images.com/uvz-5V6A2R6dp2oWIXmj_g__original/img/HxMG1z7bIVGCGPI6u6ciVO0Oubk=/0x0/filters:format(jpeg)/pic1912529.jpg</image>
<thumbnail>https://cf.geekdo-images.com/uvz-5V6A2R6dp2oWIXmj_g__thumb/img/vz9Ec1xB2b4JJQlZFijUsuCvfkQ=/fit-in/200x150/filters:strip_icc()/pic1912529.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-09-16 23:04:59"/>
<numplays>15</numplays>
</item>
<item objecttype="thing" objectid="175961" subtype="boardgame" collid="51881640">
<name sortindex="1">Three Cheers for Master</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/0FAdyrbZeOPiMVEMdcK90w__original/img/EHhdN6rgo9M7dT0BJ7xElRKXqMg=/0x0/filters:format(jpeg)/pic2475824.jpg</image>
<thumbnail>https://cf.geekdo-images.com/0FAdyrbZeOPiMVEMdcK90w__thumb/img/1S6iXOoW05xPezu4365vGkDpxfY=/fit-in/200x150/filters:strip_icc()/pic2475824.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-05-25 11:59:44"/>
<numplays>2</numplays>
</item>
<item objecttype="thing" objectid="25613" subtype="boardgame" collid="40811798">
<name sortindex="1">Through the Ages: Historia de las Civilizaciones</name>
<originalname>Through the Ages: A Story of Civilization</originalname>
<yearpublished>2012</yearpublished>
<image>https://cf.geekdo-images.com/Zhjy9fbChinkP0xGmfgzsg__original/img/KTQFuY0gQa1x9X4ZLpaglUbsMks=/0x0/filters:format(jpeg)/pic1308519.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Zhjy9fbChinkP0xGmfgzsg__thumb/img/Zw87WOeZOwJNT5AjMfcpvVnnu00=/fit-in/200x150/filters:strip_icc()/pic1308519.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-07-05 10:07:19"/>
<numplays>6</numplays>
</item>
<item objecttype="thing" objectid="14996" subtype="boardgame" collid="65456817">
<name sortindex="1">Ticket to Ride: Europe</name>
<yearpublished>2005</yearpublished>
<image>https://cf.geekdo-images.com/0K1AOciqlMVUWFPLTJSiww__original/img/O37sCRSJLq4S8EpCxFDNVsNBuxE=/0x0/filters:format(jpeg)/pic66668.jpg</image>
<thumbnail>https://cf.geekdo-images.com/0K1AOciqlMVUWFPLTJSiww__thumb/img/RDvu2FvsYVVH8icp1VsilUlqUGI=/fit-in/200x150/filters:strip_icc()/pic66668.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-11-04 09:28:18"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="257283" subtype="boardgame" collid="61893760">
<name sortindex="1">Tiny Epic Mechs</name>
<yearpublished>2019</yearpublished>
<image>https://cf.geekdo-images.com/auUjnvi2D596hPBz0z0Ybg__original/img/-Tf8kGrpfMkaEkXve-P1rgR3M5Y=/0x0/filters:format(jpeg)/pic4239499.jpg</image>
<thumbnail>https://cf.geekdo-images.com/auUjnvi2D596hPBz0z0Ybg__thumb/img/0lUGODA2QrJVWjy5vYZF4Mwqz_M=/fit-in/200x150/filters:strip_icc()/pic4239499.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2019-07-10 20:28:07"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="201921" subtype="boardgame" collid="53149753">
<name sortindex="1">Tiny Epic Quest</name>
<yearpublished>2017</yearpublished>
<image>https://cf.geekdo-images.com/Cd65qIFLnJlkWTfbKDk_FA__original/img/k-346D8FwQe_GUwi40trFGjD7JM=/0x0/filters:format(jpeg)/pic3120755.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Cd65qIFLnJlkWTfbKDk_FA__thumb/img/RaWuVFlY9wTY4g0d46WMWkZ-E3k=/fit-in/200x150/filters:strip_icc()/pic3120755.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-07-27 12:43:44"/>
<numplays>3</numplays>
</item>
<item objecttype="thing" objectid="285998" subtype="boardgame" collid="68410317">
<name sortindex="1">Tiny Epic Tactics: Deluxe Edition</name>
<yearpublished>2019</yearpublished>
<image>https://cf.geekdo-images.com/0MmfDcnr2ZzmZlXWzaIk_g__original/img/5gxCj79_MYKOafRrutpdsmecJLI=/0x0/filters:format(jpeg)/pic6259971.jpg</image>
<thumbnail>https://cf.geekdo-images.com/0MmfDcnr2ZzmZlXWzaIk_g__thumb/img/9KTcWLdg3p4oqSsOJX9QQsUUBIQ=/fit-in/200x150/filters:strip_icc()/pic6259971.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2020-02-01 10:09:14"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="244536" subtype="boardgame" collid="55247143">
<name sortindex="1">Tiny Epic Zombies</name>
<yearpublished>2018</yearpublished>
<image>https://cf.geekdo-images.com/J0oQSd9GYQuhUfR6xaxC9Q__original/img/xIJMUXuWEzzUqQpBIs9geFWggvI=/0x0/filters:format(jpeg)/pic3937056.jpg</image>
<thumbnail>https://cf.geekdo-images.com/J0oQSd9GYQuhUfR6xaxC9Q__thumb/img/hplIwIgdJ3dSoki9zasctnhe7Fw=/fit-in/200x150/filters:strip_icc()/pic3937056.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-10-26 11:09:54"/>
<numplays>1</numplays>
</item>
<item objecttype="thing" objectid="126163" subtype="boardgame" collid="50791391">
<name sortindex="1">Tzolk'in: The Mayan Calendar</name>
<yearpublished>2012</yearpublished>
<image>https://cf.geekdo-images.com/kXf7mDyDYuHg6oe8yTUIEA__original/img/f6-Au0KTnNR4nugSu2U-wPNbZCU=/0x0/filters:format(jpeg)/pic4604439.jpg</image>
<thumbnail>https://cf.geekdo-images.com/kXf7mDyDYuHg6oe8yTUIEA__thumb/img/or9mAn4ClljY_wO_zvsLJDqs9tU=/fit-in/200x150/filters:strip_icc()/pic4604439.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-04-05 10:15:58"/>
<numplays>5</numplays>
</item>
<item objecttype="thing" objectid="143065" subtype="boardgame" collid="54341867">
<name sortindex="1">Tzolk'in: The Mayan Calendar – Tribes & Prophecies</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/MoFm3Gwr2gN4MqtZBGkn1A__original/img/23nzJYRCVGbfTsNQwVVAD8RV_7I=/0x0/filters:format(png)/pic1758469.png</image>
<thumbnail>https://cf.geekdo-images.com/MoFm3Gwr2gN4MqtZBGkn1A__thumb/img/TMDB6zd80IBABZUN0FskSv1-A5c=/fit-in/200x150/filters:strip_icc()/pic1758469.png</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2018-09-16 23:14:32"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="2223" subtype="boardgame" collid="21841345">
<name sortindex="1">UNO</name>
<yearpublished>2003</yearpublished>
<image>https://cf.geekdo-images.com/Fld1Ztq_2pR9zkBRX_YPSw__original/img/fvQi_2RO0Qiq2XJXEPwVV08qId0=/0x0/filters:format(jpeg)/pic73103.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Fld1Ztq_2pR9zkBRX_YPSw__thumb/img/Wc4h1TQJngaSuq2cHYaOBp9mcCI=/fit-in/200x150/filters:strip_icc()/pic73103.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-03-19 14:51:57"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="183394" subtype="boardgame" collid="47588821">
<name sortindex="1">Viticulture Essential Edition</name>
<yearpublished>2015</yearpublished>
<image>https://cf.geekdo-images.com/l_PRU2lVlX9seScRFcvFlA__original/img/gDL7OZFlzoOFgU0VYlREs8P5hCQ=/0x0/filters:format(jpeg)/pic6500949.jpg</image>
<thumbnail>https://cf.geekdo-images.com/l_PRU2lVlX9seScRFcvFlA__thumb/img/pULDtVd75QZgGfvSMhr6Rs07vK8=/fit-in/200x150/filters:strip_icc()/pic6500949.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-12-11 16:00:42"/>
<numplays>4</numplays>
</item>
<item objecttype="thing" objectid="202174" subtype="boardgame" collid="47588859">
<name sortindex="1">Viticulture: Tuscany Essential Edition</name>
<yearpublished>2016</yearpublished>
<image>https://cf.geekdo-images.com/Xf1C1NuxY1YOHPFmpmNqiw__original/img/VIztgqIeZAGhu9odjtoMo0zEaP4=/0x0/filters:format(jpeg)/pic3064278.jpg</image>
<thumbnail>https://cf.geekdo-images.com/Xf1C1NuxY1YOHPFmpmNqiw__thumb/img/W2Gl053PiLjKXrsXZ67Y76bTPfM=/fit-in/200x150/filters:strip_icc()/pic3064278.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-12-11 16:02:07"/>
<numplays>0</numplays>
</item>
<item objecttype="thing" objectid="35505" subtype="boardgame" collid="24639933">
<name sortindex="1">Walk the Plank!</name>
<yearpublished>2013</yearpublished>
<image>https://cf.geekdo-images.com/rGpUc1sS1Q8lswsY_wLTJw__original/img/h8-gHHrFCG4y7RMkkSMjCHQ8AxY=/0x0/filters:format(jpeg)/pic1600830.jpg</image>
<thumbnail>https://cf.geekdo-images.com/rGpUc1sS1Q8lswsY_wLTJw__thumb/img/plrmg5OtvJ92whuc47UrK_BZpbA=/fit-in/200x150/filters:strip_icc()/pic1600830.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2014-09-06 22:26:50"/>
<numplays>16</numplays>
</item>
<item objecttype="thing" objectid="3570" subtype="boardgame" collid="42410069">
<name sortindex="1">¡Cocorico Cocorocó!</name>
<originalname>Chicken Cha Cha Cha</originalname>
<yearpublished>1998</yearpublished>
<image>https://cf.geekdo-images.com/MJ2AKlEbHsKNy1MMiGqemw__original/img/nIp-aL5NXEBD_4ggAKmWIqkNM-U=/0x0/filters:format(jpeg)/pic162079.jpg</image>
<thumbnail>https://cf.geekdo-images.com/MJ2AKlEbHsKNy1MMiGqemw__thumb/img/bFsIhTku46L7GMiomY6srarQ-7E=/fit-in/200x150/filters:strip_icc()/pic162079.jpg</thumbnail>
<status own="1" prevowned="0" fortrade="0" want="0" wanttoplay="0" wanttobuy="0" wishlist="0" preordered="0" lastmodified="2017-05-08 10:29:44"/>
<numplays>6</numplays>
</item>
</items>
                      """;

    return ColeccionJuegos.constructor(
        propuestaJuegos: [], propuestaFechas: []);
  }
}
