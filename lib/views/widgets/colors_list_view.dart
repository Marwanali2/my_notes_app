import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../constants.dart';
import '../../cubit/cubits/add_notes_cubit/add_notes_cubit.dart';


class ColorItem extends StatelessWidget {
   const ColorItem({Key? key, required this.isActive, required this.color}) : super(key: key);
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive? CircleAvatar(
      backgroundColor: Colors.white,
      radius: 40,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 36,
      ),
    ):CircleAvatar(
      backgroundColor: color,
      radius: 40,
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({Key? key}) : super(key: key);

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40*2,  // لان السيركل نصف قطرها ب 40 و بالتالي هعمل ارتفاع الليست ضعف نصف القطر
      child: ListView.builder(
        itemBuilder: (context, index) {
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child: GestureDetector(
              onTap: () {
                currentIndex=index;
                BlocProvider.of<AddNoteCubit>(context).color=kColors[index];
                setState(() {

                });
              },
              child: ColorItem(
                isActive: currentIndex==index,
                color: kColors[index],
              ),
            ),
          );
        },
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}