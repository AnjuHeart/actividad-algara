import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

class VistaMostrandoBusqueda extends StatelessWidget {
  const VistaMostrandoBusqueda({
    Key? key,
    required this.resultadoDeBusqueda,
    required this.nombreUsuario,
  }) : super(key: key);

  final String resultadoDeBusqueda;
  final String nombreUsuario;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(resultadoDeBusqueda),
            const SizedBox(width: 40),
            TextButton(
                onPressed: () {
                  var bloc = context.read<BlocVerificacion>();
                  bloc.add(IrAJuegos(nombreUsuario));
                },
                child: const Text("Ir a Juegos jugados de este usuario"))
          ],
        ),
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
