import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:test/expect.dart';

class SubscribePage extends StatefulWidget {
  const SubscribePage({super.key});

  @override
  State<SubscribePage> createState() => _SubscribePageState();
}

class _SubscribePageState extends State<SubscribePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(300,60,10,0),
            child: Container(child:InkWell(onTap:(){
              Navigator.pushNamed(context, '/active');
            },child: Container(height: 40,width:40,decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey.shade300),child: Icon(Icons.close,color: Colors.grey.shade500,),))),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40,40,0,0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Text("Try the very\nbest of Strava",style: TextStyle(fontSize:37,fontWeight: FontWeight.w600),),
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.red,size:30,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text("Plan & Discover Routes",style: TextStyle(fontSize:17,color: Colors.grey.shade700),),
                            ),
                          ],
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.red,size:30,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text("Personalize Challenges for you\nand Your friends to Compete",style: TextStyle(fontSize:17,color: Colors.grey.shade700),),
                            ),
                          ],
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.red,size:30,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text("Training Log",style: TextStyle(fontSize:17,color: Colors.grey.shade700),),
                            ),
                          ],
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.red,size:30,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text("Prevent Injury with Relative Effort",style: TextStyle(fontSize:17,color: Colors.grey.shade700),),
                            ),
                          ],
                        ),
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.fromLTRB(0,20,0,0),
                      child: Container(
                        child: Row(
                          children: [
                            Icon(Icons.check,color: Colors.red,size:30,),
                            Padding(
                              padding: const EdgeInsets.only(left:10.0),
                              child: Text("Best-in-Class Heart Rate Data",style: TextStyle(fontSize:17,color: Colors.grey.shade700),),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
                   Padding(
                     padding: const EdgeInsets.only(top:236.0),
                     child: Card(
                                 elevation: 10,
                                 child: Container(
                                   height: 70,
                                   width: 390,
                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.all(Radius.circular(4)),
                                   ),
                                   child: Column(
                                     children: [
                      
                   
                   
                      Container(
                          height:55,
                         
                          child: Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 247, 23, 2) , fixedSize: Size(320,30)),
                                onPressed: () {
                                
                                },
                                child: Text('Subscribe Now')),
                          )),
                   
                                     ],
                                   ),
                                 ),
                               ),
                   ),   
          
        ],
      ),
      
    );
  }
}