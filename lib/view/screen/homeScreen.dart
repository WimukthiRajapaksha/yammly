import 'dart:async';
// import 'dart:ffi';
import 'dart:io';
// import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';
import 'package:yummly/view/screen/mainScreen.dart';
import 'package:yummly/view/widget/roundedButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  void onTap() {
    Navigator.of(context).pushNamed(MainScreen.routeName);
  }

  @override
  Widget build(BuildContext context) {
    ScreenConst(context);

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image.asset(
            "assets/images/home.jpg",
            height: ScreenConst.heightRatio(40),
            fit: BoxFit.cover,
          ),
          Container(
            width: ScreenConst.widthRatio(80),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Yummly",
                    style: TextStyle(
                      fontFamily: "Pacifico",
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.red,
                      fontSize: 30,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Welcome to Yummly",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomElevatedButton(
                  text: "I'm a New User",
                  ontap: () => this.onTap(),
                ),
                CustomElevatedButton(
                  text: "I'm Already a User",
                  ontap: () => this.onTap(),
                ),
                CustomElevatedButton(
                  text: "Activate Smart Thermometer",
                  ontap: () => this.onTap(),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(right: 20),
            alignment: Alignment.topRight,
            child: Image.asset(
              "assets/images/home_2.jpg",
              height: 80,
              width: 80,
            ),
          ),
          Spacer(),
          TextButton(
            onPressed: () => this.onTap(),
            child: Text(
              "Skit to try Yummly without personalization",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w600,
                color: Colors.grey[600],
              ),
            ),
          )
        ],
      ),
    );
  }
}
