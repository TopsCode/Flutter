import 'package:flutter/material.dart';  
  
void main() {  
  runApp(new MaterialApp(home: new MyApp()));  
}  
  
class MyApp extends StatelessWidget {  
  // This widget is the root of your application.  
  @override  
  Widget build(BuildContext context) {  
    // TODO: implement build  
    return new Scaffold(  
      appBar: AppBar(  
        title: Text("Confirmation AlertDialog"),  
      ),  
      body: Center(  
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.center,  
          children: <Widget>[  
            new RaisedButton(  
              onPressed: () async {  
                final ConfirmAction action = await _asyncConfirmDialog(context);  
                print("Confirm Action $action" );  
              },  
              child: const Text(  
                "Show Alert",  
                style: TextStyle(fontSize: 20.0),),  
                padding: EdgeInsets.fromLTRB(30.0,10.0,30.0,10.0),  
                shape: RoundedRectangleBorder(  
                  borderRadius: BorderRadius.circular(8.0)  
                ),  
                color: Colors.green,  
              ),  
          ],  
        ),  
      ),  
    );  
  }  
}  
enum ConfirmAction { Cancel, Accept}  
Future<ConfirmAction> _asyncConfirmDialog(BuildContext context) async {  
  return showDialog<ConfirmAction>(  
    context: context,  
    barrierDismissible: false, // user must tap button for close dialog!  
    builder: (BuildContext context) {  
      return AlertDialog(  
        title: Text('Delete This Contact?'),  
        content: const Text(  
            'This will delete the contact from your device.'),  
        actions: <Widget>[  
          FlatButton(  
            child: const Text('Cancel'),  
            onPressed: () {  
              Navigator.of(context).pop(ConfirmAction.Cancel);  
            },  
          ),  
          FlatButton(  
            child: const Text('Delete'),  
            onPressed: () {  
              Navigator.of(context).pop(ConfirmAction.Accept);  
            },  
          )  
        ],  
      );  
    },  
  );  
}  