import 'package:fluffy_challenge_week_3/constants/colors.dart';
import 'package:fluffy_challenge_week_3/widgets/beveled_container.dart';
import 'package:fluffy_challenge_week_3/widgets/logo_card.dart';
import 'package:fluffy_challenge_week_3/widgets/percentage_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/colored_box.dart';

class MatchView extends StatefulWidget {
   MatchView({super.key,
  required this.backgroundColor
  });
  Color backgroundColor;

  @override
  State<MatchView> createState() => _MatchViewState();
}

class _MatchViewState extends State<MatchView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: widget.backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: widget.backgroundColor,
          leading: CircleAvatar(
            backgroundColor: AppColor().black.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.all(6.0),
              child: Image(image: AssetImage('assets/images/ball.png')),
            )),
          title: Center(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height:7,
                    width: 7,
                    decoration: BoxDecoration(
                      color: AppColor().black,
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
              ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: AppColor().black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
                ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                    height: 5,
                    width: 5,
                    decoration: BoxDecoration(
                      color: AppColor().black.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(10)
                    ),
                  ),
              ),
            ],
          )),
          actions: [
            IconButton(onPressed: (){
              Navigator.pop(context);
            }, icon: Icon(CupertinoIcons.chevron_down))
          ],
        ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
       // color: backgroundColor,
       child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: RichText(
              text:  TextSpan(
                text: 'THE BEST\nFOOTBALL\n',
                style: TextStyle(
                  color: AppColor().black,
                  fontSize: 94,
                  fontFamily: 'AldotheApache',
                ),
                children: [
                  TextSpan(
                    text: 'MATCH',
                    style: TextStyle(
                      color: AppColor().white,
                      fontSize: 94,
                    )
                  )
                ]
              ),
            
              ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8.0,
              right: 8.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'PAST GAMES',
                  style: TextStyle(
                    color: AppColor().black.withOpacity(0.3),
                    fontSize: 25,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width*0.54,
                  alignment: Alignment.topLeft,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.arrow_right,
                      color: AppColor().black,
                      size: 40,
                      ),
                       Column(
                        crossAxisAlignment: CrossAxisAlignment.start ,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text('MNCH',
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColor().black
                          ),),
                       
                          Row(
                            children: [
                              Coloredbox(boxColor: AppColor().black),
                              Coloredbox(boxColor: AppColor().black.withOpacity(0.1)),
                              Coloredbox(boxColor: AppColor().black),
                              Coloredbox(boxColor: AppColor().black.withOpacity(0.1)),
                              Coloredbox(boxColor: AppColor().black),
                            ],
                           ),  
                          const  SizedBox( height: 10,),
                          Text('CHE',
                          style: TextStyle(
                            fontSize: 25,
                            color: AppColor().black.withOpacity(0.3)
                          ),),
                       
                          Row(
                            children: [
                              Coloredbox(boxColor: AppColor().black.withOpacity(0.1)),
                              Coloredbox(boxColor: AppColor().black),
                              Coloredbox(boxColor: AppColor().black.withOpacity(0.1)),
                              Coloredbox(boxColor: AppColor().black),
                              Coloredbox(boxColor: AppColor().black.withOpacity(0.1)),
                            ],
                           ), 
                       
                        ],)
                    ],
                  ),
                 
                )
              ],
            ),
          ),
         Stack(
          children: [
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
             // color: Colors.blueAccent,
            ),
            Positioned(
              bottom: 0,
              left: 9,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(50, (index) {
                    double myHeight = 50;
                    if(index> 30){
                      setState(() {
                        myHeight = 40;
                      });
                    }
                      return Expanded(
                    child: Container(
                      height: myHeight,
                      child: VerticalDivider(color: AppColor().black.withOpacity(0.1) , thickness: 2,)),
                  );
                  } )
                  
                ),
              )),
            Positioned(
              bottom: 0,
              left: 6.0,
            child:  Container(
               height: 65,
               width: MediaQuery.of(context).size.width*0.40,
              child: Material(
              color: AppColor().black,
              clipBehavior: Clip.antiAlias,
              shape: const BeveledRectangleBorder(
                side: BorderSide(
                  color: Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
              ),),
                      
              ),
            )
            ),
            Positioned(
              bottom: 0,
              left: 6.0,
            child:  Container(
               height: 50,
               width: MediaQuery.of(context).size.width*0.65,
              child: Material(
              color: AppColor().black.withOpacity(0.4),
              clipBehavior: Clip.antiAlias,
              shape: const BeveledRectangleBorder(
                side: BorderSide(
                  color: Colors.transparent,
                  width: 2,
                ),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(6),
                  bottomLeft: Radius.circular(6),
              ),),
                      
              ),
            )
            )
            // Positioned(
            //   left: 9,
            //   bottom: 0,
            //   child: BeveledContainer(
            //   containerColor: AppColor().black,
            //   iswidthDefined: false,
            //   isheightDefined: false,
            //   height: 75,
            //   width: MediaQuery.of(context).size.width*0.45,
            //   child: Container())),
            //   Positioned(
            //   left: 9,
            //   bottom: 0,
            //   child: BeveledContainer(
            //   containerColor: AppColor().black.withOpacity(0.4),
            //   iswidthDefined: false,
            //   isheightDefined: false,
            //   height: 65,
            //   width: MediaQuery.of(context).size.width*0.65,
            //   child: Container())),
          ],
         ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PercentageCard(value: '31%', text: 'MNCH'),
              PercentageCard(value: '22%', text: 'DRAW'),
              PercentageCard(value: '47%', text: 'CHE'),
            ],
          ),
      
          Stack(
        children: [
        Container(
         height: MediaQuery.of(context).size.height*0.31,
          width: MediaQuery.of(context).size.width,
         // color: Colors.white,
        ),
        Positioned(
          bottom: 0,
         child: Container(
          alignment: Alignment.bottomCenter,
          height: MediaQuery.of(context).size.height*0.16,
          width: MediaQuery.of(context).size.width,
          color: AppColor().orange,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Text('CHOOSE THE WiNNER',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: AppColor().black
            ),
            ),
          ),
       ),
       ),
       Positioned(
        top: 5,
        left: 9,
        child: BeveledContainer(
          isheightDefined: false,
          iswidthDefined: false,
          width: MediaQuery.of(context).size.width*0.97,
          height: MediaQuery.of(context).size.height*0.23,
        containerColor: AppColor().white,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image(
                    height: 35,
                    width: 35,
                    image: AssetImage('assets/images/premier_league.png')),
                ),
                Container(
                  alignment: Alignment.topLeft,
                  width: MediaQuery.of(context).size.width*0.53,
                  child: Text('08 SEP',
                  style: TextStyle(
                    fontSize: 20,
                    color: AppColor().fade
                  ),),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
                right: 8.0,
                bottom: 7.0
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LogoCard(child: Image(image: AssetImage('assets/images/man_u.png'))),
                  RichText(text: TextSpan(
                    text: '09',
                    style: TextStyle(
                      fontFamily: 'AldotheApache',
                      fontSize: 72,
                      color: AppColor().black
                    ),
                    children: [
                      TextSpan(text: ':30',
                         style: TextStyle(
                      //fontFamily: 'AldotheApache',
                      fontSize: 72,
                      color: AppColor().fade
                      ))
                    ]
                  )),
                  LogoCard(child: Image(image: AssetImage('assets/images/chelsea.png'))),
                ],
              ),
            ),
            Container(
              height: 1,
              width: MediaQuery.of(context).size.width,
              color: AppColor().fade.withOpacity(0.4),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(
                  right: 8.0,
                  bottom: 8.0,
                  left: 8.0),

                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                              text: TextSpan(
                              text: 'MANCHESTER \n',
                              style: TextStyle(
                              fontFamily: 'AldotheApache',
                              fontSize: 24,
                              color: AppColor().black
                              ),
                              children: [
                               TextSpan(
                                text: 'UNiTED',
                                style: TextStyle(
                                fontSize: 24,
                                color: AppColor().fade
                              
                                ),
                        
                                )
                              ]
                            ),
                            
                            ),
                    Text('PREMiER LEAGUE',
                    style: TextStyle(
                      color: AppColor().fade,
                      fontSize: 18
                    ),),
                     RichText(
                      text: TextSpan(
                      text: 'F.C \n',
                      style: TextStyle(
                      fontFamily: 'AldotheApache',
                      fontSize: 24,
                      color: AppColor().fade
                      ),
                      children: [
                        TextSpan(
                        text: 'CHELSEA',
                        style: TextStyle(
                        fontSize: 24,
                        color: AppColor().black
                      
                        ),
                
                        )
                      ]
                    ),
                    
                    ),
                
                  ],
                ),
              ),
            )

          ],

        )))
        ],
      ),
        ],
       ),
      ),
    );
  }
}