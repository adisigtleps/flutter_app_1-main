import 'package:flutter/material.dart';

// Construir todo paso a paso
class ContadorPage extends StatefulWidget {

  @override
  _ContadorPageState createState() => _ContadorPageState(); // retorna una nueva instancia del PageState, explicar como pasarlo a función de flecha
}

class _ContadorPageState extends State<ContadorPage> { // Este es el estado que extiende del estado de una clase que maneje estado

  final TextStyle _mainTextStile = new TextStyle(fontSize: 25.0);
  int _contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Soy un appbar stateful'),
        centerTitle: true, // Android por defecto no centra
      ),
      body: Center(
        //child: Text('Hola Mundo!'), // Empezar por aca
        child: Column(
          children: [ // Ordenar elementos uno abajo de otro (Widgets)
            Text(
              'Número de taps:',
              /*style: TextStyle( // Empezar con esto
                fontSize: 25.0
              )*/
              style: _mainTextStile,
            ),
            Text(
              '$_contador',
              style: _mainTextStile
            ),
          ],
          mainAxisAlignment: MainAxisAlignment.center, // Centrando el contenido
        ),
      ),
      floatingActionButton: _buildButtons(),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat, // Para posicionar el FAB del Scaffold
    );
  }

  Widget _buildButtons() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [ // Empezar poniendo solo uno
        SizedBox(width: 30.0), // Para que empiece de 0
        FloatingActionButton(
          onPressed: () {
            print('Hola Mundo');
            _contador = 0;
            setState(() {});
          }, // Si le mando null es como deshabilitar el botón
          child: Icon(
            Icons.exposure_zero
          ),
        ),
        Expanded(child: SizedBox()), // El expand lo vamos a utilizar para estirar el widget al tamaño que quede disponible
        FloatingActionButton(
          onPressed: () {
            _contador -= 1;
            setState(() {});
          }, // Si le mando null es como deshabilitar el botón
          child: Icon(
            Icons.remove
          ),
        ),
        SizedBox(width: 5.0), // Se puede usar de separador
        FloatingActionButton(
          onPressed: _add, // Si le mando null es como deshabilitar el botón
          // No se ponen paréntesis porque esto indica que se va a ejecutar al disparar el evento, si pongo paréntesis le indico que se ejecute de inmediato
          child: Icon(
            Icons.add
          ),
        ),
      ],
    );

  }

  void _add() {
    _contador++;
    setState(() {});
  }
}