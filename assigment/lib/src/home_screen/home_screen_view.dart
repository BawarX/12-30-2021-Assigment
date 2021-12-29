

import 'package:flutter/material.dart';

class HomeScreenView extends StatelessWidget {
  const HomeScreenView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(    
      backgroundColor: Colors.grey,
      appBar: AppBar(
       
         title: Text('API Test'),
         backgroundColor: Colors.redAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            Text('Welcome to this great application',style: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
            ),
            Divider(
              color: Colors.red,
              height: 50,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.redAccent,
              ),
              onPressed: (){
              Navigator.pushNamed(context, '/login');
            },
             child: Text('Click this button you will be surprised!!',
            style: TextStyle
            (fontSize: 20, fontWeight: FontWeight.w300,),
         
            ),
        
            ),
          ],
        ),
        
        ),
     
      
    ); 
  }
}