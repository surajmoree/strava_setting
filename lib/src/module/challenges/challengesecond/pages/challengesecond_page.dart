

import 'dart:ui';

import 'package:flutter/material.dart';
class ChallengeSecondPage extends StatefulWidget {
  const ChallengeSecondPage({super.key});

  @override
  State<ChallengeSecondPage> createState() => _ChallengeSecondPageState();
}

class _ChallengeSecondPageState extends State<ChallengeSecondPage> {
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
                //color: Colors.amber,
                child: Image.asset("assets/images/speedomaim.webp",fit: BoxFit.cover,),
              ),Positioned(left:50,right:50,top:140,child:Image.asset("assets/images/speedo.png",height:100,width:100,))
            ]),
          ),
          Padding(
            padding: const EdgeInsets.only(top:20.0),
            child: Card(
              child: Container(
                child: Column(
                  children: [
                    Text("SPEEDO: CALL YOURSELF A",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,  decoration: TextDecoration.none),),
                 Padding(
                   padding: const EdgeInsets.only(top:4.0),
                   child: Text("SWIMMER",style: TextStyle(fontSize:20,fontWeight: FontWeight.w600,  decoration: TextDecoration.none),),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:5.0),
                   child: Column(
                     children: [
                       Text("Spend 120 minutes in the water for a shot at winning",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                  // RichText(text:TextSpan(children: [TextSpan(text:"NITRO",style: TextStyle(fontSize:10)),TextSpan(text:"TM",style:TextStyle(fontFeatures:[ FontFeature.superscripts()]))]))
                    Padding(
                      padding: const EdgeInsets.only(top:4.0),
                      child: Text("300/280/240 of Speedo !",style: TextStyle(color: Colors.grey.shade700,fontSize: 12),),
                    )
                     ],
                   ),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(top:13.0),
                   child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(340,15),backgroundColor:Color.fromARGB(255, 247, 23, 2), ), onPressed: (){}, child:Text("Join Challenge",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w700),)),
                 ),Padding(
                     padding: const EdgeInsets.fromLTRB(10,10,0,0),
                     child: Container(
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.calendar_today,color: Colors.grey.shade700,),
                            Padding(
                              padding: const EdgeInsets.only(left:14.0),
                              child: Text("Feb 12, 2024 to Mar 18, 2024 -- 32 days left"),
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
                                  Text("120 minutes in the water",style: TextStyle(fontSize:14),),
                                  Padding(
                                    padding: const EdgeInsets.only(top:4.0),
                                    child: Text("Qualifying Activities:Swim",style: TextStyle(fontSize: 10,fontWeight: FontWeight.w300),),
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
                                            child: Text("Complete challenge andget 20% off at\nSpeedo.com plus a chance at winning \n300/280/240 of Speedo",style: TextStyle(fontSize:14),),
                                          ),
                                         
                                        ],
                                      ),
                                    )
                         ],
                       ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15,9,165,0),
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