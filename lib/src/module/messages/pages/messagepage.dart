import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class MessagePageNew extends StatefulWidget {
  const MessagePageNew({super.key});

  @override
  State<MessagePageNew> createState() => _MessagePageNewState();
}

class _MessagePageNewState extends State<MessagePageNew> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:   Color.fromARGB(255, 247, 23, 2),
        title:Row(
          children: [
            Text("Messages"),
            Padding(
              padding: const EdgeInsets.only(left:110.0),
              child: InkWell(onTap: () {
                Navigator.pushNamed(context,'/createmsg');
              }, child: Icon(Icons.edit_note_outlined,size:30,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left:8),
              child: InkWell(onTap: () {
                Navigator.pushNamed(context,'/messaging');
              }, child: Icon(Icons.settings_outlined)),
            )
          ],
        )),
        body: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(90,170,50,0),
                child: Image.asset("assets/images/msgrmv.png",height:200,width:200),
              ),
            ),
            Container(
              child:Padding(
                padding: const EdgeInsets.fromLTRB(45,25,0,0),
                child: Column(
                  children: [
                    Text(
                      "Start Messaging!",style: TextStyle(fontSize: 23,fontWeight: FontWeight.w800),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:15.0),
                      child: Text("Your chats will appear here.",style: TextStyle(fontSize: 16),),
                    )
                  ],
                ),
              )
            )
          ],
        ),
    );
  }
}