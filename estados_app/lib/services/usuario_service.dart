import 'package:flutter/cupertino.dart';

import 'package:estados_app/models/usuario.dart';

class UsuarioService with ChangeNotifier{

  Usuario _usuario;

  Usuario get usuario => this._usuario;
  bool get existeUsuario => this._usuario != null?true:false;

}