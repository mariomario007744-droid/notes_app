import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  final bool isActive;
  final Color color;
  ColorItem({required this.isActive,required this.color});
  @override
  Widget build(BuildContext context) {
    return isActive
        ? Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: CircleAvatar(
              radius: 32,
              backgroundColor: Colors.white,
              child:  CircleAvatar(
                radius: 28,
                backgroundColor: color,
              ),
            ),
          )
        : Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child:  CircleAvatar(
              radius: 32,
              backgroundColor: color,
            ),
          );
  }
}
