
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class APIscreen extends StatelessWidget {
  const APIscreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        title: Text('User Names'),
        backgroundColor: Colors.green,
      ),
        body: Center(
          child: Column(
            children : [
              FutureBuilder<List<dynamic>>(
              future: getUsers(),
              builder: (context,snapshot){
               if(!snapshot.hasData){
                 return CircularProgressIndicator();
               }else if(snapshot.hasError){
                 return Text(snapshot.error.toString());
               }else{
                 return ListView.builder(
                   itemCount: snapshot.data!.length,
                   itemBuilder: (context,index){
                     return Text(snapshot.data![index]);
                   },
                 );
               }
              },
              )
            ]
          ),
        ),
    );
  }
  Future<List<dynamic>> getUsers() async { // asycronus function
    String theUrl = "https://jsonplaceholder.typicode.com/users";
   http.Response response = await http.get(Uri.parse(theUrl));
   List decodedJson = jsonDecode(response.body);
   return decodedJson.map((e) => e["name"]).
    toList();
  }
  
}