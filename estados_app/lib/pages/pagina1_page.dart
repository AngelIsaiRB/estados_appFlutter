import 'package:estados_app/bloc/usuario/usuario_bloc.dart';
import 'package:estados_app/models/usuario.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Pagina1Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 1"),
        actions: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: (){
              BlocProvider.of<Usuariobloc>(context).add(BorrarUusario());
            },
          )
        ],
      ),
      body: BlocBuilder<Usuariobloc, UsuarioState>(
        builder: (context, state) {
          if(state.existeUsuario){
            return InformacionUsuario(state.usuario);
          }
          else{
            return Center(child: Text("no hay usuario"));
          }
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
  final Usuario usuario;

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
            title: Text("nombre: ${usuario.nombre} "),            
          ),
          ListTile(
            title: Text("edad: ${usuario.edad}"),            
          ),
           Text("Profesiones" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ...usuario.profesiones.map((pro) =>
            ListTile(title: Text(pro),)
          ).toList()
        ],
      ),
    );
  }
}