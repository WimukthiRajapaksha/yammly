import 'package:flutter/material.dart';
// import 'package:yummly/view/screen/homeScreen.dart';
import 'package:yummly/view/screen/mainScreen.dart';
// import 'package:yummly/view/screen/thermo/firstScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yummly',
      theme: ThemeData(
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          color: Colors.white,
        ),
      ),
      home: MainScreen(),
      routes: {
        MainScreen.routeName: (context) => MainScreen(),
      },
    );
  }
}
