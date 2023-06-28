import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertask1/signup.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Log In Now',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black),),
              SizedBox(height: 20,),
              Text('please login to continue using our app',style: TextStyle(color: Colors.black45),),

              SizedBox(height: 15,),
        Padding(
        padding: EdgeInsets.all(10),
        child: TextField(
        obscureText: true,
        decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'Email',
        ),),),



              SizedBox(height: 15,),
              Padding(
                padding: EdgeInsets.all(10),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.remove_red_eye,color: Colors.black45,),
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),),),

              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 200),
                child: Text("Forgot your Password?",style: TextStyle(fontSize: 16,color: Colors.black45),),
              ),

              SizedBox(height: 70,),
              Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Login()));
              },
              style: ElevatedButton.styleFrom(primary: Colors.redAccent,fixedSize: Size(double.maxFinite, 50)),
              child: Text("Login",style: TextStyle(
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
                    Text("Don't have an acoount?",style: TextStyle(fontSize: 16,color: Colors.black),),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Signup()));
                    },
                        child: Text("Sign Up",style: TextStyle(fontSize: 20,color: Colors.redAccent,fontWeight: FontWeight.bold),))
                  ],
                ),
              ),



               ]
        )
    );
  }
}
