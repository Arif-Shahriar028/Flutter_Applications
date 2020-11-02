import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.blueAccent,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(20.0),
          color: Colors.amber,
          margin: EdgeInsets.all(15.0),
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Welcome!",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 15.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Hello flutter devs",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  )
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Welcome!",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 15.0),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "Hello flutter devs",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          color: Colors.white,
                          fontSize: 20.0),
                    ),
                  )
                ],
              ),
              ManufactureImageAsset(),
              ButtonClass()
            ],
          ),
        ),
      ),
    );
  }
}

class ManufactureImageAsset extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    AssetImage assetImage = AssetImage('images/manufacture.png');
    Image image = Image(image: assetImage);
    return Container(
      child: image,
    );
  }
}

class ButtonClass extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      width: 250,
      height: 50,
      child: RaisedButton(
        color: Colors.deepOrangeAccent,
        child: Text(
          "Click button",
          textDirection: TextDirection.ltr,
          style: TextStyle(
            decoration: TextDecoration.none, // remove underline
            fontSize: 30.0,
            color: Colors.white
          ),
        ),
        elevation: 6.0,
        onPressed: (){
          buttonAction(context);
        },
      ),
    );
  }

  void buttonAction(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Button Pressed"),
      content: Text("bbutton is pressed successfully"),
    );

    showDialog(
      context: context,
      builder: (BuildContext  context){
        return alertDialog;
      }
    );
  }
}
