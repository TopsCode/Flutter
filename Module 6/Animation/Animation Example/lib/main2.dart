import 'package:flutter/material.dart';

class AnimatedXYZ extends StatefulWidget {
@override
_AnimatedXYZState createState() => _AnimatedXYZState();
}

// building the container class
class _AnimatedXYZState extends State<AnimatedXYZ> {
bool _toggle = true;

@override
Widget build(BuildContext context) {
	return SafeArea(
	child: Center(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
			Padding(
			padding: const EdgeInsets.all(20),
			child: Text(
				'AnimatedContainer',
				style: TextStyle(fontSize: 20),
			),
			),
			
			// using the AnimatedContainer widget
			AnimatedContainer(
			decoration: BoxDecoration(
				color: _toggle == true
					? Colors.blueAccent
					: Colors.deepPurpleAccent,
				borderRadius: BorderRadius.all(Radius.circular(8)),
			),
			curve: Curves.easeInOutBack,
			duration: Duration(seconds: 1),
			height: _toggle == true ? 100 : 400,
			width: _toggle == true ? 100 : 200,
			),
			SizedBox(
			height: 20,
			),
			RaisedButton(
			onPressed: () {
				setState(() {
				_toggle = !_toggle;
				});
			},
			child: Text('Animate'),
			)
		],
		),
	),
	);
}
}
