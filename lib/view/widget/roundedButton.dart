import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback ontap;

  const CustomElevatedButton(
      {Key? key, required this.text, required this.ontap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: this.ontap,
      child: Text(this.text),
      style: ElevatedButton.styleFrom(
        primary: Colors.white,
        onPrimary: Colors.black38,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        side: BorderSide(
            width: 1, color: Colors.black38, style: BorderStyle.solid),
        textStyle: TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
