import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App 10',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Day 10"),
        ),
        body: Stack(
          children: [
            Container(

              color: Colors.green,
            ),
            Container(
              height: 500,
              width: 250,
              color: Colors.white,
            ),
            Container(
              height: 400,
              width: 200,
              color: Colors.purpleAccent,
            )

          ],
        ),
      ),
    );
  }
}
