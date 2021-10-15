import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Icons widget",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Icon Widget"),
          backgroundColor: Colors.black26,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children:[
                Icon(
                   Icons.home,
                     color: Colors.black,
                     size: 40,
                     textDirection: TextDirection.rtl,
            ),
                  Text("Home")
            ],
              ),
                 Column(
                   children: [
                     Icon(
                       Icons.access_alarm,
                       color: Colors.black,
                       size: 40,
                       textDirection: TextDirection.rtl,
                     ),
                     Text("Alarm")
                   ],
                 ),
              Column(
                children: [
                  Icon(
                    Icons.delete,
                    color: Colors.black,
                    size: 40,
                    textDirection: TextDirection.rtl,
                  ),
                  Text("Delete")
                ],
              ),
      ],
          ),
          )
        )
     ),
    );
  }
}
