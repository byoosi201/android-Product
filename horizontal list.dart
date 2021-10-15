import 'package:flutter/material.dart';
import 'package:testing_app/newCard.dart';
 void main(){
   runApp(MyApp(
    // names : List<String>.generate(50, (a) => "Coders!! $a")
   ));
 }
 class MyApp extends StatelessWidget {
   // final List<String> names;
   // const MyApp({Key? key, required this.names}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return MaterialApp(
       home: Scaffold(
         appBar: AppBar(
           title: Text("Horizontal List"),
         ),
         body: Container(
           height: 150.0,
           child: ListView(
             scrollDirection: Axis.horizontal,
             children: [
               Container(
                 width: 148.0,
                 color: Colors.red,
                 child: Center(
                   child: ListTile(
                     leading: Icon(Icons.home),
                     title: Text("Home"),
                   ),
                 ),
               ),
               Container(
                   width: 148.0,
                   color: Colors.green,
                   child: Center(
                     child: ListTile(
                       leading: Icon(Icons.person_pin),
                       title: Text("Profile"),
                     ),
                   ),
               ),
               Container(
                   width: 148.0,
                   color: Colors.purple,
                   child: Center(
                     child: ListTile(
                       leading: Icon(Icons.call),
                       title: Text("Contact"),
                     ),
                   ),
               ),
               Container(
                   width: 148.0,
                   color: Colors.red,
                   child: Center(
                     child: ListTile(
                       leading: Icon(Icons.settings),
                       title: Text("Settings"),
                     ),
                   )
               )


             ],

           ),

         ),
       ),
     );
   }
 }
//  class data{
//    const data({required this.title,required this.icon});
//    final String title;
//    final IconData icon;
//  }
// const List<data> datas = <data>[
//
//   const data(title: 'home', icon: Icons.home),
//   const data(title: 'home', icon: Icons.home),
//   const data(title: 'home', icon: Icons.home),
//   const data(title: 'home', icon: Icons.home),
//   const data(title: 'home', icon: Icons.home),
//   const data(title: 'home', icon: Icons.home),


//
// ];
