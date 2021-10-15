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
        body: Center(
          child: Stack(
            fit: StackFit.passthrough,
            overflow: Overflow.visible,
            children: [
              Container(
                height: 300,
                width: 400,
                color: Colors.purpleAccent,
                child: Center(
                    child: Text(
                      "Hello coders!!",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    )
                ),

              ),
              Positioned(
                top: 30,
                right: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      "second",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 30,
                left: 20,
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.black26,
                  child: Center(
                    child: Text(
                      "First",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}
