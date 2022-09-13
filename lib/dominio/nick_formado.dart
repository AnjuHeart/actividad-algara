class NickFormado{
  late final String valor;
  NickFormado._(this.valor);

  NickFormado(String propuesta) {
    if(propuesta.trim().isEmpty){
      throw('Nick no formado');
    }
    NickFormado._(propuesta);
  }
}