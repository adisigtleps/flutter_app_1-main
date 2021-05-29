import 'package:flutter/material.dart';

//import 'package:flutter_application/src/pages/contador_page.dart';

import 'package:flutter_application/src/pages/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // contienen información del árbol de Widgets, tema, this y super
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Eliminar la barrita superior
      home: Center(
        // Para centrar todo
        //child: Text('Hola Mundo!!'), // empezar explicando esto
        child: HomePage(), // Seguir con esto
        //child: ContadorPage(), // Terminar con esto
      ),
    );
  }
}
