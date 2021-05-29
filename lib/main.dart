// Borrar todo el archivo y la carpeta de pruebas
// Primer importaciones de paquetes y por último las nuestras
import 'package:flutter/material.dart'; // importM

import 'src/app.dart';

void main() {
  runApp(MyApp()); // ctrl + . para autoimportar lo necesario
}

// Moverlo a un archivo diferente, pero iniciar explicando desde acá
/*class MyApp extends StatelessWidget  {
  @override
  Widget build(BuildContext context) { // contienen información del árbol de Widgets, tema, this y super
    // TODO: implement build
    return MaterialApp(
      home: Center( // Para centrar todo
        child: Text('Hola Mundo!'),
      ),
    );
  }
}*/