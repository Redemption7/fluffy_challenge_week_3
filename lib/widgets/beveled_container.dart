import 'package:flutter/material.dart';

class BeveledContainer extends StatelessWidget {
  BeveledContainer({super.key,
  required this.child,
  this.containerColor,
  this.height,
  this.width,
  this.isheightDefined = true,
  this.iswidthDefined = true,


  });
  bool isheightDefined = true;
  bool iswidthDefined = true;
  double? height;
  double? width;
  Widget child;
  Color? containerColor;

  @override
  Widget build(BuildContext context) {
    return Container(
            width: iswidthDefined? MediaQuery.of(context).size.width*0.96 : width, // Adjust the width as needed
            height: isheightDefined? MediaQuery.of(context).size.height*0.20 : height, // Adjust the height as needed
           decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: containerColor!.withOpacity(0.4)
           ),
          
            // Stack is used to position widgets on top of each other
            child:  Material(
            color: containerColor,
            clipBehavior: Clip.antiAlias,
            shape: const BeveledRectangleBorder(
              side: BorderSide(
                color: Colors.transparent,
                width: 2,
              ),
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(33),
                topLeft: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)
            ),),
            child: child
            )
         );
  }
}