import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Something",
     theme: ThemeData(
       primarySwatch: Colors.amber,
     ),
    home: ProductList("Our Products"),
   );
  }
}

//CLASSES
class ProductList extends StatelessWidget {
  final String _title;

  const ProductList(this._title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
      body: ListView(
        children: <Widget>[
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
          ProductCard("MyBand 4C", "Xiaomi Redmi Smartwatch",70,"assets/images/smartwatch.png"),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String nombre;
  final String descripcion;
  final int precio;
  final String imagen;

  const ProductCard(this.nombre, this.descripcion, this.precio, this.imagen);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
          left: 20.0,
          right: 20.0,
          bottom: 20.0,
        ),
        child: Row(
          children: <Widget>[
            Image.asset(
              imagen,
              scale: 5.0,//less than 1 makes the image bigger
            ),
            Column(
              children: <Widget>[
                Text(nombre),
                Text(descripcion),
                Text("Precio: " + precio.toString()),
              ],
            ),
          ]
        ),
      ),
    );
  }
}
