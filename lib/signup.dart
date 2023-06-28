import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask1/login.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('Sign Up Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
        SizedBox(height: 10,),
        Text('please fill the details and create account',style: TextStyle(color: Colors.black45),),

            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full name',
                ),),),

            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),),),

            SizedBox(height: 10,),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black45,),
                  border: OutlineInputBorder(),
                  labelText: 'Password',
                ),),),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
                Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
              },
                style: ElevatedButton.styleFrom(primary: Colors.redAccent,fixedSize: Size(double.maxFinite, 50)),
                child: Text("Signup",style: TextStyle(
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
    ),
    ),);
  }
}
