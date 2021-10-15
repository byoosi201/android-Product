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
          title: Text("Image Widget"),
          backgroundColor: Colors.black26,
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:[
              Column(
                children: [
                  FadeInImage.assetNetwork(
                    placeholder: "assets/test.png",
                    image: "https://www.kindpng.com/picc/m/246-2460688_happy-birthday-png-vector-transparent-png.png",width: 300,height: 100,),
                  Text("Image i made first when programing"),

              ],
              ),
                       ],
         )
        )
     ),
    );
  }
}
