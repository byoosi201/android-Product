import 'package:flutter/material.dart';

void main(){
  runApp(Testing());
}
class Testing extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("My Best Application"),
            leading: Icon(Icons.home),
          backgroundColor: Colors.redAccent,
        ),
          body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            //spaceEvenly,Center,Start, spaceBetween,
            children: <Widget>[
              Container(
                height:50,
                width: 100,
                margin: EdgeInsets.all(20),
                color: Colors.green,
                child: Text("Container One"),
              ),
              Container(
                height:50,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: Text("Container Two"),
              ),
              Container(
                height:50,
                width: 100,
                margin: EdgeInsets.all(10),
                color: Colors.green,
                child: Text("Container Three"),
              )
            ],

          ),
      ),
    );
  }
}
