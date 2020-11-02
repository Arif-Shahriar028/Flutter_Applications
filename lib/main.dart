import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(title: Text("My First App"),),
        body: getListView()
      ),
    )
  );
}

Widget getListView(){
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
      ),
      ListTile(
        leading: Icon(Icons.landscape),
        title: Text("Landscape"),
        subtitle: Text("Beautiful view"),
        trailing: Icon(Icons.wb_sunny),
      ),
    ],
  );

  return listView;
}
