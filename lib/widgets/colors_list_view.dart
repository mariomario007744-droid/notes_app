import 'package:flutter/material.dart';
import 'package:note_app/widgets/color_item.dart';

class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
  List<Color> colors = [
  Color(0xff3366CC),
  Color(0xff66BB6A),
  Color(0xffEF5350),
  Color(0xffFFA726),
  Color(0xff9C27B0),
  Color(0xff29B6F6),
  Color(0xff5C6BC0),
  Color(0xff26A69A),
  Color(0xffD4E157),

  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 64,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              currentIndex = index;
              setState(() {});
            },
            child: ColorItem(isActive: currentIndex == index,color: colors[index],),
          );
        },
      ),
    );
  }
}
