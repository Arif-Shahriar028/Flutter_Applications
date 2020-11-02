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

List<String> getListElements(){
  var items = List<String>.generate(1000, (counter) => "Item $counter");
  return items;
}

Widget getListView(){
  var listItems = getListElements();
  var listView = ListView.builder(
    itemBuilder: (context, index){
      return ListTile(
        title: Text(listItems[index]),
        onTap: (){
          debugPrint("${listItems[index]} no item selected");
        },
      );
    }
  );
  return listView;
}
