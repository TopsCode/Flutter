import 'package:flutter/material.dart';

void main() {
runApp(const MaterialApp(
	home: HomeRoute(),
));
}

class HomeRoute extends StatelessWidget {
const HomeRoute({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text('Geeks for Geeks'),
		backgroundColor: Colors.green,
	),
	body: Center(
		child: ElevatedButton(
			child: const Text('Click Me!'),
			onPressed: () {
			Navigator.push(
				context,
				MaterialPageRoute(builder: (context) => const SecondRoute()),
			);
			}),
	),
	);
}
}

class SecondRoute extends StatelessWidget {
const SecondRoute({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {
	return Scaffold(
	appBar: AppBar(
		title: const Text(""Click Me Page""),
		backgroundColor: Colors.green,
	),
	body: Center(
		child: ElevatedButton(
		onPressed: () {
			Navigator.pop(context);
		},
		child: const Text('Home!'),
		),
	),
	);
}
}
