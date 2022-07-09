import 'dart:async';  
import 'package:flutter/material.dart';  
import 'package:splashscreen/splashscreen.dart';  
  
void main() { runApp(MyApp()); }  
  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      theme: ThemeData(  
        primarySwatch: Colors.green,  
      ),  
      home: SplashScreenPage(),  
      debugShowCheckedModeBanner: false,  
    );  
  }  
}  
class SplashScreenPage extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return SplashScreen(  
      seconds: 5,  
      navigateAfterSeconds: new HomeScreen(),  
      backgroundColor: Colors.yellow,  
      title: new Text('Flutter Javatpoint',textScaleFactor: 2,),  
      image: new Image.network(  
          'https://static.javatpoint.com/tutorial/flutter/images/flutter-creating-android-platform-specific-code3.png'  
      ),  
      loadingText: Text("Loading"),  
      photoSize: 150.0,  
      loaderColor: Colors.red,  
    );  
  }  
}  
class HomeScreen extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(title:Text("Splash Screen Example")),  
      body: Center(  
          child:Text("Welcome to Home Page",  
              style: TextStyle( color: Colors.black, fontSize: 30)  
          )  
      ),  
    );  
  }  
}  