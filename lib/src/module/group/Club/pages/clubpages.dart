import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

import '../../../app/app_layout/group_layout.dart';
import '../../../components/components.dart';


class ClubPage extends StatefulWidget {
  const ClubPage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ClubPage> createState() => _ClubPageState();
}

class _ClubPageState extends State<ClubPage> {
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
 //floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return GroupLayout(
      //  drawer: const AppMenu(),
        bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(//color: Colors.white,
             height:190,width:400,
             child: Image.asset("assets/images/club.jpg",fit: BoxFit.cover,),
              ),
             Container(
              child:Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15,0,6,0),
                    child: Image.asset("assets/images/strava_logo.jpg",height:50,width:55),
                  ),
                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:20.0),
                        child: Text("The Strava Club",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700),),
                      ),
                    Padding(
                      padding: const EdgeInsets.only(top:10.0),
                      child: Column(
                        children: [
                          Container(child:Row(
                            children: [
                              Icon(Icons.location_on,size: 15,),
                              Text("San Francisco, California",style: TextStyle(fontSize: 12),)
                            ],
                          )),
                          Padding(
                            padding: const EdgeInsets.only(top:8.0),
                            child: Container(width:120, 
                              child: Text("5,017,243 Athelete",style: TextStyle(fontSize: 12),),
                            ),
                          )
                        ],
                      ),
                    )
                    ],
                  )
                ],
              )
             )
                    
                       
         ,               
                    
       
          
          Padding(
            padding: const EdgeInsets.fromLTRB(15,15,15,0),
            child: ElevatedButton(style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 247, 23, 2), fixedSize: Size(700, 40)), onPressed: (){}, child: Text("Join")),
          )  
   
     ] )  ));

  }
}
