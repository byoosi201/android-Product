import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic List"),
          ),
        body: ListView(
          children: [
            ListTile(
              leading:Icon(Icons.home) ,
              title: Text("Home"),
              //trailing: Icon(Icons.home) ,
            ),
            ListTile(
              leading:Icon(Icons.settings) ,
              title: Text("settings"),
              //trailing: Icon(Icons.home) ,
            ),
            ListTile(
              leading:Icon(Icons.person) ,
              title: Text("person"),
              //trailing: Icon(Icons.home) ,
            ),
            ListTile(
              leading:Icon(Icons.call) ,
              title: Text("call"),
              //trailing: Icon(Icons.home) ,
            ),
            ListTile(
              leading:Icon(Icons.contacts) ,
              title: Text("contacts"),
              //trailing: Icon(Icons.home) ,
            ),
          ],
        ),
      ),
    );
  }
}
