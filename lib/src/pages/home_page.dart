import 'package:flutter/material.dart'; // importM

// Empezar con un StatelessWidget y luego explicar cuando la pasemos a statefullWidget
class HomePage extends StatelessWidget { // statelessW
  //HomePage({Key key}) : super(key: key);

  final TextStyle mainTextStile = new TextStyle(fontSize: 25.0);
  final int contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soy un appbar'),
        centerTitle: true, // Android por defecto no centra
      ),
      body: Center(
        //child: Text('Hola Mundo!'), // Empezar por aca
        child: Column(
          children: [ // Ordenar elementos uno abajo de otro (Widgets)
            Text(
              'Número de clicks:',
              /*style: TextStyle( // Empezar con esto
                fontSize: 25.0
              )*/
              style: mainTextStile,
            ),
            Text(
              '$contador',
              style: mainTextStile
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center, // Centrando el contenido
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Hola Mundo');
          //contador += 1;
        }, // Si le mando null es como deshabilitar el botón
        child: Icon(
          Icons.add
        ),
      ),
      //floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat, // Para posicionar el FAB del Scaffold
    );
  }
}