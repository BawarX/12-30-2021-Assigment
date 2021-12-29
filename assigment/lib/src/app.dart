import 'package:flutter/material.dart';
import 'package:assigment/src/api_screen/ApiScreen.dart';
import 'package:assigment/src/home_screen/home_screen_view.dart';
import 'package:assigment/src/login_screen/LoginScreen.dart';
import 'package:assigment/src/studentscree/student_screen.dart';

class AppView extends StatelessWidget {
  const AppView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes:{
        '/' : (context) => HomeScreenView(),
        '/login' : (context) => LoginScreen(),
        '/StudentScreen' : (context) => StudentScreen(),
        '/APIscreen' : (context) => APIscreen(),
       

      }
    );
  }
}

class StatelessWidget {
}