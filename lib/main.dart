import 'package:flutter/material.dart';
import 'package:flutter_app_1/verificacion/vistas/vista_juegos.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_app_1/verificacion/vistas/vista_creandose.dart';
import 'package:flutter_app_1/verificacion/vistas/vista_en_espera.dart';
import 'package:flutter_app_1/verificacion/vistas/vista_mostrando_busqueda.dart';
import 'package:flutter_app_1/verificacion/bloc.dart';

void main() {
  runApp(const AplicacionInyectada());
}

class AplicacionInyectada extends StatelessWidget {
  const AplicacionInyectada({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        BlocVerificacion blocVerificacion = BlocVerificacion();
        Future.delayed(const Duration(seconds: 2), () {
          blocVerificacion.add(Creado());
        });

        return blocVerificacion;
      },
      child: const Aplicacion(),
    );
  }
}

class Aplicacion extends StatelessWidget {
  const Aplicacion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Clase 30/08/22')),
        body: Builder(
          builder: (context) {
            var estado = context.watch<BlocVerificacion>().state;
            if (estado is Creandose) {
              return const Center(child: VistaCreandose());
            }
            if (estado is SolicitandoNombre) {
              return const VistaSolicitandoNombre();
            }
            if (estado is MostrandoNombre) {
              return VistaMostrandoBusqueda(
                resultadoDeBusqueda: estado.mensaje,
                nombreUsuario: estado.nombreUsuario,
              );
            }
            if (estado is MostrandoNombreNoConfirmado) {
              /*return VistaMostrandoBusqueda(
                resultadoDeBusqueda: estado.mensaje,
                nombreUsuario: estado.,
              );*/
            }
            if (estado is MostrandoJuegos) {
              return VistaMostrandoJuegos(
                juegos: estado.juegos,
                jugador: estado.jugador,
                datosJuego: estado.datosJuego,
              );
            }
            return const Center(child: Text('huye'));
          },
        ),
      ),
    );
  }
}
