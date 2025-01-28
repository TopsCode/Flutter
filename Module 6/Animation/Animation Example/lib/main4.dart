import 'package:flutter/material.dart';

class XYZTransition extends StatefulWidget {
@override
_XYZTransitionState createState() => _XYZTransitionState();
}

class _XYZTransitionState extends State<XYZTransition>
	with SingleTickerProviderStateMixin {
AnimationController _animationController;

@override
void initState() {
	super.initState();
	_animationController = AnimationController(
	vsync: this,
	duration: Duration(seconds: 3),
	)..repeat();
}

@override
void dispose() {
	_animationController.dispose();
	super.dispose();
}

@override
Widget build(BuildContext context) {
	return Scaffold(
	body: SafeArea(
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: [
			Text(
			'RotationalTransition',
			style: TextStyle(fontSize: 20),
			),
			SizedBox(
			height: 10,
			),
			
			// assign action to gestures
			GestureDetector(
			onTap: () {
				_animationController.isAnimating
					? _animationController.stop()
					: _animationController.repeat();
			},
			child: Padding(
				padding: const EdgeInsets.all(8.0),
				child: Center(
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						
					// defining the animation type
					RotationTransition(
						child: Image.asset('images/hypno.png',
							height: 150, width: 150),
						alignment: Alignment.center,
						turns: _animationController,
					),
					SizedBox(
						height: 20,
					),
					Text('Tap to STOP/ START')
					],
				),
				),
			),
			),
		],
		),
	),
	);
}
}
