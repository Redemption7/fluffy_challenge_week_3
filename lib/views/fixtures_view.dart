import 'package:fluffy_challenge_week_3/widgets/fixtures_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';
import 'match_view.dart';

class FixturesView extends StatelessWidget {
  const FixturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          leading: Image(image: AssetImage('assets/images/premier_league.png')),
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
            IconButton(onPressed: (){}, icon: Icon(CupertinoIcons.chevron_down))
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
           
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                            text: TextSpan(
                            text: 'PREMiER \n',
                            style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'AldotheApache',
                            fontSize: 84,
                            color: AppColor().black
                            ),
                            children: [
                             TextSpan(
                              text: 'LEAGUE',
                              style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 84,
                              color: AppColor().fade,
                            
                              ),
                              
                              )
                            ]
                          ),
                          
                          ),
                ),
                  Stack(
                  children: [
                    Container(
                    height: MediaQuery.of(context).size.height*2,
                    width: MediaQuery.of(context).size.width,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: FixtureContainer(
                           containerColor: AppColor().pink,
                          teamAurl: 'assets/images/man_u.png', teamBurl: 'assets/images/chelsea.png',
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=> MatchView(
                              backgroundColor: AppColor().pink,
                            )));
                          },
                          ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.19,
                        left: 9,
                        child: FixtureContainer(
                          containerColor: AppColor().containerBlue,
                          teamAurl: 'assets/images/man_u.png', teamBurl: 'assets/images/chelsea.png')),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.38,
                        left: 9,
                        child: FixtureContainer(
                          containerColor: AppColor().containerGreen,
                          teamAurl: 'assets/images/man_u.png', teamBurl: 'assets/images/chelsea.png')),
                      Positioned(
                        top: MediaQuery.of(context).size.height*0.57,
                        left: 9,
                        child: FixtureContainer(
                          containerColor: AppColor().containerAmber,
                          teamAurl: 'assets/images/man_u.png', teamBurl: 'assets/images/chelsea.png')),
                      ],
                    ),
                       
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}