import 'package:flutter/material.dart';

import 'package:estados_app/pages/pagina1_page.dart';
import 'package:estados_app/pages/pagina2_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      debugShowCheckedModeBanner: false,
      initialRoute: "pagina1",
      routes: {
        "pagina1": (_) => Pagina1Page(), 
        "pagina2" : (_) => Pagina2Page(),

      },
    );
  }
}