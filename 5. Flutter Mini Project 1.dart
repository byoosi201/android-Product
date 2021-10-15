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
                Container(
                  margin: EdgeInsets.only(left: 30,top: 30, right: 30),
                  height: 50,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.circular(20),

                  ),
                  child: Center(
                      child: Text("Update",style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                      ),


                    ),
                  ),
                )

              ],
            ),
          ),
      ),
    );
  }
}
