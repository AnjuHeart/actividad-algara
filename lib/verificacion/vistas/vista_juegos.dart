import 'package:flutter/material.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

class VistaMostrandoJuegos extends StatelessWidget {
  const VistaMostrandoJuegos({Key? key, required this.juegos})
      : super(key: key);

  final Set<JuegoJugado> juegos;
  @override
  Widget build(BuildContext context) {
    int contador = 0;
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
              onPressed: () {
                var bloc = context.read<BlocVerificacion>();
                bloc.add(Creado());
              },
              child: const Text('Volver a solicitar'))
        ],
      ),
    );
  }
}
