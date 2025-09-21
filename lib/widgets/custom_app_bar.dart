import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({required this.titel, required this.icon,this.onPressed});
  final void Function()?  onPressed;
  final String titel;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(titel, style: TextStyle(fontSize: 28)),
        Spacer(flex: 1),
        CustomIcon(icon: icon, onPressed: onPressed),
      ],
    );
  }
}
