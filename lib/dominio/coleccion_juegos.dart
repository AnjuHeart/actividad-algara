class ColeccionJuegos {
  late final List<String> juegos;

  ColeccionJuegos._(this.juegos);

  factory ColeccionJuegos.constructor({required List<String> propuestaJuegos}) {
    if (propuestaJuegos == []) {
      propuestaJuegos.add("Este usuario no ha jugado nada");
    }
    return ColeccionJuegos._(
      propuestaJuegos,
    );
  }
}
