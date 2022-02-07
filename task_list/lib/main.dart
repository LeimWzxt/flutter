import 'package:flutter/material.dart';

void main() =>  runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class  MyAppState extends State<MyApp>{
  final items = List<String>.generate(20, (int i) => "Task ${i+1}");

  @override
  Widget build(BuildContext context) {
    final title = "Task List";

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(title: Text(title),),
        body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index){
              final item = items[index];
              return Dismissible(
                child: ListTile(title: Text("$item"),),
                background: Container(color: Colors.amberAccent,),
                key: Key(item),
                onDismissed: (direction){
                  setState(() {
                    items.removeAt(index);
                  });
                  Scaffold.of(context).showSnackBar(SnackBar(
                      content: Text("$item deleted")
                  ));
                },
              );
            }
          ),
        ),
      );
  }
}
