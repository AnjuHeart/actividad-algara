const String mensajeRegistroUsuarioError = 'Error en el registro de usuario';
const String mensajeCampoVacio = 'sin valor';

class RegistroUsuario{
  late final int anioRegistro;
  late final String nombre;
  late final String apellido;
  late final String pais;
  late final String estado;
  String get getNombre => nombre;
  
  factory RegistroUsuario.constructor({
    required String propuestaAnio,
    required String propuestaNombre,
    required String propuestaApellido,
    required String propuestaPais,
    required String propuestaEstado})
  {

    int? valorAnio = int.tryParse(propuestaAnio);
     if(valorAnio == null){
      throw (mensajeRegistroUsuarioError);
    }
    if(propuestaNombre.trim().isEmpty){
      throw(mensajeRegistroUsuarioError);
    }

    propuestaApellido = propuestaApellido.trim().isEmpty ? mensajeCampoVacio : propuestaApellido;
    propuestaPais = propuestaPais.trim().isEmpty ? mensajeCampoVacio : propuestaPais;
    propuestaEstado = propuestaEstado.trim().isEmpty ? mensajeCampoVacio : propuestaEstado;

    final resultado = RegistroUsuario._(valorAnio, propuestaNombre, propuestaApellido, propuestaPais, propuestaEstado);
    return resultado;
  }
  RegistroUsuario._(this.anioRegistro, this.nombre, this.apellido, this.pais, this.estado);
}