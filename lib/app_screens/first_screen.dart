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
            ],
          ),
        ),
      ),
    );
  }
}
