import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

import '../../app/app_layout/layout.dart';
import '../../module.dart';

class YouScreen extends StatefulWidget {
  const YouScreen({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<YouScreen> createState() => _YouScreenState();
}

class _YouScreenState extends State<YouScreen> {
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
    return Layout(
        drawer: const AppMenu(),
        //bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
              // \\\ height: 100,
              //  color: Colors.amber,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,0,0),
                      child: CircleAvatar( radius:30,backgroundColor: Colors.grey.shade300,child: Icon(Icons.person,size:45, color: Colors.white,),),
                    ),
                    Container(
                      //color: Colors.blue,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10,20,0,0),
                        child: Column(
                          crossAxisAlignment:CrossAxisAlignment.start ,
                          children: [
                            Text("${namec.value.text} ${lastnamec.value.text}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                            
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(0,6,0,0),
                                  child: Text("Nashik,Maharashtra,India",style: TextStyle(fontSize: 12),),
                                )
                              ],
                            )
                          
                        )
                      ),
                    
                  ],
                ),
              ),
             
                    
                       
                        
                    
          Container(
           //color: Colors.pink,
            height:55
          )    ,
          Row(
            children: [
              Container(
         //color: Colors.greenAccent,
                height:55,width:220,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20,0,20,0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom:10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("Following",style: TextStyle(fontSize: 11,color: Color.fromARGB(255, 250, 65, 52),fontWeight: FontWeight.w300),),
                            Padding(
                              padding:  EdgeInsets.only(top:8.0),
                              child: Text("0",style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ),
                     const VerticalDivider(
                        thickness: 0.5,
                        indent: 20,
                        endIndent: 15,
                        
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom:10.0),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:const [
                            Text("Followers",style: TextStyle(fontSize: 11,color: Color.fromARGB(255, 250, 65, 52),fontWeight: FontWeight.w300),),
                            Padding(
                              padding:  EdgeInsets.only(top:8.0),
                              child: Text("0",style: TextStyle(fontSize: 16),),
                            )
                          ],
                        ),
                      ),
                    // OutlinedButton(onPressed: () {
                      
                    // },child: Icon(Icons.edit_outlined)),
                    ],
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                                //  color: Colors.amber,
                                width: 45, height: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    border: Border.all(color: Colors.red)),
                                child: 
                                      Icon(Icons.share_outlined,size:17,color: Colors.red,
                                    
                                      )),
                              
                     Padding(
                       padding: const EdgeInsets.only(left:8.0),
                       child:   InkWell(onTap: () {
                         Navigator.pushNamed(context,'/editinfo');
                       },
                         child: Container(
                                  //  color: Colors.amber,
                                  width: 70, height: 30,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4),
                                      border: Border.all(color: Colors.red)),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.fromLTRB(9,0,4,0),
                                        child: Icon(Icons.edit_outlined,size:17,color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        "Edit",
                                        style: TextStyle(fontSize: 11,color:Colors.red),
                                      )
                                    ],
                                  ),
                                ),
                       ),
                     ),
                ],
              )
            ],
          )    ,
         SingleChildScrollView(
           child: SizedBox(
            height: 280,width:500,
             child: Card(
              child: Image.asset("assets/images/graph.jpg",fit: BoxFit.cover,),
             ),
           ),
         ) ,
            SizedBox(
          height:450,width:500,
           child: Padding(
             padding: const EdgeInsets.only(top:8.0),
             child:Card(
                elevation: 10,
                child:Column(
                  children: [
                    SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.area_chart_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Activities"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("December 9,2023",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:180.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                      SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.bar_chart_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Statistics"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("--",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:208.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                      SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.earbuds_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Routes"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("--",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:223.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                    SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.segment_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Segments"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("--",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:205.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                     SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.star_border_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Best Efforts"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("See All",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:196.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                      SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.favorite_outline,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Posts"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("--",style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:234.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                     SizedBox(height:60,width:600,
                      child: Card(
                        child: Container(
                          child: Row(
                            children: [
                              Icon(Icons.pedal_bike_outlined,color: Colors.grey.shade800,),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(13,10,0,0),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("Gear"),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("--",style: TextStyle(fontSize: 11,color: Colors.grey.shade600),),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left:240.0),
                                child: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey.shade600,),
                              )
                            ],
                          )
                        ),
                      ),
                    ),
                  ],
                ),
               ),
             ),
           ),
         
       ] ) // This trailing comma makes auto-formatting nicer for build methods.
        
    ));

  }
}
