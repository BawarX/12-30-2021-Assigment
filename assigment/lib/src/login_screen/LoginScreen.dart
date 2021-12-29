

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
  
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            'Login Page',
            style: TextStyle(color: Colors.black),
            )
            ),
      ),
      body: Column(
        children: [
         Padding(padding: EdgeInsets.all(10)),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'user name',
              hintText: 'userName is "kurdistan" '
            ),
          ),
          Padding(padding: EdgeInsets.all(10)),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'password',
              hintText: 'password is 12345'
            ),
          ),
          FlatButton(  onPressed: (){
            
            Navigator.pushNamed(context, '/APIscreen'); 
           
          }, child: Text('login'),
         
          ),
         
        ],
        
      ),
    );
  }
}