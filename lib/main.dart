import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(title: Text("My First App"),),
        body: FirstScreen()
      ),
    )
  );
}
