import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'usuario_state.dart';
part 'usuario_event.dart';

class Usuariobloc extends Bloc<UsuarioEvent,UsuarioState>{
  Usuariobloc() : super(UsuarioState());

  
  @override
  Stream<UsuarioState> mapEventToState(UsuarioEvent event) async*{
    if(event is ActivarUsuario){
    yield  state.copyWith(usuario: event.usuario);
    }
    else if(event is CambiarEdad){
      yield state.copyWith(
        usuario: state.usuario.copyWith(edad: event.nuevaedad)
        );
    }
    else if(event is AgregarProfesion){
      final newList = [
        ...state.usuario.profesiones,
        "profesion :${state.usuario.profesiones.length+1}"
      ];
      yield state.copyWith(usuario: state.usuario.copyWith(profesiones: newList));
    }
    else if (event is BorrarUusario){
      yield state.estadoInicial();
    }
  }


}