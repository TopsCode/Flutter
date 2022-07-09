//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'details.dart';
import 'newdata.dart';

void main()=>runApp(MaterialApp(
  title: "Api Test",
  debugShowCheckedModeBanner: false,
  theme: ThemeData(
    primarySwatch: Colors.red,

  ),
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {

  Future<List> getData() async{
    final responce = await http.get("https://prakrutivyas.000webhostapp.com/regserver/CRUD/view.php");
    return jsonDecode(responce.body);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My App Bar"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ()=>Navigator.of(context).push(
          MaterialPageRoute(

            builder: (BuildContext contex)=> NewData(),
            
          ),
        ),
        child: Icon(Icons.add),
      ),
      body:FutureBuilder<List>(
        future: getData(),
        builder: (ctx,ss) {
          if(ss.hasError){
            print("error");
          }
          if(ss.hasData){
            return Items(list:ss.data);

          }
          else{
            return CircularProgressIndicator();

          }
        },
      ),
    );
  }
}

class Items extends StatelessWidget {

  List list;

  Items({this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
       itemCount: list==null?0:list.length,
      itemBuilder: (ctx,i){
        return ListTile(

          leading: Icon(Icons.message),
          title: Text(list[i]['name']),
          subtitle: Text(list[i]['email']),
          onTap: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context)=>Details(list:list,index:i),

          )),
        );

      }
    );
  }
}

