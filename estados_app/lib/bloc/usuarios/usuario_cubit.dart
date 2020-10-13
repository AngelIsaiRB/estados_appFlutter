

import 'package:estados_app/models/usuario.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
part 'usuario_state.dart';

class UsuarioCubit extends Cubit<UsuarioState>{
  UsuarioCubit() : super(UsuarioInitial());    

  void seleccionarUsuario(Usuario user){
    emit(new UsuarioActivo(user));
  }
  void cambiarEdad(int edad){
    final currentStete = state;
    if(currentStete is UsuarioActivo){
     final newUser = currentStete.usuario.copyWith(edad:30);
     emit(UsuarioActivo(newUser));
    }
  }

  void addProfesion(String profesion){
     final currentStete = state;
    if(currentStete is UsuarioActivo){
      List pro = currentStete.usuario.profesiones;
      pro.add("profesion: ${pro.length+1}");
      //otra forma pro
      /*
      final nwsProfesiones=[
        ...currentStete.usuario.profesiones,
        "profesion: ${currentStete.usuario.profesiones.length+1}"
      ];
      */
      emit(UsuarioActivo(
        currentStete.usuario.copyWith(profesiones: pro)
      ));
    }
  }

  void borrarUsuario(){
    emit(UsuarioInitial());
  }

}