import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/app_layout/search_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:test/expect.dart';

//import '../../../app/app_layout/group_layout.dart';
//import '../../../components/menu/bottom_menu.dart';


class ContactPage extends StatefulWidget {
  const ContactPage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<ContactPage> createState() => ContactPageState();
}

class ContactPageState extends State<ContactPage> {
  String flowerImage =
      'https://images.unsplash.com/photo-1515041219749-89347f83291a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHw%3D&w=1000&q=80';
  // String flowerImage = '';
  String StaticImagePath =
      "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  //TO DO: Pass it from local referncd area Or Main Action component of the App
  
  @override
  Widget build(BuildContext context) {
 floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 247, 23, 2), onPressed: (){},child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return SearchLayout(
    body: Column(
      children: [
        Container(//color: Colors.amber,

          child:Padding(
            padding: const EdgeInsets.fromLTRB(70,15,60,0),
            child: Image.asset("assets/images/add2.png",height: 50,width:50),
          )
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10,13,0,0),
          child: Container(//color: Colors.amber,
            child: Text("Search Contacts",style: TextStyle(fontSize:17,color: Colors.grey.shade900,fontWeight: FontWeight.w300),),
          ),
        ),
        Container(child: Padding(
          padding: const EdgeInsets.fromLTRB(0,5,0,0),
          child: Text("Find friends on Strava in your phone's contact list.",style: TextStyle(fontSize: 13,fontWeight: FontWeight.w400),),
        ),),
        Padding(
          padding: const EdgeInsets.fromLTRB(0,10,0,0),
          child: OutlinedButton(style:OutlinedButton.styleFrom(side:BorderSide(color:Color.fromARGB(255, 228, 33, 16),), fixedSize: Size(145,35)), onPressed: (){}, child: Text("Connect Securely",style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 228, 33, 16),),)),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(15,270,15,0),
          child: ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 228, 33, 16), fixedSize: Size(350,30)), onPressed: (){}, child: Text("Invite Friends")),
        )
      ],
    ),
       
        
        );

         

  }
}
