import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class RecordPage extends StatefulWidget {
  const RecordPage({super.key});

  @override
  State<RecordPage> createState() => _RecordPageState();
}

class _RecordPageState extends State<RecordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
      //title: Text(""),
       title: Row(
         children: [
           TextButton(onPressed: (){
            Navigator.pushNamed(context,'/home_screen');
           },child: Text("Close",style: TextStyle(fontSize: 16, color: Colors.red),),
           
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90,0,90,0),
              child: Text("Ride",style: TextStyle(color: Colors.grey.shade600,fontSize: 17),),
            ),
            Icon(Icons.settings_outlined,color: Color.fromARGB(255, 241, 118, 110),)
         ],
       )
       ),
       body: Column(
         children: [
           Container(
            height:540,width:400,child: Image.asset("assets/images/mapgoogle.webp",fit: BoxFit.cover,),
           ),
           Padding(
             padding: const EdgeInsets.only(top:10.0),
             child: Container(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30,0,0,0),
                    child: Icon(Icons.route_outlined,color: Colors.grey.shade600,),
                  ),
                 //  VerticalDivider(thickness: 0.5,color: Colors.black,),
                   //Icon(Icons.route_outlined),
                   
                   Padding(
                     padding: const EdgeInsets.fromLTRB(50,0,0,0),
                     child: Icon(Icons.pedal_bike_outlined,color: Colors.grey.shade600,),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(50,0,0,0),
                     child: Icon(Icons.area_chart_sharp,color: Colors.grey.shade600,),
                   ),
                   Padding(
                     padding: const EdgeInsets.fromLTRB(50,0,0,0),
                     child: InkWell(onTap:(){
                      Navigator.pushNamed(context, '/phone');
                     }, child: Icon(Icons.call,color: Colors.grey.shade600,)),
                   ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50,0,0,0),
                      child: Icon(Icons.music_note,color: Colors.grey.shade600,),
                    ),
                   
                   
                ],
              ),
             ),
           ),
          
           Padding(
             padding: const EdgeInsets.only(top:32),
             child: Container(
              child: InkWell(onTap: () {
                
              }, child: CircleAvatar(radius:35,child: Text("START",style: TextStyle(color: Colors.white),),backgroundColor:Color.fromARGB(255, 247, 23, 2),)),
             ),
           )
         ],
       ),
    );
  }
}