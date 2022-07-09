import 'package:flutter/material.dart';  
  
void main() => runApp(MyApp());  
  
class MyApp extends StatelessWidget {  
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      title: 'Flutter Alert Demo',  
      debugShowCheckedModeBanner: false,  
      theme: ThemeData(  
        primarySwatch: Colors.blue,  
      ),  
      //home: MyHomePage(title: 'Flutter Demo Home Page'),  
      home: TextFieldAlertDialog(),  
    );  
  }  
}  
class TextFieldAlertDialog extends StatelessWidget {  
  TextEditingController _textFieldController = TextEditingController();  
  
  _displayDialog(BuildContext context) async {  
    return showDialog(  
        context: context,  
        builder: (context) {  
          return AlertDialog(  
            title: Text('TextField AlertDemo'),  
            content: TextField(  
              controller: _textFieldController,  
              decoration: InputDecoration(hintText: "TextField in Dialog"),  
            ),  
            actions: <Widget>[  
              new FlatButton(  
                child: new Text('SUBMIT'),  
                onPressed: () {  
                  Navigator.of(context).pop();  
                },  
              )  
            ],  
          );  
        });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: Text('TextField AlertDialog Demo'),  
      ),  
      body: Center(  
        child: FlatButton(  
          child: Text(  
            'Show Alert',  
            style: TextStyle(fontSize: 20.0),),  
            padding: EdgeInsets.fromLTRB(20.0,12.0,20.0,12.0),  
            shape: RoundedRectangleBorder(  
              borderRadius: BorderRadius.circular(8.0)  
            ),  
          color: Colors.green,  
          onPressed: () => _displayDialog(context),  
        ),  
      ),  
    );  
  }  
}  