import 'package:flutter/material.dart';

class MyConnectedKitchenScreen extends StatelessWidget {
  const MyConnectedKitchenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/kitchen.png",
                width: 150,
                height: 100,
              ),
              Text("You don't have any connected appliances yet"),
              OutlineButton(
                onPressed: () {},
                child: Text("Add Thermometer"),
                textColor: Colors.teal[900],
                color: Colors.teal[200],
              )
            ],
          ),
        ),
        Text("My Connected Kitchen"),
      ],
    );
  }
}
