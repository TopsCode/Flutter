import 'package:blocex123/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main()
{

  SystemChrome.setSystemUIOverlayStyle
    (
      SystemUiOverlayStyle
      (
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.black,
        systemNavigationBarIconBrightness: Brightness.light,
        systemNavigationBarDividerColor: Colors.transparent,
      )
    );
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
      (
       debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
  }
}
