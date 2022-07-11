import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  final appTitle = 'Flutter Drawer Demo';  
  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: appTitle,  
      home: MyHomePage(title: appTitle),  
    );  
  }  
}  
  
class MyHomePage extends StatelessWidget {  
  final String title;  
  
  MyHomePage({Key key, this.title}) : super(key: key);  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title: Text(title)),  
      body: Center(child: Text(  
          'A drawer is an invisible side screen.',  
          style: TextStyle(fontSize: 20.0),  
          )  
      ),  
      drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Abhishek Mishra"),  
              accountEmail: Text("abhishekm977@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                backgroundColor: Colors.orange,  
                child: Text(  
                  "A",  
                  style: TextStyle(fontSize: 40.0),  
                ),  
              ),  
            ),  
            ListTile(  
              leading: Icon(Icons.home), title: Text("Home"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.settings), title: Text("Settings"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Contact Us"),  
              onTap: () {  
                Navigator.pop(context);  
              },  
            ),  
          ],  
        ),  
      ),  
    );  
  }  
}  