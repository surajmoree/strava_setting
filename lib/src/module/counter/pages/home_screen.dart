import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/expect.dart';

import '../../details/detail.dart';
import '../../module.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String flowerImage =
      'https://images.unsplash.com/photo-1515041219749-89347f83291a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHw%3D&w=1000&q=80';
  // String flowerImage = '';
  String StaticImagePath =
      "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  //TO DO: Pass it from local referncd area Or Main Action component of the App
  List<Widget> getAction(BuildContext context) {
    return [
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
            Navigator.pushNamed(context,'/message');
            },
            child: const Icon(
              Icons.message_outlined,
              size: 26.0,
            ),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context,'/search');
            },
            child: const Icon(Icons.search_outlined),
          )),
          Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.notifications_outlined),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
 
    final textTheme = Theme.of(context).textTheme;
    return MainLayout(
      
        drawer: const AppMenu(),
        bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body: SingleChildScrollView(
          
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,0,0),
                      child: CircleAvatar(radius:22,backgroundColor: Colors.grey,child: Icon(Icons.person_2,color: Colors.grey.shade800,),),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text("${namec.value.text} ${lastnamec.value.text}",style: TextStyle(fontWeight: FontWeight.bold),),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left:00),
                                  child: Icon(Icons.directions_walk_outlined,color: Colors.grey.shade700,size:17,),
                                ),
                               const Text("December 9,2023 at 12:04PM,Nashik,Maharashtra",style: TextStyle(fontSize: 12),)
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,25,0,0),
                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      //color:Colors.green,
              child:const Text("Lunch Run",style: TextStyle(fontWeight: FontWeight.bold,fontSize:16),),
                    ),
                    Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0,10,50,0),
                            child: Row(
                              children: [
                                Container(
                                  height: 50,width:75,
                              
                                 // color: Colors.amberAccent,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const[
                                     Text("Distance",style: TextStyle(fontSize: 14),),
                                      Padding(
                                        padding: EdgeInsets.only(top:2.0),
                                        child: Text("0.06 km",style: TextStyle(fontSize: 19),),
                                      )
                                    ],
                                  ),
                                ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:30.0),
                                    child: Container(
                                    height: 50,width:75,
                                                                
                                  //  color: Colors.amberAccent,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children:const [
                                        Text("Pace",style: TextStyle(fontSize: 14),),
                                        Padding(
                                          padding:  EdgeInsets.only(top:2.0),
                                          child: Text("9:03/km",style: TextStyle(fontSize: 19),),
                                        )
                                      ],
                                    ),
                                                                  ),
                                  ),
                                 Padding(
                                   padding: const EdgeInsets.only(left:30.0),
                                   child: Container(
                                    height: 50,width:70,
                                                               
                                    //color: Colors.amberAccent,
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children:const [
                                        Text("Time",style: TextStyle(fontSize: 14),),
                                        Padding(
                                          padding:  EdgeInsets.only(top:2.0),
                                          child: Text("35s",style: TextStyle(fontSize: 19),),
                                        )
                                      ],
                                    ),
                                                                 ),
                                 ),
                              ],
                            )
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:2.0),
                          child: Container(
                            child: Row(
                              children: [
                                Image.asset("assets/images/thumbrmv.png",height: 25,width:25,),
                                Padding(
                                  padding: const EdgeInsets.only(left:10.0),
                                  child: Row(
                                    children: [
                                      Container(
                                        //color: Colors.amber,
                                        child: Text("Nicely done! keep moving by joining a\nchallenge",style: TextStyle(color: Colors.grey.shade700,fontSize:13),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:5.0),
                                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 228, 33, 16), fixedSize: Size(80,7,)), onPressed: (){}, child:Text("See More",style: TextStyle(fontSize: 11),)),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top:10.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width:320,height: 260,
                               child: Image.asset("assets/images/newmap.jpg",fit: BoxFit.cover,),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0,11,20,15),
                          child: SizedBox(height:60,width:400,
                            child: Card(
                              child: Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(40,0,95,0),
                                    child: Icon(Icons.thumb_up_outlined,color: Colors.grey.shade700,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(right:80),
                                    child: Icon(Icons.message_outlined,color: Colors.grey.shade700,),
                                  ),
                                  Icon(Icons.share_outlined,color: Colors.grey.shade700),
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(left:5.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           const Text("Suggested Challenges",style: TextStyle(fontWeight: FontWeight.w800),),
                      const Padding(
                         padding:  EdgeInsets.only(top:8),
                         child: Text("Make accountability a little easier ,more fun and earn rewards!",style: TextStyle(fontSize: 12),),
                       )

                      , Padding(
                        padding: const EdgeInsets.only(top:10.0),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              InkWell(onTap: (){
                                Navigator.pushNamed(context,'/challengefirst');
                              },
                                child: Container(
                                  height: 180,width:320,
                                  child:Card(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12,12,0,0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("More than 141000 atheletes have already joined",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                     Padding(
                                       padding: const EdgeInsets.fromLTRB(0,0,12,0),
                                       child: Divider(thickness: 0.3,color: Colors.grey.shade400,),
                              
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.fromLTRB(0,10,15,0),
                                           child: Container(
                                            child: Image.asset("assets/images/pumarmv.png",height:47,width:47,),
                                           ),
                                         ),
                                         Container(
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("PUMA Forever. Faster.25k Challenge",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 13),),
                                           const Padding(
                                              padding:  EdgeInsets.only(top:3.0),
                                              child: Text("Complete 25k  over the next five weeks to..",style: TextStyle(fontSize: 12.5),),
                                            )
                                            ],
                                          ),
                                         )
                                       ],
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left:64.0),
                                       child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.grey.shade800),
                                        height:17,width:45,
                                        //color: Colors.grey.shade600,
                                        child:Align(alignment: Alignment.center, child: Text("Reward",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w800),))
                                       ),
                                     ),
                                     ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(290, 20), backgroundColor: Color.fromARGB(255, 228, 33, 16)), onPressed: (){}, child:Text("Join"))
                                      ],
                                    ),
                                  ),
                                   ) ),
                              ),
                                
                               InkWell(onTap: (){
                                Navigator.pushNamed(context,'/challengesecond');
                              },
                                child: Container(
                                  height: 180,width:320,
                                  child:Card(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12,12,0,0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("More than 144000 atheletes have already joined",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                     Padding(
                                       padding: const EdgeInsets.fromLTRB(0,0,12,0),
                                       child: Divider(thickness: 0.3,color: Colors.grey.shade400,),
                              
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.fromLTRB(0,10,15,0),
                                           child: Container(
                                            child: Image.asset("assets/images/speedo.png",height:47,width:47,),
                                           ),
                                         ),
                                         Container(
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("SPEEDO:CALL YOURSELF A SWIMMER",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 13),),
                                           const Padding(
                                              padding: const EdgeInsets.only(top:3.0),
                                              child: Text("Spend 120 minutes in the water for shot...",style: TextStyle(fontSize: 12.5),),
                                            )
                                            ],
                                          ),
                                         )
                                       ],
                                     ),
                                    Padding(
                                       padding: const EdgeInsets.only(left:64.0),
                                       child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.grey.shade800),
                                        height:17,width:45,
                                        //color: Colors.grey.shade600,
                                        child:Align(alignment: Alignment.center, child: Text("Reward",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w500),))
                                       ),
                                     ),
                                     ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(290, 20), backgroundColor: Color.fromARGB(255, 228, 33, 16)), onPressed: (){}, child:Text("Join"))
                                      ],
                                    ),
                                  ),
                                   ) ),
                              ),
                               InkWell(onTap: (){
                                Navigator.pushNamed(context,'/brook');
                              },
                                child: Container(
                                  height: 180,width:320,
                                  child:Card(
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(12,12,0,0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("More than 777000 atheletes have already joined",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                     Padding(
                                       padding: const EdgeInsets.fromLTRB(0,0,12,0),
                                       child: Divider(thickness: 0.3,color: Colors.grey.shade400,),
                              
                                     ),
                                     Row(
                                       children: [
                                         Padding(
                                           padding: const EdgeInsets.fromLTRB(0,10,15,0),
                                           child: Container(
                                            child: Image.asset("assets/images/5krmv.png",height:47,width:47,),
                                           ),
                                         ),
                                         Container(
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("February 5K x Brooks Challenge",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey.shade800,fontSize: 13),),
                                           const Padding(
                                              padding: const EdgeInsets.only(top:3.0),
                                              child: Text("From first attempts to PRs,chase Your be..",style: TextStyle(fontSize: 12.5),),
                                            )
                                            ],
                                          ),
                                         )
                                       ],
                                     ),
                                     Padding(
                                       padding: const EdgeInsets.only(left:64.0),
                                       child: Container(
                                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(3),color: Colors.grey.shade800),
                                        height:17,width:75,
                                        //color: Colors.grey.shade600,
                                        child:const Align(alignment: Alignment.center, child: Text("Digital Trophy",style: TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w800),))
                                       ),
                                     ),
                                     ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(290, 20), backgroundColor: Color.fromARGB(255, 228, 33, 16)), onPressed: (){}, child:Text("Join"))
                                      ],
                                    ),
                                  ),
                                   ) ),
                              ),
                            ],
                          ),
                        ),
                      )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
             ),
        ) // This trailing comma makes auto-formatting nicer for build methods.
        );
  }
}
