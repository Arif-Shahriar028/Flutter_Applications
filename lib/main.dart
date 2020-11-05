import 'package:flutter/material.dart';
import './app_screens/first_screen.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "First App",
      home: Scaffold(
        appBar: AppBar(title: Text("My First App"),),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            debugPrint("Button Clicked");
          },
          child: Icon(Icons.add),
          tooltip: 'Add one more item',
        ),
        body: getListView()
      ),
    )
  );
}

void showSnackBar(BuildContext context, String item)
{
  var snackBar = SnackBar(
    content: Text("You just tapped $item"),
    action: SnackBarAction(
      label: "Undo",
      onPressed: (){
        debugPrint("Undo option clicked");
      },
    ),
  );

  Scaffold.of(context).showSnackBar(snackBar);
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
          showSnackBar(context, listItems[index]);
        },
      );
    }
  );
  return listView;
}
