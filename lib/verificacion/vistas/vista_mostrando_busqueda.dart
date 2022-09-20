import 'package:flutter/material.dart';
import 'package:flutter_app_1/dominio/problemas.dart';

class VistaMostrandoBusqueda extends StatelessWidget {
  const VistaMostrandoBusqueda({Key? key, required this.usuarioAnio, required this.usuarioNombre, required this.usuarioApellido, required this.usuarioPais, required this.usuarioEstado }) : super(key: key);
  final int usuarioAnio;
  final String usuarioNombre;
  final String usuarioApellido;
  final String usuarioPais;
  final String usuarioEstado;

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Text('El usuario se registró en el año ' + usuarioAnio.toString()),
      Text('Nombre: ' + usuarioNombre),
      Text('Apellido: ' + usuarioApellido),
      Text('Pais: ' + usuarioPais),
      Text('Estado: ' + usuarioEstado),
    ],);
  }
}

class VistaMostrandoNoEncontrado extends StatelessWidget {
  const VistaMostrandoNoEncontrado({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text('EXISTE UN PROBLEMa');
  }
}