class ColeccionJuegos {
  late final List<String> juegos;
  late final List<int> fechaDeSalidaJuego;

  ColeccionJuegos._(this.juegos, this.fechaDeSalidaJuego);

  factory ColeccionJuegos.constructor(
      {required propuestaJuegos, required propuestaFechas}) {
    return ColeccionJuegos._(propuestaJuegos, propuestaFechas);
  }
}
