import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

class VistaMostrandoBusqueda extends StatelessWidget {
  const VistaMostrandoBusqueda({
    Key? key,
    required this.resultadoDeBusqueda,
  }) : super(key: key);

  final String resultadoDeBusqueda;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(resultadoDeBusqueda),
        TextButton(
            onPressed: () {
              var bloc = context.read<BlocVerificacion>();
              bloc.add(Creado());
            },
            child: const Text('Volver a solicitar'))
      ],
    ));
  }
}
