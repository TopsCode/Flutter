import 'package:flutter/material.dart';

import 'devicetheme.dart';

void main() {
  runApp(MyApp2());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Light and Dark Theme',
      themeMode: ThemeMode.system, // Default system theme
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: ThemeSwitcherScreen(),
    );
  }
}

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.blue,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.black, fontSize: 18),
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primarySwatch: Colors.deepPurple,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: AppBarTheme(
      color: Colors.deepPurple,
      foregroundColor: Colors.white,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white, fontSize: 18),
    ),
  );
}

class ThemeSwitcherScreen extends StatefulWidget {
  @override
  _ThemeSwitcherScreenState createState() => _ThemeSwitcherScreenState();
}

class _ThemeSwitcherScreenState extends State<ThemeSwitcherScreen> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Light and Dark Theme'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/avatar.webp'),
            ),
            SizedBox(height: 20),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            SizedBox(height: 10),
            Text(
              'Flutter Developer',
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                fontSize: 16,
                color: Theme.of(context).textTheme.bodyLarge!.color?.withOpacity(0.7),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: _toggleTheme,
              child: Text(_isDarkMode ? 'Switch to Light Theme' : 'Switch to Dark Theme'),
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
