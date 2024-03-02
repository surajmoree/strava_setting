import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

import '../../../app/app_layout/group_layout.dart';
import '../../../components/menu/bottom_menu.dart';


class ActivePage extends StatefulWidget {
  const ActivePage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ActivePage> createState() => _ActivePageState();
}

class _ActivePageState extends State<ActivePage> {
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
            child: const Icon(Icons.message_outlined),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.search_outlined),
          )),
          Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {
            Navigator.pushNamed(context,'/settingPage');
            },
            child: const Icon(Icons.settings_outlined),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
 floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return GroupLayout(
      //  drawer: const AppMenu(),
        bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Card(elevation: 10,
                child: SingleChildScrollView(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                     child: Padding(
                       padding: const EdgeInsets.all(12.0),
                       child: Text("STRAVA SUBSCRIPTION",style: TextStyle(decoration: TextDecoration.none,fontSize: 10,fontWeight: FontWeight.bold),),
                     ),
                       
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10,15,0,0),
                          child: Text("Try Group\nChallenges",style: TextStyle(fontSize: 40,decoration: TextDecoration.none),),
                        ),
                      ),
                      Container(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12,19,0,0),
                        child: Text("Play just with your friends, Your rules,your way !Try\n3 Group Challenges for free now or subscribe for\nunlimited access",style: TextStyle(fontSize: 15),),
                      ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(17,15,17,0),
                        child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 228, 33, 16), fixedSize: Size(600, 40)), onPressed: (){
                          Navigator.pushNamed(context, '/createchallenge');
                        }, child: Text("Create a Group Challenge",style: TextStyle(fontWeight: FontWeight.w600),)),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(17,15,17,20),
                        child: OutlinedButton(style: OutlinedButton.styleFrom( fixedSize: Size(600, 40),side: BorderSide( color: Colors.red)), onPressed: (){
                          Navigator.pushNamed(context, '/subscribe');
                        }, child: Text("Subscribe Now",style: TextStyle(fontWeight: FontWeight.w600,color: Colors.red,fontSize: 13),)),
                      )
                     
                           
                            
                  
                    ]  
                  )),
              ),
               SingleChildScrollView(
                 child: Column(
                   children: [
                     Container(
                                child: SizedBox(height:160,width: 500,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text("Available Challenges",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.grey.shade700),),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10.0),
                                            child: Row(
                                              children: [
                                                Image.asset("assets/images/elevation.png",height: 60,width: 60,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:12.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:8.0),
                                                        child: Text("February Cycling Elevation",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                      ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:3.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Challenge",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                     Padding(
                                                       padding: const EdgeInsets.only(top:3.0),
                                                       child: Column(
                                                         children: [
                                                           Container(
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.motorcycle_outlined,size: 17,),
                                                                Text(" Climb a total of 7,000 m (22,965 ft) in a...",style: TextStyle(fontSize: 12),)
                                                              ],
                                                            ),
                                                           ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left:8.0),
                                                           child: Container(width:240,  child: Padding(
                                                             padding: const EdgeInsets.only(top:5.0),
                                                             child: Text("Feb 1,2024 to Feb 29,2024",style: TextStyle(fontSize: 11),),
                                                           ),),
                                                         ),
                                                       //  Divider(color: Colors.amber,)
                                                         ],
                                                       ),
                                                     )
                                                    ],
                                                  ),
                                                ),
                                                    ],
                                                  ),
                                                )
                                              
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: SizedBox(height:140,width: 500,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(10.0),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        //  Text("Available Challenges",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.grey.shade700),),
                                          Padding(
                                            padding: const EdgeInsets.only(top:1.0),
                                            child: Row(
                                              children: [
                                                Image.asset("assets/images/speedo.png",height: 60,width: 60,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:12.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:8.0),
                                                        child: Text("SPEEDO:CALL YOURSELF A",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                      ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:3.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("SWIMMER",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                                                     Padding(
                                                       padding: const EdgeInsets.only(top:3.0),
                                                       child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                         children: [
                                                           Container(
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.waves_outlined,size: 17,),
                                                                Text(" Complete  a 100 km(62.1 mi)ride.",style: TextStyle(fontSize: 12),)
                                                              ],
                                                            ),
                                                           ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left:8.0),
                                                           child: Container(width:240,  child: Padding(
                                                             padding: const EdgeInsets.only(top:5.0),
                                                             child: Text("Feb 1,2024 to Feb 29,2024",style: TextStyle(fontSize: 11),),
                                                           ),),
                                                         ),
                                                       //  Divider(color: Colors.amber,)
                                                         ],
                                                       ),
                                                     )
                                                    ],
                                                  ),
                                                ),
                                                    ],
                                                  ),
                                                )
                                              
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                child: SizedBox(height:160,width: 500,
                                  child: Card(
                                    child: Padding(
                                      padding: const EdgeInsets.all(13.0),
                                      child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                        //  Text("Available Challenges",style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.grey.shade700),),
                                          Padding(
                                            padding: const EdgeInsets.only(top:10.0),
                                            child: Row(
                                              children: [
                                                Image.asset("assets/images/100k.png",height: 60,width: 60,),
                                                Padding(
                                                  padding: const EdgeInsets.only(left:12.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(top:8.0),
                                                        child: Text("February Gran Fondo",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                      ),
                                                Padding(
                                                  padding: const EdgeInsets.only(top:3.0),
                                                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text("Challenge",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                                                     Padding(
                                                       padding: const EdgeInsets.only(top:3.0),
                                                       child: Column(
                                                         children: [
                                                           Container(
                                                            child: Row(
                                                              children: [
                                                                Icon(Icons.motorcycle_outlined,size: 17,),
                                                                Text(" Complete  a 100 km(62.1 mi)ride.",style: TextStyle(fontSize: 12),)
                                                              ],
                                                            ),
                                                           ),
                                                         Padding(
                                                           padding: const EdgeInsets.only(left:8.0),
                                                           child: Container(width:240,  child: Padding(
                                                             padding: const EdgeInsets.only(top:5.0),
                                                             child: Text("Feb 1,2024 to Feb 29,2024",style: TextStyle(fontSize: 11),),
                                                           ),),
                                                         ),
                                                       //  Divider(color: Colors.amber,)
                                                     
                                                         ],
                                                       ),
                                                     )
                                                    ],
                                                  ),
                                                ),
                                                    ],
                                                  ),
                                                )
                                              
                                              ],
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(230,10,0,50),
                                  child: InkWell(onTap: (){
                                    Navigator.pushNamed(context,'/challenge');
                                  }, child: Text("See All Challenges",style: TextStyle(fontSize: 12,color: Colors.red),)),
                                )
                   ],
                 ),
               )
                           
                            
            ],
          ),
        ));

  }
}
