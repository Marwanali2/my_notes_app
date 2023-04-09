import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  CustomIcon({required this.icon, Key? key, this.onPressed}) : super(key: key);
  IconData? icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white.withOpacity(0.05),
      ),
      child: Center(
        child: IconButton(
          icon: Icon(
            icon,
            size: 33,
          ),
          onPressed: onPressed,
        ),
      ),
    );
  }
}
