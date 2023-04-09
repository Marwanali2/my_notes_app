import 'package:flutter/material.dart';

import 'custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  CustomAppBar({required this.text, required this.icon, Key? key, this.onPressed})
      : super(key: key);
  String? text;
  IconData? icon;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '$text',
          style: const TextStyle(fontSize: 28),
        ),
        const Spacer(),
        CustomIcon(icon: icon,onPressed: onPressed),
      ],
    );
  }
}
