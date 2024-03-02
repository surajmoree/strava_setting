

import 'dart:ui';

import 'package:flutter/material.dart';
class BrookChallenge extends StatefulWidget {
  const BrookChallenge({super.key});

  @override
  State<BrookChallenge> createState() => _BrookChallengeState();
}

class _BrookChallengeState extends State<BrookChallenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Color.fromARGB(255, 247, 23, 2),
        title: Text("Challenge")),
      body: Column(
        children: [
          Container(height:240,
            child: Stack(
              children: [
               Container(
                height:190,width:600,
              //  color: Colors.amber,
                child: Image.asset("assets/images/runner.jpg",fit: BoxFit.cover,),
              ),Positioned(left:50,right:50,top:140,child:Image.asset("assets/images/5krmv.png",height:100,width:100,))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Card(elevation:1,
              child: Container(
                child: Column(
                  children: [
                    Text("February 5K x Brooks Challenge",style: TextStyle(fontSize:20,fontWeight: FontWeight.w700,  decoration: TextDecoration.none),),
                 
                 Padding(
                   padding: const EdgeInsets.only(top:5.0),
                   child: Column(
                     children: [
                       Text("From first attempts to PRs, chase your best 5k run",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                  // RichText(text:TextSpan(children: [TextSpan(text:"NITRO",style: TextStyle(fontSize:10)),TextSpan(text:"TM",style:TextStyle(fontFeatures:[ FontFeature.superscripts()]))]))
                    Padding(
                      padding: const EdgeInsets.only(top:4.0),
                      child: Text("Brooks.",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                    )
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:13.0),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(340,15),backgroundColor:Color.fromARGB(255, 247, 23, 2), ), onPressed: (){}, child:Text("Join Challenge",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),)),
                 )
                 ,
                 Padding(
                   padding: const EdgeInsets.fromLTRB(10,10,0,0),
                   child: Container(
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.calendar_today,color: Colors.grey.shade700,),
                          Padding(
                            padding: const EdgeInsets.only(left:14.0),
                            child: Text("Feb 1, 2024 to Feb 29, 2024 -- 14 days left"),
                          )
                        ],
                      ),
                    ),
                   ),
                 ),
                      Padding(
                   padding: const EdgeInsets.fromLTRB(4,6,0,0),
                   child: Container(
                    child: Container(
                      child: Row(
                        children: [
                        Image.asset("assets/images/shoes.png",height:40,width:40,),
                          Padding(
                            padding: const EdgeInsets.only(left:5.0),
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("RComplete a 5 km (3.1 mi) run.",style: TextStyle(fontSize:14),),
                                Padding(
                                  padding: const EdgeInsets.only(top:4.0),
                                  child: Text("Qualifying Activities: Hike, Run, VirtualRun, Walk, Wheelchair",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
                                )
                              ],
                            ),
                          ),
                          
                        ],
                      ),
                    ),
                   ),
                 ),Column(
                   children: [
                     Row(
                       children: [
                         Padding(
                           padding: const EdgeInsets.only(left:4.0),
                           child: Container(
                                      child: Image.asset("assets/images/yellowcup.png",height: 40,width:40),
                                    ),
                         ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(5.0,15,0,0),
                                    child: Column(
                                      children: [
                                        Container(
                                          child: Text("Earn a digital finisher's badge for your Trophy\nCase",style: TextStyle(fontSize:14),),
                                        ),
                                       
                                      ],
                                    ),
                                  )
                       ],
                     ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15,13,165,0),
                        child: TextButton(onPressed: (){}, child:Text("Details and Eligibility",style: TextStyle(fontSize:12,color: Colors.grey.shade800),)),
                      )
                   ],
                 )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      
    )  ;  

  }
}