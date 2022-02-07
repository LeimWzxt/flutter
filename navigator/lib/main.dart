import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Navegación",
      home: Pantalla1(),
    );
  }
}

class Pantalla1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 1"),
      ),
      body: Center(
        child: RaisedButton(
          child: Text("Nueva pantalla"),
          onPressed: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Pantalla2()),
            );
          }
        ),
      ),
    );
  }
}

class Pantalla2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pantalla 2"),
      ),
      body: Center(
        child: RaisedButton(
            child: Text("Volver"),
            onPressed: (){
              Navigator.pop(context);
            }
        ),
      ),
    );
  }
}
