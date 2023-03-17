import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton({this.text,this.onPressed});
  String?text;
  VoidCallback?onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
          minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width,50)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))
      ),
      onPressed: onPressed,
      child: Text(
        "$text",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }
}
