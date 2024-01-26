import 'package:dotted_border/dotted_border.dart';
import 'package:fluffy_challenge_week_3/constants/colors.dart';
import 'package:fluffy_challenge_week_3/widgets/beveled_container.dart';
import 'package:fluffy_challenge_week_3/widgets/logo_card.dart';
import 'package:flutter/material.dart';

class FixtureContainer extends StatefulWidget {
   FixtureContainer({super.key,
   required this.teamAurl,
   required this.teamBurl,
   required this.containerColor,
   this.onTap
   });
  String teamAurl;
  String teamBurl;
  Color containerColor;
  VoidCallback? onTap;

  @override
  State<FixtureContainer> createState() => _FixtureContainerState();
}

class _FixtureContainerState extends State<FixtureContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: BeveledContainer(
        containerColor: widget.containerColor,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: LogoCard(child: Image(
                      height: 30,
                      width: 30,
                      image: AssetImage(widget.teamAurl),),),
                  ),
                  LogoCard(child: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage(widget.teamBurl),),),
                    const SizedBox(width: 10,),
                 RichText(
                    text: TextSpan(
                    text: '08 \n',
                    style: TextStyle(
                    fontFamily: 'AldotheApache',
                    fontSize: 24,
                    color: AppColor().black
                    ),
                    children: [
                     TextSpan(
                      text: 'SEPTEMBER',
                      style: TextStyle(
                      fontSize: 24,
                      color: AppColor().fontColor,
                    
                      ),
              
                      )
                    ]
                  ),
                  
                  ),
                ],
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RichText(
                      text: TextSpan(
                      text: '09',
                      style: TextStyle(
                      fontFamily: 'AldotheApache',
                      fontSize: 30,
                      color: AppColor().black
                      ),
                      children: [
                       TextSpan(
                        text: ':30',
                        style: TextStyle(
                        fontSize: 30,
                        color: AppColor().fontColor,
                      
                        ),
                
                        )
                      ]
                    ),
                    
                    ),
                  RichText(
                      text: TextSpan(
                      text: 'MANCHESTER \n',
                      style: TextStyle(
                      fontFamily: 'AldotheApache',
                      fontSize: 30,
                      color: AppColor().black
                      ),
                      children: [
                       TextSpan(
                        text: 'UNiTED',
                        style: TextStyle(
                        fontSize: 30,
                        color: AppColor().fontColor,
                      
                        ),
                
                        )
                      ]
                    ),
                    
                    ),
                  RichText(
                      text: TextSpan(
                      text: 'FC \n',
                      style: TextStyle(
                      fontFamily: 'AldotheApache',
                      fontSize: 30,
                      color: AppColor().fontColor
                      ),
                      children: [
                       TextSpan(
                        text: 'CHELSEA',
                        style: TextStyle(
                        fontSize: 30,
                        color: AppColor().black
                      
                        ),
                
                        )
                      ]
                    ),
                    
                    ),
                  ],
                ),
              )
              
            ],
          ),
      )
          );
  }
}