import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
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
              onPressed: (){},
            ),
             MaterialButton(
              child: Text("cambiar edad", style: TextStyle(color: Colors.white),),
              color:  Colors.blue,
              onPressed: (){},
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