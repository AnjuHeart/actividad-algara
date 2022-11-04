import 'package:flutter/material.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

class VistaMostrandoJuegos extends StatelessWidget {
  const VistaMostrandoJuegos(
      {Key? key, required this.juegos, required this.jugador})
      : super(key: key);
  final String jugador;
  final Set<JuegoJugado> juegos;
  @override
  Widget build(BuildContext context) {
    int largo = juegos.length;
    List<JuegoJugado> lista = juegos.toList();
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: largo,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text((index + 1).toString()),
                subtitle: Text(lista[index].id.toString()),
                title: Text(lista[index].nombre.toString()),
              );
            },
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            var bloc = context.read<BlocVerificacion>();
            bloc.add(NombreRecibido(jugador));
          },
          child: const Text('Volver'),
        )
      ],
    );
    /*return */
  }
}
