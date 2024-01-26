import 'package:flutter/material.dart';

class LogoCard extends StatelessWidget {
   LogoCard({super.key,
   required this.child
   });
  Widget child;

  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Material(
                     color: Colors.transparent,
                              clipBehavior: Clip.antiAlias,
                              shape: const BeveledRectangleBorder(
                      side: BorderSide(
                        color: Colors.black,
                        width: 2,
                        style:BorderStyle.solid   
                      ),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(15),
                        topLeft: Radius.circular(5),
                        bottomLeft: Radius.circular(5),
                        bottomRight: Radius.circular(5)
                    ),),
                    child: Container(
                      height: 55,
                      width: 55,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: child,
                      ))
                    ),
                  );
  }
}