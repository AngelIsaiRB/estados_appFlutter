import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';

import 'package:estados_app/services/usuario_service.dart';

class Pagina2Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StreamBuilder(
         stream: usuarioService.usuarioStream,       
          builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
            return snapshot.hasData
            ?Text("${snapshot.data.nombre}")
            :Text("pagina 2"); 
          },
        ),
      ),
      body: Center(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              child: Text("establecer usuario", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                final nuevoUsuario =  new Usuario(
                  nombre: "isai",
                  edad: 23,
                  
                );
                usuarioService.cargarUsuario(nuevoUsuario );
              },
            ),
             MaterialButton(
              child: Text("cambiar edad", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){
                usuarioService.cambiaredad(30);
              },
            ),
             MaterialButton(
              child: Text("añadir profesion", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){},
            ),
          ],
        ),
      ),
    );
  }
}