class ColeccionJuegos {
  late final List<String> juegos;

  ColeccionJuegos._(this.juegos);

  factory ColeccionJuegos.constructor({required List<String> propuestaJuegos}) {
    return ColeccionJuegos._(
      propuestaJuegos,
    );
  }
}
