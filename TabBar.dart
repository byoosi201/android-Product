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
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("TabBar"),
            backgroundColor: Colors.blue,
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home),text: "Home",),
                Tab(icon: Icon(Icons.settings),text: "Settings",),
                Tab(icon: Icon(Icons.local_grocery_store),text: "Store",),
             ],
            ),
          ),
          body: TabBarView(
            children: [
              HomePage(),
              HomePage1(),
              HomePage2(),
            ],
          ),
        ),
      )
    );
  }
}
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child:Text("Home",style: TextStyle(fontSize: 60),),
        )
    );
  }
}
class HomePage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          child:Text("Settings",style: TextStyle(fontSize: 60),),
        )
    );
  }
}
class HomePage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child:Text("Store",style: TextStyle(fontSize: 60),),
      )
    );
  }
}
