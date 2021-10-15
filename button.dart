import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.greenAccent,
        appBar: AppBar(
          title: Text("Registration"),
            leading: Icon(Icons.home),
          backgroundColor: Colors.redAccent,
        ),
          body: Center(
            child: Column(
              children: [
                Center(
                  child: Container(
                    margin: EdgeInsets.only(top: 40),
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(color: Colors.black,width: 2)
                    ),
                    child: Center(child: Text("B",style: TextStyle(fontSize: 80,color: Colors.red),)),

                  ),
                ),
                Container(
                  margin: EdgeInsets.all(30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),

                    ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Mututa Paul",
                        icon: Icon(Icons.person, color: Colors.white)
                      ),

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Password",
                          icon: Icon(Icons.lock, color: Colors.white)
                      ),

                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30,top: 30, right: 30),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Email Link",
                          icon: Icon(Icons.email, color: Colors.white)
                      ),

                    ),
                  ),
                ),
                //flat Button
                FlatButton(
                  child: Text("Update",style: TextStyle(fontSize: 20,),) ,
                  onPressed: () {  },
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                ),
                RaisedButton(
                  child: Text("Update"),
                  color: Colors.lightBlueAccent,
                  textColor: Colors.white,
                  splashColor: Colors.green,
                  onPressed: (){},
                ),
                FloatingActionButton(
                   child: Icon(Icons.save),
                   foregroundColor: Colors.black,
                   backgroundColor: Colors.yellowAccent,
                   onPressed: (){},

                ),

                FloatingActionButton.extended(onPressed: (){}, label: Text("save"),icon:Icon(Icons.save),)


              ],
            ),
          ),
      ),
    );
  }
}
