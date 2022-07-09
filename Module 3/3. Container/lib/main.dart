import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	home: Scaffold(
		appBar: AppBar(
		title: const Text("Container example"),
		),
		body: Container(
		height: 200,
		width: double.infinity,
		//color: Colors.purple,
		alignment: Alignment.center,
		margin: const EdgeInsets.all(20),
		padding: const EdgeInsets.all(30),
		decoration: BoxDecoration(
			border: Border.all(color: Colors.black, width: 3),
		),
		child: const Text("Hello! i am inside a container!",
			style: TextStyle(fontSize: 20)),
		),
	),
	);
}
}
