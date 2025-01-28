import 'package:flutter/material.dart';

class BuilderAnimation extends StatefulWidget {
@override
_BuilderAnimationState createState() => _BuilderAnimationState();
}

class _BuilderAnimationState extends State<BuilderAnimation>
	with TickerProviderStateMixin {
Animation _starAnimation;
AnimationController _starAnimationController;

bool toggle = false;

// animation controller
@override
void initState() {
	super.initState();
	_starAnimationController =
		AnimationController(vsync: this, duration: Duration(milliseconds: 500));
	_starAnimation = Tween(begin: 140.0, end: 160.0).animate(CurvedAnimation(
		curve: Curves.elasticInOut, parent: _starAnimationController));

	_starAnimationController.addStatusListener((AnimationStatus status) {
	if (status == AnimationStatus.completed) {
		_starAnimationController.repeat();
	}
	});
}

@override
void dispose() {
	super.dispose();
	_starAnimationController?.dispose();
}

@override
Widget build(BuildContext context) {
	return SafeArea(
	child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		children: <Widget>[
		Text(
			'AnimatedBuilder',
			style: TextStyle(fontSize: 20),
		),
		SizedBox(
			height: 10,
		),
			
		// animated container
		// goes as a child
		Container(
			height: 200,
			width: 200,
			child: AnimatedBuilder(
			animation: _starAnimationController,
			builder: (context, child) {
				return Center(
				child: Container(
					child: Center(
					child: Icon(
						Icons.audiotrack,
						color: Colors.orangeAccent,
						size: _starAnimation.value,
					),
					),
				),
				);
			},
			),
		),
		SizedBox(
			height: 10,
		),
			
		// button
		RaisedButton(
			child: Text('START/ STOP'),
			onPressed: () {
			toggle = !toggle;
			toggle == true
				? _starAnimationController.forward()
				: _starAnimationController.stop();
			},
		),
		],
	),
	);
}
}
