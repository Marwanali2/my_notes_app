import 'package:flutter/material.dart';

import 'custom_search_icon_button.dart';
class CustomAppBar extends StatelessWidget {
   CustomAppBar({required this.text,required this.icon,Key? key}) : super(key: key);
String?text;
IconData?icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$text',style: TextStyle(fontSize: 28),),
        Spacer(),
        CustomIcon(icon: icon),
      ],
    );
  }
}


