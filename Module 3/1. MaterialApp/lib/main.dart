import 'package:flutter/material.dart';

void main() {
runApp(const TopsApp());
}

class TopsAppextends StatelessWidget {
const TopsApp({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'TopsDemo',
	theme: ThemeData(primarySwatch: Colors.green),
	darkTheme: ThemeData(primarySwatch: Colors.grey),
	color: Colors.amberAccent,
	supportedLocales: {const Locale('en', ' ')},
	debugShowCheckedModeBanner: false,
	home: Scaffold(
		appBar: AppBar(title: const Text('TopsDemo')),
	),
	);
}
}
