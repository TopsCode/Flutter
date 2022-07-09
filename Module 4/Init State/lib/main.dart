import 'package:flutter/material.dart';

void main() {
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: const Text(
			"GeeksforGeeks",
		),
		backgroundColor: Colors.green,
		),
		body: const stateExample(),
	),
	);
}
}

// ignore: camel_case_types
class stateExample extends StatefulWidget {
const stateExample({Key? key}) : super(key: key);

@override
State<stateExample> createState() => _stateExampleState();
}

// ignore: camel_case_types
class _stateExampleState extends State<stateExample> {
@override
// ignore: must_call_super
initState() {
	// ignore: avoid_print
	print("initState Called");
}

@override
Widget build(BuildContext context) {
	// ignore: avoid_print
	print(" Build method called");
	return Center(
	child: ElevatedButton(
		style: ButtonStyle(
			backgroundColor: MaterialStateProperty.all(Colors.green)),
		onPressed: () {},
		child: const Text(
		'initState Demonstration',
		style: TextStyle(color: Colors.white),
		),
	),

	// RaisedButton widget is deprecated and should not be used anymore.
	// Use ElevatedButton instead.

	// child: RaisedButton(
	//	 color: Colors.green,
	//	 elevation: 10,
	//	 onPressed: () {},
	//	 child: const Text(
	//	 'initState Demonstration',
	//	 style: TextStyle(color: Colors.white),
	//	 ),
	// ),
	);
}
}
