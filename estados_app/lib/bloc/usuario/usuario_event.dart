part of "usuario_bloc.dart";

@immutable
abstract class UsuarioEvent{}

class ActivarUsuario extends UsuarioEvent{
  final Usuario usuario;
  ActivarUsuario(this.usuario);
}

class CambiarEdad extends UsuarioEvent{
  final int nuevaedad;
  CambiarEdad(this.nuevaedad);
}

class AgregarProfesion extends UsuarioEvent{
  final String newProfesion;

  AgregarProfesion(this.newProfesion);

}

class BorrarUusario extends UsuarioEvent{}