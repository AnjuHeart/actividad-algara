import 'package:flutter/material.dart';
import 'package:flutter_app_1/dominio/coleccion_juegos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

class VistaMostrandoJuegos extends StatelessWidget {
  const VistaMostrandoJuegos(
      {Key? key,
      required this.juegos,
      required this.jugador,
      required this.datosJuego})
      : super(key: key);
  final String jugador;
  final Set<JuegoJugado> juegos;
  final List<String> datosJuego;
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
              var datosEsteJuego = datosJuego.firstWhere((element) {
                var id = element.split("##")[0];
                return id == lista[index].id;
              });
              var idJuego = datosEsteJuego.split("##")[0];
              var linkImagen = datosEsteJuego.split("##")[1];
              var disenador = datosEsteJuego.split("##")[2];
              return ListTile(
                leading: Text(linkImagen),
                subtitle: Text(idJuego),
                title: Text(lista[index].nombre.toString()),
                trailing: Text((index + 1).toString()),
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
