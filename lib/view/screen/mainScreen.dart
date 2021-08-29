import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';
import 'package:yummly/model/testing.dart';
import 'package:yummly/view/screen/myConnectedKitchenScreen.dart';
import 'package:yummly/view/screen/profileScreen.dart';
import 'package:yummly/view/screen/shappingPantryScreen.dart';
import 'package:yummly/view/widget/explore.dart';
import 'package:yummly/view/widget/justForYou.dart';
import 'package:yummly/view/widget/pro.dart';

class MainScreen extends StatefulWidget {
  static const routeName = "/mainScreen";

  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int appBarItem = 0;
  int navBarItem = 3;

  @override
  void initState() {
    super.initState();
  }

  void onNavbarTap(int index) {
    print(index);
    setState(() {
      this.appBarItem = 0;
      this.navBarItem = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    ScreenConst(context);
    return Scaffold(
      appBar: customAppBar(),
      body: Container(
        padding: EdgeInsets.only(top: 8, left: 8, right: 8),
        alignment: Alignment.center,
        child: mainBodyContainer(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: this.onNavbarTap,
        currentIndex: this.navBarItem,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.grey,
        elevation: 14,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search_outlined,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
              ),
              title: SizedBox.shrink()),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.list_outlined,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.radio_outlined,
              ),
              title: SizedBox.shrink()),
        ],
      ),
    );
  }

  AppBar? customAppBar() {
    switch (this.navBarItem) {
      case 2:
        return AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.settings, color: Colors.black),
            )
          ],
        );
      case 3:
        return null;
      case 4:
        return AppBar(
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.add,
                color: Colors.black,
              ),
            ),
          ],
        );
      default:
        return AppBar(
          backwardsCompatibility: false,
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                "assets/images/logo-white-bg.png",
                width: 100,
                fit: BoxFit.fill,
              )
            ],
          ),
          actions: [
            AppbarTextItem(
              text: "just for you",
              onTap: () {
                setState(() {
                  this.appBarItem = 0;
                });
              },
              show: (this.appBarItem == 0) ? true : false,
            ),
            SizedBox(
              width: 2,
            ),
            AppbarTextItem(
              text: "Explore",
              onTap: () {
                setState(() {
                  this.appBarItem = 1;
                });
              },
              show: (this.appBarItem == 1) ? true : false,
            ),
            SizedBox(
              width: 2,
            ),
            AppbarTextItem(
              text: "pro",
              onTap: () {
                setState(() {
                  this.appBarItem = 2;
                });
              },
              show: (this.appBarItem == 2) ? true : false,
            ),
          ],
        );
    }
  }

  Widget mainBodyContainer() {
    print("${this.appBarItem}-----");
    switch (this.navBarItem) {
      case 2:
        return ProfileScreen();
      case 3:
        return ShoppingPantryScreen();
      case 4:
        return MyConnectedKitchenScreen();
      default:
        if (this.appBarItem == 0) {
          return JustForYou();
        } else if (this.appBarItem == 1) {
          return Explore();
        } else {
          return Pro();
        }
    }
  }
}

class CardItem extends StatelessWidget {
  final FoodItem item;
  final int index;
  const CardItem({
    Key? key,
    required this.index,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            padding: EdgeInsets.all(4),
            width: double.infinity,
            height: ScreenConst.widthRatio(90),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/images/jfy-${((index - 1) % 5) + 1}.jpg"),
                fit: BoxFit.cover,
              ),
              // color: Colors.red,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                    color: Colors.black26, blurRadius: 2, offset: Offset(1, 2))
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            // color: Colors.grey.withAlpha(40),
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(8),
                  bottomRight: Radius.circular(8)),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.grey.shade600.withAlpha(100),
                  Colors.grey.shade800.withAlpha(200),
                ],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      this.item.title,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      this.item.subTitle,
                      style: TextStyle(color: Colors.white54, fontSize: 12),
                    )
                  ],
                ),
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 13),
                      child: ClipOval(
                        child: Image.asset(
                          "assets/images/red-logo.jpg",
                          width: 40,
                          height: 40,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      // color: Colors.white,
                      width: 25, height: 25,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                          ),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: Text(
                        this.item.rating,
                        style: TextStyle(color: Colors.black54, fontSize: 10),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            left: 0,
            child: Container(
              width: 120,
              height: 20,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 10),
              child: Text(
                "data",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              // color: Colors.white,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assets/images/ribbon-dark.png",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class AppbarTextItem extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final bool show;
  const AppbarTextItem(
      {Key? key, required this.text, required this.onTap, this.show = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.onTap,
      child: Container(
        width: 75,
        height: double.infinity,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: double.infinity,
              alignment: Alignment.center,
              child: Text(this.text.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.w600,
                    color: (this.show) ? Colors.black : Colors.black45,
                  )),
            ),
            if (this.show)
              Positioned(
                bottom: 0,
                left: 0,
                child: Container(
                  width: 75,
                  height: 2,
                  color: Colors.grey,
                ),
              )
          ],
        ),
      ),
    );
  }
}
