import 'package:flutter/material.dart';

class VistaSolicitandoNombre extends StatefulWidget {
  VistaSolicitandoNombre({Key? key}) : super(key: key);

  @override
  State<VistaSolicitandoNombre> createState() => _VistaSolicitandoNombreState();
}

class _VistaSolicitandoNombreState extends State<VistaSolicitandoNombre> {
  bool _usuarioValidado = false;
  late final TextEditingController controlador;

  @override
  void initState() {
    // TODO: implement initState
    controlador = TextEditingController();
    controlador.addListener(escuchandoValidador);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        TextField(
          obscureText: true,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            labelText: 'Usuario',
          ),
          controller: controlador,
        ),
        Container(
            child: _usuarioValidado
                ? null
                : TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.grey),
                    ),
                    onPressed: null,
                    child: const Text('Ingresar'))),
        Container(
            child: !_usuarioValidado
                ? null
                : TextButton(
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.black),
                    ),
                    onPressed: () {},
                    child: const Text('Ingresar'))),
      ]),
    );
  }

  void escuchandoValidador() {
    setState(() {
      try {
        Validador(controlador.text);
        _usuarioValidado = true;
      } catch (e) {
        _usuarioValidado = false;
      }
    });
  }
}

class Validador {
  late final String value;
  Validador(String propuesta) {
    if (!(propuesta.trim().isNotEmpty)) {
      throw UsuarioError();
    }
    value = propuesta;
  }
}

class UsuarioError implements Exception {}
