import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/splash.jpg",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Center(
        child: Text(
          "Yummly",
          style: TextStyle(
            fontFamily: "Pacifico",
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.none,
            color: Colors.white,
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
