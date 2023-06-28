import 'package:flutter/material.dart';
import 'package:fluttertask1/login.dart';
class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Container(
            height: 300,
            width: 350,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/p1.jpg")
                )
            ),
          ),
        ),
      Padding(
      padding: const EdgeInsets.only(top:30.0),
      child: Text("WELCOME",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.black),),
      ),
        SizedBox(height: 30,),
        Text('create an account and access thousands\n                       of cool stuffs'),
    
      SizedBox(height: 90,),
      Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(onPressed: (){
      Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
      },
      style: ElevatedButton.styleFrom(primary: Colors.redAccent,fixedSize: Size(double.maxFinite, 50)),
      child: Text("Getting started",style: TextStyle(
      fontSize: 18,color: Colors.white
      ),
      ),),
    ),
    SizedBox(height: 5,),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    Text("Already have an acoount?",style: TextStyle(fontSize: 16,color: Colors.black),),
    TextButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
    },
    child: Text("Login",style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),))
    ],
    ),
    ),
]
    ),);
  }
}
