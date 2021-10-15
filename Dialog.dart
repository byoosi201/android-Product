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
      home: Alertwidget(),
    );
  }
}
class Alertwidget extends StatelessWidget {

 TextEditingController _textEditingController =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text("Basic AlertDialog"),
            onPressed: () async{
             // alertdialogwidget(context);
             // textfieldalertdialogwidget(context,_textEditingController);
             // final field fieldatt = await confirmalertdialogwidget(context);
             // print("User selection $fieldatt");
              final selectopt option = await selectionalertdialogwidget(context);
              print(option);
            },
            color: Colors.blue,
          ),
        ),
      ),

    );
  }
}

alertdialogwidget(BuildContext context){

  showDialog(context: context,
      builder: (BuildContext context){
    return AlertDialog(
      title: Text("Basic"),
      content: Text("this is for notification purpose"),
      actions: [
        RaisedButton(
          child: Text("ok"),
            color: Colors.blue,
            onPressed: (){
            Navigator.of(context).pop();
            },

            )
      ],
    );
  }
  );
}

textfieldalertdialogwidget(BuildContext context,TextEditingController textEditingController){

  showDialog(context: context,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("TextField "),
          content: TextField(
            decoration: InputDecoration(
              hintText: "what is your Name",
            ),
            controller: textEditingController,
          ),
          actions: [
            RaisedButton(
              child: Text("ok"),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).pop();
              },

            )
          ],
        );
      }
  );

}

enum field {confirm,Accept}
Future confirmalertdialogwidget(BuildContext context) async{
 showDialog<field>(context: context,
      barrierDismissible: false,
      builder: (BuildContext context){
        return AlertDialog(
          title: Text("Confirmation "),
          content: Text("this is magic for notification !!!"),
          actions: [
            RaisedButton(
              child: Text("Cancel"),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).pop(field.confirm);
              },

            ),
            RaisedButton(
              child: Text("Accept"),
              color: Colors.blue,
              onPressed: (){
                Navigator.of(context).pop(field.Accept);
              },

            )
          ],
        );
      }
  );

}
enum selectopt{c,Java,python,PHP}
Future selectionalertdialogwidget(BuildContext context) async{
  return showDialog<selectopt>(context: context,
      barrierDismissible: true ,
      builder: (BuildContext context){
        return SimpleDialog(
          title: Text("choose any one"),
          children: [
            SimpleDialogOption(
              onPressed: (){Navigator.pop(context,selectopt.c);
              },
              child: Text("c"),
            ),
            SimpleDialogOption(
              onPressed: (){Navigator.pop(context,selectopt.Java);
              },
              child: Text("Java"),
            ),
            SimpleDialogOption(
              onPressed: (){Navigator.pop(context,selectopt.python);
              },
              child: Text("python"),
            ),
            SimpleDialogOption(
              onPressed: (){Navigator.pop(context,selectopt.PHP);
              },
              child: Text("PHP"),
            ),
          ],
        );
      }
  );

}
