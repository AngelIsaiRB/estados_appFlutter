import 'package:estados_app/models/usuario.dart';
import 'package:estados_app/services/usuario_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    final usuarioservice = Provider.of<UsuarioService>(context);
    return Scaffold(
      appBar: AppBar(
        title: usuarioservice.existeUsuario
        ?Text("${usuarioservice.usuario.nombre}")
        :Text("usuario")
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("establecer usuario", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                
                final newuser= new Usuario(nombre: "isai",
                 edad: 23,
                 profesiones: ["gamer","full stack"]);
                usuarioservice.usuario= newuser;
              },
            ),
             MaterialButton(
              child: Text("cambiar edad", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                
                 usuarioservice.cambiaredad(55);
              },
            ),
             MaterialButton(
              child: Text("añadir profesion", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                usuarioservice.agregarprofesion();
              },
            ),
          ],
        ),
      ),
    );
  }
}