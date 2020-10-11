import 'package:flutter/material.dart';

import 'package:estados_app/services/usuario_service.dart';
import 'package:estados_app/models/usuario.dart';

class Pagina1Page extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 1"),
      ),
      body: StreamBuilder(
        stream: usuarioService.usuarioStream ,        
        builder: (BuildContext context, AsyncSnapshot<Usuario> snapshot){
          return snapshot.hasData
          ? InformacionUsuario(usuarioService.usuario) //tambien puede ser snapshot.data
          : Center( child: Text("no hay informacion de usuario"),);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.pushNamed(context, "pagina2");
        },
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario  usuario;

  const InformacionUsuario( this.usuario);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("General" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text("nombre: ${usuario.nombre}  "),            
          ),
          ListTile(
            title: Text("edad: ${usuario.edad}"),            
          ),
           Text("Profesiones" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ListTile(
            title: Text("profesion 1: "),            
          ),
          ListTile(
            title: Text("profesion1: "),            
          ),
        ],
      ),
    );
  }
}