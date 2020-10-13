import 'package:estados_app/bloc/usuarios/usuario_cubit.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {

    final usuarioCubit= context.bloc<UsuarioCubit>();


    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 2"),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("establecer usuario", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                final usuario = new Usuario(
                  nombre: "isai",
                  edad: 23,
                  profesiones: [
                    "gamer",
                    "programador"
                  ]
                );
                usuarioCubit.seleccionarUsuario(usuario);
                //otra forma 
                // context.bloc<UsuarioCubit>().seleccionarUsuario(usuario);
              },
            ),
             MaterialButton(
              child: Text("cambiar edad", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                usuarioCubit.cambiarEdad(30);
              },
            ),
             MaterialButton(
              child: Text("añadir profesion", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                usuarioCubit.addProfesion("nueva profesion");
              },
            ),
          ],
        ),
      ),
    );
  }
}