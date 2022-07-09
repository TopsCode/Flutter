import 'package:flutter/material.dart';

//This function triggers the build process
void main() => runApp(const MyApp());

// StatefulWidget
class MyApp extends StatefulWidget {
const MyApp({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	home: Scaffold(
		backgroundColor: Color.fromARGB(255, 230, 255, 201),
		appBar: AppBar(
		leading: const Icon(Icons.menu),
		backgroundColor: Colors.green,
		title: const Text(
			"TopsApp",
			textAlign: TextAlign.start,
		),
		), // AppBar
		body: const Center(
		child: Text(
			"StateFul Widget",
			style: TextStyle(color: Colors.black, fontSize: 30),
		),
		), // Container
	), // Scaffold
	); // MaterialApp
}
}
