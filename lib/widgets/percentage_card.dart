import 'package:fluffy_challenge_week_3/constants/colors.dart';
import 'package:flutter/material.dart';

class PercentageCard extends StatelessWidget {
   PercentageCard({super.key,
  required this.text,
  required this.value
  });
  String text;
  String value;


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        children: [
          RichText(text: TextSpan(
            children: [
              TextSpan(
                text: '$value\n',
                style: TextStyle(
                  fontFamily: 'AldotheApache',
                  fontSize: 30,
                  color: AppColor().black
                )
              ),
              TextSpan(
                text: text,
                style: TextStyle(
                  fontSize: 17,
                  color: AppColor().black.withOpacity(0.3)
                )
              )
            ]
          ))
        ],
      ),
    );
  }
}