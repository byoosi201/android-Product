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
          title: Text("Application Form"),
        ),
        body:Forms(

        ),
      )
    );
  }
}
class Forms extends StatefulWidget {
  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your name",
              labelText: "Name",
              icon: Icon(Icons.person),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
           ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your password",
                labelText: "password",
                icon: Icon(Icons.lock),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
           ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Enter your Email",
                labelText: "Email",
                icon: Icon(Icons.email),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter some text';
              }
              return null;
            },
          ),
          Container(
            child: ElevatedButton(
              child: Text('Submit'),
              onPressed: (){
                if(keys.currentState!.validate()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Processing Data')),
                  );
                }
              },
            ),
          )
       ],
      ),
    );
  }
}
