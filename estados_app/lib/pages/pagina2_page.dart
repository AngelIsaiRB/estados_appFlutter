import 'package:estados_app/bloc/usuario/usuario_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina2Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
      // ignore: close_sinks
      final usuariobloc = BlocProvider.of<Usuariobloc>(context);
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
                final newuser = new Usuario(
                  nombre: "isai",
                  edad: 23,
                  profesiones: ["gamer", "developer"]
                );
                usuariobloc.add(
                  ActivarUsuario(newuser)
                );
                
              },
            ),
             MaterialButton(
              child: Text("cambiar edad", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
               usuariobloc.add(
                  CambiarEdad(55)
                );
              },
            ),
             MaterialButton(
              child: Text("añadir profesion", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                usuariobloc.add(AgregarProfesion("profesionssssss"));
              },
            ),
          ],
        ),
      ),
    );
  }
}