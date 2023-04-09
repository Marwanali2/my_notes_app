import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      backgroundColor: Colors.red,
      radius: 40,
    );
  }
}

class ColorsListView extends StatelessWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40*2,  // لان السيركل نصف قطرها ب 40 و بالتالي هعمل ارتفاع الليست ضعف نصف القطر
      child: ListView.builder(
        itemBuilder: (context, index) {
          return const ColorItem();
        },
        itemCount: 10,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}