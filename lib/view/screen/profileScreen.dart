import 'package:flutter/material.dart';
import 'package:yummly/const/screenConst.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ScreenConst(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage("assets/images/profile_chef.png"),
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 20),
            alignment: Alignment.center,
            child: Text(
              "Create Your Profile",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 22,
              ),
            )),
        Container(
          margin: EdgeInsets.symmetric(vertical: 13),
          width: ScreenConst.widthRatio(75),
          alignment: Alignment.center,
          child: Text(
            "Keep track of your kitchen, optimize your cooking and get personalized recipes based on your health and taste preferences",
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 2,
              color: Colors.grey[700],
              fontSize: 15,
            ),
          ),
        ),
        Container(
          width: ScreenConst.widthRatio(60),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileConnectButton(
                "Connect with Facebook",
                Colors.blue.shade900,
                Colors.white,
                Icons.facebook,
                () {},
              ),
              profileConnectButton(
                "Connect with Google",
                Colors.white,
                Colors.black,
                Icons.report_gmailerrorred,
                () {},
              ),
              profileConnectButton(
                "Connect with Apple",
                Colors.black,
                Colors.white,
                Icons.app_blocking,
                () {},
              ),
              profileConnectButton(
                "Connect with Email",
                Colors.teal.shade700,
                Colors.white,
                Icons.email,
                () {},
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Text(
            "You agree to our\nTems of Service and Privacy Policy",
            style: TextStyle(),
            textAlign: TextAlign.center,
          ),
        )
        // Connect with Google
        // Connect with Apple
        // Connect with Email
        // You agree to our
        // Tems of Service and Privacy Policy
      ],
    );
  }

  Widget profileConnectButton(String title, Color bgColor, Color txtColor,
      IconData icon, VoidCallback onTap) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: onTap,
          child: Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(icon),
              SizedBox(
                width: 8,
              ),
              Text(title)
            ],
          ),
          style: ElevatedButton.styleFrom(
            primary: bgColor,
            onPrimary: txtColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // side: BorderSide(
            //   width: 1,
            //   style: BorderStyle.solid,
            // ),
            shadowColor: Colors.black,
            textStyle: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: 2,
        )
      ],
    );
  }
}
