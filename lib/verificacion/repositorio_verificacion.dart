import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:fpdart/fpdart.dart';
import '../dominio/problemas.dart';
import '../dominio/registro_usuario.dart';
import 'package:xml/xml.dart';

abstract class RepositorioVerificacion {
  Either<Problema, RegistroUsuario> obenerRegistroUsuario(NickFormado nick);
}

class RepositorioPruebasVerificacion extends RepositorioVerificacion {
  Either<Problema, RegistroUsuario> obenerRegistroUsuarioDesdeXML(
      XmlDocument documento) {
    const elementAnio = 'yearregistered';
    const elementNombre = 'firstname';
    const elementApellido = 'lastname';
    const elementEstado = 'stateorprovince';
    const elementPais = 'country';

    Either<Problema, String> anio =
        obtenerValorCampoXML(documento, elementAnio);
    Either<Problema, String> nombre =
        obtenerValorCampoXML(documento, elementNombre);
    Either<Problema, String> apellido =
        obtenerValorCampoXML(documento, elementApellido);
    Either<Problema, String> estado =
        obtenerValorCampoXML(documento, elementEstado);
    Either<Problema, String> pais =
        obtenerValorCampoXML(documento, elementPais);

    if ([anio, nombre, pais, estado, apellido]
        .any((element) => element.isLeft())) {
      return Left(VersionIncorrectaXML());
    }

    final valoresRegistro = [anio, apellido, estado, nombre, pais]
        .map((e) => e.getOrElse((l) => ''))
        .toList();

    if (valoresRegistro[0].isEmpty) {
      return Left(VersionIncorrectaXML());
    }

    return Right(RegistroUsuario.constructor(
        propuestaAnio: valoresRegistro[0],
        propuestaApellido: valoresRegistro[1],
        propuestaEstado: valoresRegistro[2],
        propuestaNombre: valoresRegistro[3],
        propuestaPais: valoresRegistro[4]));
  }

  Either<Problema, String> obtenerValorCampoXML(
      XmlDocument documento, String campo) {
    const atributoValor = 'value';
    final valoresEncontrados = documento.findAllElements(campo);
    if (valoresEncontrados.isEmpty) return Left(VersionIncorrectaXML());

    final String? valorARegresar =
        valoresEncontrados.first.getAttribute(atributoValor);
    if (valorARegresar == null) {
      return Left(VersionIncorrectaXML());
    }
    return Right(valorARegresar);
  }

  @override
  Either<Problema, RegistroUsuario> obenerRegistroUsuario(NickFormado nick) {
    const String _benthor = """<?xml version="1.0" encoding="utf-8"?>
                          <user id="597373" name="benthor" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
										      <firstname value="Benthor" />
                          <lastname value="Benthor" />
                          <avatarlink value="N/A" />
                          <yearregistered value="2012" />
                          <lastlogin value="2022-05-31" />
                          <stateorprovince value="" />
                          <country value="" />
                          <webaddress value="" />
                          <xboxaccount value="" />
                          <wiiaccount value="" />
                          <psnaccount value="" />
                          <battlenetaccount value="" />
                          <steamaccount value="" />
                          <traderating value="0" />	
				                </user>""";
    const String _amlo = """<?xml version="1.0" encoding="utf-8"?>
                      <user id="" name="" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
                        <firstname value=""/>
                        <lastname value=""/>
                        <avatarlink value="N/A"/>
                        <yearregistered value=""/>
                        <lastlogin value=""/>
                        <stateorprovince value=""/>
                        <country value=""/>
                        <webaddress value=""/>
                        <xboxaccount value=""/>
                        <wiiaccount value=""/>
                        <psnaccount value=""/>
                        <battlenetaccount value=""/>
                        <steamaccount value=""/>
                        <traderating value="362"/>
                      </user>""";
    const String _incorrecto = """<?xml version="1.0" encoding="utf-8"?>
                      <user id="" name="" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
                        <firstnfame value=""/>
                        <lastndame value=""/>
                        <avatardlink value="N/A"/>
                        <yearredgistered value=""/>
                        <lastldogin value=""/>
                        <stateodrprovince value=""/>
                        <coundtry value=""/>
                        <webaddddress value=""/>
                        <xbodxaccount value=""/>
                        <wiiacddcount value=""/>
                        <psnaccount value=""/>
                        <badttldenetaccount value=""/>
                        <steadmaccount value=""/>
                        <trdaderating value="362"/>
                      </user>""";
    if (nick.valor == 'benthor' || nick.valor == 'fokuleh') {
      final documento = XmlDocument.parse(_benthor);
      return obenerRegistroUsuarioDesdeXML(documento);
    }
    if (nick.valor == 'amlo') {
      final documento = XmlDocument.parse(_amlo);
      return obenerRegistroUsuarioDesdeXML(documento);
    }
    if (nick.valor == 'incorrecto') {
      final documento = XmlDocument.parse(_incorrecto);
      return obenerRegistroUsuarioDesdeXML(documento);
    }
    return Left(UsuarioNoRegistrado());
  }
}
