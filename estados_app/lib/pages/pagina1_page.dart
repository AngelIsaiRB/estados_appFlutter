import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("pagina 1"),
      ),
      body: InformacionUsuario(),
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
            title: Text("nombre: "),            
          ),
          ListTile(
            title: Text("edad: "),            
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