import 'package:flutter/material.dart';

//This function triggers the build process
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	debugShowCheckedModeBanner: false,
	home: Scaffold(
		backgroundColor: const Color.fromARGB(255, 230, 255, 201),
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
			"Stateless Widget",
			style: TextStyle(color: Colors.black, fontSize: 30),
		),
		), // Container
	), // Scaffold
	); // MaterialApp
}
