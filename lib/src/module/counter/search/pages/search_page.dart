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


class SearchPage extends StatefulWidget {
  const SearchPage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
    body: Container(height:25,width:700,
                color: Color.fromARGB(255, 219, 223, 214),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16,8,0,0),
                  child: Text("PEOPLE YOU MAY KNOW",style: TextStyle(fontSize:9,color: Colors.grey.shade800),),
                ),
              )
            
          
       
        // body: Column(
        //     children: [
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(15,15,15,6),
        //         child: Container(height:35,width: 600,
        //          // color: Colors.amber,
        //          decoration:BoxDecoration(borderRadius: BorderRadius.circular(4),color: Color.fromARGB(255, 231, 230, 225)) ,
        //         child: Row(
        //           children: [
        //             Padding(
        //               padding: const EdgeInsets.only(left:8.0),
        //               child: Icon(Icons.search_outlined,color: Colors.grey.shade600,),
        //             ),
        //             Padding(
        //               padding: const EdgeInsets.only(left:5.0),
        //               child: Text("Search on Strava",style: TextStyle(color: Colors.grey.shade500),),
        //             )
        //           ],
        //         ),
        //         ),
        //       ),
        //       Padding(
        //         padding: const EdgeInsets.fromLTRB(0,0,0,0),
        //         child: Divider(
        //           color: Colors.black,thickness: 0.09,
        //         ),
        //       ),
        //       Container(
        //        height: 70,width:400,
        //         child: Padding(
        //           padding: const EdgeInsets.only(left:20),
        //           child: Row(
        //             children: [
        //               Padding(
        //                 padding: const EdgeInsets.all(8.0),
        //                 child: Column(
        //                   children: [
        //                     Icon(Icons.person,size: 32,),
        //                     Text("SUGGESTED",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),)
        //                   ],
        //                 ),
        //               ),
        //                 Padding(
        //                   padding: const EdgeInsets.fromLTRB(15,7,10,0,),
        //                   child: InkWell(onTap: () {
                            
        //                   },
        //                     child: Column(
        //                     children: [
        //                       Image.asset("assets/images/ws2.png",height: 32,width: 32,),
        //                       Text("FACEBOOK",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),)
        //                     ],
        //                                       ),
        //                   ),
        //                 ),
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(13,8,10,0,),
        //                 child: Column(
        //                   children: [
        //                   Image.asset("assets/images/add2.png",height: 23,width: 25,),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top:7.0),
        //                       child: Text("CONTACTS",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),),
        //                     )
        //                   ],
        //                 ),
        //               ),
                    
        //               Padding(
        //                 padding: const EdgeInsets.fromLTRB(10,6,0,0),
        //                 child: Column(
        //                   children: [
        //                     Image.asset("assets/images/q.png",height: 27,width: 27,),
        //                     Padding(
        //                       padding: const EdgeInsets.only(top:5.0),
        //                       child: Text("QR CODE",style: TextStyle(fontSize:11,fontWeight: FontWeight.w700),),
        //                     )
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       Container(height:25,width:700,
        //         color: Color.fromARGB(255, 219, 223, 214),
        //         child: Padding(
        //           padding: const EdgeInsets.fromLTRB(16,8,0,0),
        //           child: Text("PEOPLE YOU MAY KNOW",style: TextStyle(fontSize:9,color: Colors.grey.shade800),),
        //         ),
        //       )
        //     ],
        //   ),
        );

         

  }
}
