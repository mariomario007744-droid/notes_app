import 'package:flutter/material.dart';
import 'package:note_app/const.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom({required this.onTap,this.isLoading=false});
  final bool isLoading;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        width: MediaQuery.of(context).size.width,
        height: 55,
        child: Center(
          child:isLoading?CircularProgressIndicator() :  Text(
            "Add",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
