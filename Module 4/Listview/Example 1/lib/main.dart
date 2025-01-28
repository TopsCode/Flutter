import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
// This widget is the root
// of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
		title: "ListView.builder",
		theme: ThemeData(primarySwatch: Colors.green),
		debugShowCheckedModeBanner: false,
		// home : new ListViewBuilder(), NO Need To Use Unnecessary New Keyword
		home: const ListViewBuilder());
}
}

class ListViewBuilder extends StatelessWidget {
const ListViewBuilder({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(title: const Text("ListView.builder")),
	body: ListView.builder(
		itemCount: 5,
		itemBuilder: (BuildContext context, int index) {
			return ListTile(
				leading: const Icon(Icons.list),
				trailing: const Text(
				"GFG",
				style: TextStyle(color: Colors.green, fontSize: 15),
				),
				title: Text("List item $index"));
		}),
	);
}
}
