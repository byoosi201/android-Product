import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  get boarder => null;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "card widgets",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Card widget"),
          backgroundColor: Colors.black,
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.all(8.0),
            children: [
              UserAccountsDrawerHeader(
                  accountName: Text("Mututa Paul"),
                  accountEmail: Text("mututapaul01@gmail.com"),
                currentAccountPicture: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(image: AssetImage("assets/paul.jpg"),fit: BoxFit.cover)
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
                onTap: (){
                  HomePage();
                },
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings"),
                onTap: (){
                  HomePage();
                },
              ),
              ListTile(
                leading: Icon(Icons.local_grocery_store),
                title: Text("Store"),
                onTap: (){
                  HomePage();
                },
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Center(
            child: Container(
              height: 200,
              width: 300,
              child: Card(
                color: Colors.yellowAccent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                elevation: 10,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ListTile(
                          leading: Icon(Icons.person,size: 40,color: Colors.blue,),
                          title: Text("Mututa paul",style: TextStyle(fontSize: 25,color: Colors.black),),
                          subtitle: Text("Byoosi",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
                        )
                    ),
                    ButtonBar(
                      children: [
                        RaisedButton(
                       child: FloatingActionButton.extended(onPressed: (){}, label: Text("Contact"),icon:Icon(Icons.call)),
                          color: Colors.blue,
                          onPressed: (){},

                        ),
                        RaisedButton(
                          child: Text("Location"),
                          color: Colors.blue,
                          onPressed: (){},

                        )
                      ],
                    )
                   ],
                ),

              ),
            ),
          ),

        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Home"),
    );
  }
}
