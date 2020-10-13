import 'package:estados_app/bloc/usuarios/usuario_cubit.dart';
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
            icon: Icon(Icons.exit_to_app),
            onPressed: (){
              context.bloc<UsuarioCubit>().borrarUsuario();
            },
          )
        ],
      ),
      body: BodyScaffold(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.navigate_next),
        onPressed: (){
          Navigator.pushNamed(context, "pagina2");
        },
      ),
    );
  }
}

class BodyScaffold extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsuarioCubit,UsuarioState>(
      builder: (BuildContext context, state) {
         print(state);
         // lo siguiente se puede simplificar con switch
          /*
          switch (state.runtimeType) {
            case UsuarioInitial:
               return Center(child: Text("no hay informacion"));
            break;

            case UsuarioActivo:
               return InformacionUsuario((state as UsuarioActivo).usuario);
            break;

            default:
            return CircularProgressIndicator();
          }
          */
          if(state is UsuarioInitial){
            return Center(child: Text("no hay informacion"));
          }
          else if(state is UsuarioActivo) { // otro estado que no conocemos 
            return InformacionUsuario(state.usuario);
          }
          return CircularProgressIndicator();
        },
      
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  
  final Usuario usuario;

  const InformacionUsuario(this.usuario);

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
            title: Text("nombre: ${usuario.nombre}"),            
          ),
          ListTile(
            title: Text("edad: ${usuario.edad}"),            
          ),
           Text("Profesiones" , style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
          Divider(),
          ...usuario.profesiones.map((profesion) => ListTile(
            title: Text(profesion),
          )).toList(),
        ],
      ),
    );
  }
}