import 'package:flutter/cupertino.dart';

import 'package:estados_app/models/usuario.dart';

class UsuarioService with ChangeNotifier{

  Usuario _usuario;

  Usuario get usuario => this._usuario;
  bool get existeUsuario => this._usuario != null?true:false;

  set usuario (Usuario user){
    this._usuario=user;
    notifyListeners();
  }

  void cambiaredad(int edad){
    this._usuario.edad=edad;
    notifyListeners();
  }

  void removerusuario(){
    this._usuario=null;
    notifyListeners();
  }

  void agregarprofesion(){
    this._usuario.profesiones.add("Profesion ${this._usuario.profesiones.length+1}");
    notifyListeners();
  }

  

}