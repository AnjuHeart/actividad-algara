import 'package:flutter_app_1/dominio/nick_formado.dart';
import 'package:fpdart/fpdart.dart';
import '../dominio/problemas.dart';
import '../dominio/registro_usuario.dart';
import 'package:xml/xml.dart';

abstract class RepositorioVerificacion{
  Either<Problema,RegistroUsuario> obenerRegistroUsuario(NickFormado nick);
}

class RepositorioPruebasVerificacion extends RepositorioVerificacion{
  final String benthor = """<?xml version="1.0" encoding="utf-8"?>
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
  final String amlo = 
                  """<user id="" name="" termsofuse="https://boardgamegeek.com/xmlapi/termsofuse">
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
  @override
  Either<Problema,RegistroUsuario> obenerRegistroUsuario(NickFormado nick) {
    final documento = XmlDocument.parse(benthor);
    final nodo = documento.findAllElements('yearregistered');
    final String valor = nodo.first.getAttribute('value') ?? "";
    
    if(valor.isEmpty){
      return Left(UsuarioNoRegistrado());
    }

    String nombre= documento.findAllElements('firstname').first.getAttribute('value') ?? "";
    String apellido= documento.findAllElements('lastname').first.getAttribute('value') ?? "";
    String estado= documento.findAllElements('stateorprovince').first.getAttribute('value') ?? "";
    String pais= documento.findAllElements('country').first.getAttribute('value') ?? "";

    return Right(RegistroUsuario.constructor(propuestaAnio: valor,
                                propuestaApellido: apellido,
                                propuestaEstado: estado,
                                propuestaNombre: nombre,
                                propuestaPais: pais));
  }

}