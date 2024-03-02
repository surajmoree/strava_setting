import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

import '../../../app/app_layout/group_layout.dart';
import '../../../components/menu/bottom_menu.dart';

class ChallengePage extends StatefulWidget {
  const ChallengePage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ChallengePage> createState() => _ChallengePageState();
}

class _ChallengePageState extends State<ChallengePage> {
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
              Navigator.pushNamed(context, '/message');
            },
            child: const Icon(Icons.message_outlined),
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
            onTap: () {
              Navigator.pushNamed(context, '/settingPage');
            },
            child: const Icon(Icons.settings_outlined),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    floatingActionButton:
    FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 247, 23, 2),
        onPressed: () {},
        child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return GroupLayout(
      //  drawer: const AppMenu(),
      bootomNavigationBar: const BottomMenu(),
      actions: getAction(context),
      body: SingleChildScrollView(
        child: SizedBox(height:2000,
          child: Column(
            children: [
              Card(
                child: Column(
                  children: [
                    Container(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                          child: Row(
                            children: [
                              Container(
                                //  color: Colors.amber,
                                width: 70, height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.grey.shade400)),
                                child: Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/shoes.png",
                                      height: 35,
                                      width: 35,
                                    ),
                                    Text(
                                      "Run",
                                      style: TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  //  color: Colors.amber,
                                  width: 70, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey.shade400)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/cycle.png",
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        "Ride",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  //  color: Colors.amber,
                                  width: 70, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey.shade400)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(7, 0, 5, 0),
                                        child: Icon(
                                          Icons.waves_outlined,
                                          size: 13,
                                        ),
                                      ),
                                      //Image.asset("assets/images/shoes.png",height:35,width:35,),
                                      Text(
                                        "Swim",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  //  color: Colors.amber,
                                  width: 70, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey.shade400)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/walkshoe.png",
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        "Walk",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  //  color: Colors.amber,
                                  width: 70, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey.shade400)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/hike.png",
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        "Hike",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                  //  color: Colors.amber,
                                  width: 90, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.grey.shade400)),
                                  child: Row(
                                    children: [
                                      Image.asset(
                                        "assets/images/workout.png",
                                        height: 35,
                                        width: 35,
                                      ),
                                      Text(
                                        "Workout",
                                        style: TextStyle(fontSize: 12),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(left: 8),
                                  child: Container(
                                      //  color: Colors.amber,
                                      width: 65,
                                      height: 30,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(4),
                                          border:
                                              Border.all(color: Colors.grey.shade400)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Distance",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                      ))),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                    //  color: Colors.amber,
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: Colors.grey.shade400)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Elapsed Time",
                                          style: TextStyle(fontSize: 12),
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                    //  color: Colors.amber,
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: Colors.grey.shade400)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Elevation Time",
                                          style: TextStyle(fontSize: 12),
                                        ))),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8),
                                child: Container(
                                    //  color: Colors.amber,
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border:
                                            Border.all(color: Colors.grey.shade400)),
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Text(
                                          "Moving Time",
                                          style: TextStyle(fontSize: 12),
                                        ))),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: SingleChildScrollView(
                        child: Container(
                          height: 160,
                          width: 700,
                          child: Image.asset("assets/images/ski.jpg",fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Image.asset(
                                "assets/images/55knew.png",
                                height: 50,
                                width: 45,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'February Nordic Skiing Challenge',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700, fontSize: 16),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10.0),
                                    child: Container(
                                      child: Row(
                                        children: [
                                          //Image.asset("assets/images/skiirmv.png",height: 50,width:50,),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.fromLTRB(
                                                    3, 0, 0, 0),
                                                child: Text(
                                                  "Record a total of 55 km (34.2 mi) of Nordic skiing in ",
                                                  style: TextStyle(fontSize: 11),
                                                ),
                                              ),
                                              Text(" a month.",
                                                  style: TextStyle(fontSize: 11)),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.only(top: 12.0),
                                                child: Text(
                                                  " Feb 1 to Feb 29 ,2024",
                                                  style: TextStyle(fontSize: 12),
                                                ),
                                              )
                                            ],
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
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10,0, 10, 0),
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 228, 33, 16),
                              fixedSize: Size(330, 30)),
                          onPressed: () {},
                          child: Text("Join")),
                    ),
                    
                  ],
                ),
              ),
              Container(height:70,width:600,
                color: Color.fromARGB(255, 236, 231, 231),
             //  color: Colors.amber,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,15,0),
                    child: Container(decoration: ShapeDecoration(color: Colors.grey.shade400,  shape: CircleBorder(
                  
                    )),
                      height: 30,width: 30,
                     // color: Colors.blueGrey,
                      child: Icon(Icons.person,color: Colors.white,size:20,),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Recommended For You",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17),),
                        Padding(
                          padding: const EdgeInsets.only(top:1.0),
                          child: Text("Based on your activities",style: TextStyle(fontWeight: FontWeight.w300,fontSize: 12),),
                        )
                      ],
                    ),
                  )
                ],
              )
               
           ) ,
           Column(
             children: [
               InkWell(onTap: (){
                Navigator.pushNamed(context,'/challengefirst');
               },
                 child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                   child: Container( color:  Color.fromARGB(255, 236, 231, 231),
                    //height: 700,width:360,
                    child: Padding(
                      padding: const EdgeInsets.only(left:12.0),
                      child: Row(
                        children: [
                          Container(height: 300,width:180,
                            child: Card(
                              elevation: 1,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                    child: Image.asset("assets/images/pumarmv.png",height:46,width: 46,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("PUMA Forever.",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Padding(
                                          padding: const EdgeInsets.only(top:2.0),
                                          child: Text("Faster. 25k Challen...",style: TextStyle(fontWeight: FontWeight.w800)),
                                        ),
                                      ],
                                    ),
                                  )
                                  ,
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                         Image.asset("assets/images/cuprmv.png",height: 30,width:30,),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0),
                                    child: Text("Run a total of 25 km in 5\nweeks\n\nFeb 12 to Mar 18,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                    child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container( color: Color.fromARGB(255, 236, 235, 231),
                    //height: 700,width:360,
                    child: Padding(
                      padding: const EdgeInsets.only(right:9.0),
                      child: Row(
                        children: [
                          InkWell(onTap: (){
                            Navigator.pushNamed(context,'/brook');
                          },
                            child: SingleChildScrollView(scrollDirection: Axis.horizontal,
                              child: Container(height: 300,width:180,
                                child: Card(
                                  elevation: 1,
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                        child: Image.asset("assets/images/5krmv.png",height:46,width: 46,),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("February 5K x",style: TextStyle(fontWeight: FontWeight.w800),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:2.0),
                                              child: Text("Brook Challenge",style: TextStyle(fontWeight: FontWeight.w800)),
                                            ),
                                          ],
                                        ),
                                      )
                                      ,
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                        child:
                                            Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                             //Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                          
                                        
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left:15.0),
                                        child: Text("Complete a 5km (3.1 mi)\nrun.\n\nFeb 1 to Mar 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                        child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                   )
                   ],
                           ),
                         ),
                   ),
                 ),
               ),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Container( color:  Color.fromARGB(255, 236, 231, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Row(
                      children: [
                        InkWell(onTap: () {
                          Navigator.pushNamed(context, '/challengesecond');
                        },
                          child: Container(height: 300,width:180,
                            child: Card(
                              elevation: 1,
                              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                    child: Image.asset("assets/images/speedo.png",height:46,width: 46,),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("SPEEDO:CALL",style: TextStyle(fontWeight: FontWeight.w800),),
                                        Padding(
                                          padding: const EdgeInsets.only(top:2.0),
                                          child: Text("YOURSELF A SWIM...",style: TextStyle(fontWeight: FontWeight.w800)),
                                        ),
                                      ],
                                    ),
                                  )
                                  ,
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(15,5,0,0),
                                    child: Row(
                                      children: [
                                       Padding(
                                         padding: const EdgeInsets.fromLTRB(0,10,8,10),
                                         child: Icon(Icons.waves_outlined,size:17,),
                                       ),
                                         Image.asset("assets/images/cuprmv.png",height: 30,width:30,),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left:15.0),
                                    child: Text("120 minutes in water\n\nJan 29 to Feb 18,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(10,45,0,0),
                                    child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container( color: Color.fromARGB(255, 236, 235, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(right:9.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/smrt.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("February Snowsport",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("x Smartwool Challe...",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child:
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       //Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    
                                  
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Complete a 300 minutes of\nskiing,iceskating,\nsnowboarding and/or sno...\n\nFeb 2 to Feb 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,18,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                               )
                               ],
                          ),
                        ),
                               ),
                ),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Container( color:  Color.fromARGB(255, 236, 231, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/400rmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("February",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("400-Minute Challe...",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                      
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Complete 400 minutes of \nactivity in a month - any\nsport counts\n\nFeb 1 to Feb 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,18,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container( color: Color.fromARGB(255, 236, 235, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(right:9.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/5krmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("February 5K x",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("Brook Challenge",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child:
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       //Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    
                                  
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Complete a 5km (3.1 mi)\nrun.\n\nFeb 1 to Mar 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                               )
                               ],
                          ),
                        ),
                               ),
                ),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Container( color:  Color.fromARGB(255, 236, 231, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/pumarmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("PUMA Forever.",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("Faster. 25k Challen...",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Run a total of 25 km in 5\nweeks\n\nFeb 12 to Mar 18,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container( color: Color.fromARGB(255, 236, 235, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(right:9.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/5krmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("February 5K x",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("Brook Challenge",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child:
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       //Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    
                                  
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Complete a 5km (3.1 mi)\nrun.\n\nFeb 1 to Mar 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                               )
                               ],
                          ),
                        ),
                               ),
                ),
                SingleChildScrollView(scrollDirection: Axis.horizontal,
                  child: Container( color:  Color.fromARGB(255, 236, 231, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/pumarmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("PUMA Forever.",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("Faster. 25k Challen...",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child: Row(
                                    children: [
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Run a total of 25 km in 5\nweeks\n\nFeb 12 to Mar 18,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container( color: Color.fromARGB(255, 236, 235, 231),
                  //height: 700,width:360,
                  child: Padding(
                    padding: const EdgeInsets.only(right:9.0),
                    child: Row(
                      children: [
                        Container(height: 300,width:180,
                          child: Card(
                            elevation: 1,
                            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,15,0,0),
                                  child: Image.asset("assets/images/5krmv.png",height:46,width: 46,),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(15,20,0,0),
                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("February 5K x",style: TextStyle(fontWeight: FontWeight.w800),),
                                      Padding(
                                        padding: const EdgeInsets.only(top:2.0),
                                        child: Text("Brook Challenge",style: TextStyle(fontWeight: FontWeight.w800)),
                                      ),
                                    ],
                                  ),
                                )
                                ,
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(8,5,0,0),
                                  child:
                                      Image.asset("assets/images/shoes.png",height: 39,width:39,),
                                       //Image.asset("assets/images/cuprmv.png",height: 20,width:20,),
                                    
                                  
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left:15.0),
                                  child: Text("Complete a 5km (3.1 mi)\nrun.\n\nFeb 1 to Mar 29,2024",style: TextStyle(fontSize:11,fontWeight: FontWeight.w300),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(10,30,0,0),
                                  child: ElevatedButton(style: ElevatedButton.styleFrom(fixedSize: Size(140, 20),backgroundColor:Color.fromARGB(255, 228, 33, 16), ), onPressed: (){}, child:Text("Join")),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                               )
                               ],
                          ),
                        ),
                               ),
                ),
             ],
           )]))));
  }
}
