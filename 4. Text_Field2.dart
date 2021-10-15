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
          body: Column(
           children: [
             Text(
               "Byoosi.com is the best Technological Industry Ever Located in Mbale Town",
               style: TextStyle(
                   color: Colors.black,
                   fontSize: 30,
                   fontStyle: FontStyle.italic,
                   fontWeight: FontWeight.w700,
                   backgroundColor: Colors.yellowAccent,
                   letterSpacing: 4.0,
                   wordSpacing: 5.0,
                   shadows: [
                     Shadow(
                         color: Colors.lime,offset: Offset(3.0,3.0)
                     ),
                   ]
               ),

             ),
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: RichText(
                 text: TextSpan(
                   text: "Hello word",
                   style: TextStyle(
                     color: Colors.deepPurple,
                   ),
                   children: <TextSpan>[
                     TextSpan(
                       text: 'Byoosi.com programers',
                         style: TextStyle(
                           color: Colors.teal,
                         )
                     )
                   ]
                 ),
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(24.0),
               child: TextField(
                 obscureText: true,
                 decoration: InputDecoration(
                   border:OutlineInputBorder(),
                   labelText: 'Name',
                   hintText: 'Enter Your name!'
                 ),

               ),
             ),
           ],
          ) ,
      ),
    );
  }
}
