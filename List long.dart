import 'package:flutter/material.dart';
 void main(){
   runApp(MyApp(
     names : List<String>.generate(50, (a) => "Coders!! $a")
   ));
 }
 class MyApp extends StatelessWidget {
   final List<String> names;
   const MyApp({Key? key, required this.names}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("Long List"),
         ),
         body: ListView.builder(
             itemCount: names.length,
             itemBuilder: (context,index){
               return ListTile(
                 title: Text("hi ${names[index]}"),
               );
             }
         ),
       ),
     );
   }
 }
