import 'package:flutter/material.dart';

class Coloredbox extends StatelessWidget {
   Coloredbox({super.key,
   required this.boxColor
   });
  Color boxColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 15,
        width: 15,
        decoration: BoxDecoration(
          color: boxColor,
          borderRadius: BorderRadius.circular(3)
      
        ),
      ),
    );
  }
}