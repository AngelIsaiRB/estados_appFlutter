import 'dart:async';

import 'package:estados_app/models/usuario.dart';

class _UsuarioService {

  Usuario _usuario;

  //streams
  StreamController<Usuario> _usuarioStreamcontroller = new StreamController<Usuario>.broadcast();  
  Stream<Usuario> get usuarioStream => _usuarioStreamcontroller.stream;
  //
  Usuario get usuario       => this._usuario;
  bool    get existeUsuario => (this._usuario != null)?true:false;
  

  void cargarUsuario(Usuario user){
    this._usuario=user;
    this._usuarioStreamcontroller.add(user);
  }

  void cambiaredad(int newEdad){
    this._usuario.edad=newEdad;
    this._usuarioStreamcontroller.add(this._usuario);
  }

  dispose(){
  _usuarioStreamcontroller?.close();
  }

}

final usuarioService = new _UsuarioService();