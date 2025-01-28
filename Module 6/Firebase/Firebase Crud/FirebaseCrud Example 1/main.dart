//@dart=2.9
import 'package:firebase/pages/addstudent.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()
{
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  
  @override
  Widget build(BuildContext context)
  {

      return FutureBuilder(

        future: _initialization,
          builder: (context, snapshot)
          {
            if (snapshot.hasError)
            {
              print("Something went Wrong");
            }

            if (snapshot.connectionState == ConnectionState.done) {
              return MaterialApp(
                title: 'Flutter Firestore CRUD',
                theme: ThemeData(
                  primarySwatch: Colors.blue,
                ),
                debugShowCheckedModeBanner: false,
                home: AddStudent(),
              );
            }
            return CircularProgressIndicator();
          },



      );

  }

}
