import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  CustomButton({this.text,this.onPressed,this.isLoading=false});
  String?text;
  VoidCallback?onPressed;
  final bool  isLoading;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.cyanAccent),
          minimumSize: MaterialStateProperty.all(Size(MediaQuery.of(context).size.width,50)),
          shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)))
      ),
      onPressed: onPressed,
      child: isLoading? SizedBox(
        height: 24,
        width: 24,
        child: CircularProgressIndicator(
          color: Colors.purple,

        ),
      ): Text(
        "$text",
        style: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      ),
    );
  }
}
