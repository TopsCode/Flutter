import 'package:flutter/material.dart';

//function to trigger build
void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'TopsApp',
	theme: ThemeData(
		primarySwatch: Colors.green,
	), // ThemeData
	home: const MyHomePage(),
	debugShowCheckedModeBanner: false,
	); // MaterialApp
}
}

class MyHomePage extends StatefulWidget {
const MyHomePage({Key? key}) : super(key: key);

@override
// ignore: library_private_types_in_public_api
_MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text("TopsApp"),
	), // AppBar
	// App body consists of single Column
	// Column consists of three children widgets
	body: Column(
		mainAxisAlignment: MainAxisAlignment.spaceAround,
		children: <Widget>[
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"TopsApp",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		),
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"TopsApp",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		),
		Container(
			decoration: BoxDecoration(
				borderRadius: BorderRadius.circular(10), color: Colors.green),
			child: const Padding(
			padding: EdgeInsets.all(8.0),
			child: Text(
				"TopsApp",
				style: TextStyle(color: Colors.white, fontSize: 25),
			),
			),
		)
		],
	), // Column
	);
}
}
