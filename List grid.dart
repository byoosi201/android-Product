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
           title: Text("Long List"),
         ),
         body: GridView.count(
             crossAxisCount: 2,
           children: List.generate(datas.length, (index){
             return Center(
               child: newCard(
                 datas: datas[index],
               ),
             );
           }),

         ),
       ),
     );
   }
 }
 class data{
   const data({required this.title,required this.icon});
   final String title;
   final IconData icon;
 }
const List<data> datas = <data>[

  const data(title: 'home', icon: Icons.home),
  const data(title: 'home', icon: Icons.home),
  const data(title: 'home', icon: Icons.home),
  const data(title: 'home', icon: Icons.home),
  const data(title: 'home', icon: Icons.home),
  const data(title: 'home', icon: Icons.home),



];




////// NEW DART FILE YOU SHOULD CREAT!!!!!!!!!!!



import 'package:flutter/material.dart';
import 'main.dart';

class newCard extends StatelessWidget {
  final data datas;
  const newCard({Key? key,required this.datas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card (
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(child: Icon(datas.icon,size: 50,),),
          Text(datas.title,style: TextStyle(fontSize: 20),),
        ],
      ) ,

    );
  }
}
