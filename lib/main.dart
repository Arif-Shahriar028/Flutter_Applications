import 'package:flutter/material.dart';

void main(){
  runApp(
    MaterialApp(
      title: "StateFulWidget",
      home: FavouriteCity(),
    ),
  );
}

class FavouriteCity extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FavouriteCityState();
  }
}

class _FavouriteCityState extends State<FavouriteCity>{
  String nameCity = "";
  var _currencies = ['taka', 'dollar', 'euro', 'dinar'];
  var _currentItemSelected = 'taka';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StateFull App example"),
      ),
      body: Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onChanged: (String userInput){  // here onSubmitted event handler can be used
                setState(() {
                  nameCity = userInput;
                });
              },
            ),

            DropdownButton<String>(
              items: _currencies.map((String stringItem){
                return DropdownMenuItem<String>(
                  value: stringItem,
                  child: Text(stringItem),
                );
              }).toList(),
              onChanged: (String newValueSelected){
                setState(() {
                  this._currentItemSelected = newValueSelected;
                });
              },
              value: _currentItemSelected,
            ),

            Padding(
              padding: EdgeInsets.all(30.0),
              child: Text(
                "your best city is $nameCity",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}