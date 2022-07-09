import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:workmanager/workmanager.dart';

void main() {

// needed if you intend to initialize in the `main` function
WidgetsFlutterBinding.ensureInitialized();
Workmanager().initialize(
	
	// The top level function, aka callbackDispatcher
	callbackDispatcher,
	
	// If enabled it will post a notification whenever
	// the task is running. Handy for debugging tasks
	isInDebugMode: true
);
// Periodic task registration
Workmanager().registerPeriodicTask(
	"2",
	
	//This is the value that will be
	// returned in the callbackDispatcher
	"simplePeriodicTask",
	
	// When no frequency is provided
	// the default 15 minutes is set.
	// Minimum frequency is 15 min.
	// Android will automatically change
	// your frequency to 15 min
	// if you have configured a lower frequency.
	frequency: Duration(minutes: 15),
);
runApp(MyApp());
}

void callbackDispatcher() {
Workmanager().executeTask((task, inputData) {
	
	// initialise the plugin of flutterlocalnotifications.
	FlutterLocalNotificationsPlugin flip = new FlutterLocalNotificationsPlugin();
	
	// app_icon needs to be a added as a drawable
	// resource to the Android head project.
	var android = new AndroidInitializationSettings('@mipmap/ic_launcher');
	var IOS = new IOSInitializationSettings();
	
	// initialise settings for both Android and iOS device.
	var settings = new InitializationSettings(android, IOS);
	flip.initialize(settings);
	_showNotificationWithDefaultSound(flip);
	return Future.value(true);
});
}

Future _showNotificationWithDefaultSound(flip) async {

// Show a notification after every 15 minute with the first
// appearance happening a minute after invoking the method
var androidPlatformChannelSpecifics = new AndroidNotificationDetails(
	'your channel id',
	'your channel name',
	'your channel description',
	importance: Importance.Max,
	priority: Priority.High
);
var iOSPlatformChannelSpecifics = new IOSNotificationDetails();

// initialise channel platform for both Android and iOS device.
var platformChannelSpecifics = new NotificationDetails(
	androidPlatformChannelSpecifics,
	iOSPlatformChannelSpecifics
);
await flip.show(0, 'GeeksforGeeks',
	'Your are one step away to connect with GeeksforGeeks',
	platformChannelSpecifics, payload: 'Default_Sound'
);
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'Geeks Demo',
	theme: ThemeData(
		
		// This is the theme
		// of your application.
		primarySwatch: Colors.green,
	),
	home: HomePage(title: "GeeksforGeeks"),
	);
}
}

class HomePage extends StatefulWidget {
HomePage({Key key, this.title}) : super(key: key);
// This widget is the home page of your application.
// It is stateful, meaning
// that it has a State object (defined below)
// that contains fields that affect
// how it looks.

// This class is the configuration for the state.
// It holds the values (in this
// case the title) provided by the parent
// (in this case the App widget) and
// used by the build method of the State.
// Fields in a Widget subclass are
// always marked "final".

final String title;

@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
@override
Widget build(BuildContext context) {
	
	// This method is rerun every time setState is called.
	// The Flutter framework has been optimized
	// to make rerunning build methods
	// fast, so that you can just rebuild
	// anything that needs updating rather
	// than having to individually change
	//instances of widgets.
	return Scaffold(
	appBar: AppBar(
		
		// Here we take the value from
		// the MyHomePage object that was created by
		// the App.build method, and use it
		// to set our appbar title.
		title: Text(widget.title),
	),
	body: new Container(),
	);
}
}
