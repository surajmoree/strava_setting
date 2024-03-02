import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class CreateMessage extends StatefulWidget {
  const CreateMessage({super.key});

  @override
  State<CreateMessage> createState() => _CreateMessageState();
}

class _CreateMessageState extends State<CreateMessage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 23, 2),
        title: Text(
          "New Message",
          style: TextStyle(fontSize: 17),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.grey.shade300),
                    height: 35, width: 40, //color: Colors.amber,
                    child: Icon(
                      Icons.search_outlined,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.grey.shade300),
                    height: 35, width: 280,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search people who follow you",
                            hintStyle: TextStyle(
                                fontSize: 14, color: Colors.grey.shade500)),
                        cursorColor: Colors.black,
                        cursorWidth: 0.5,
                      ),
                    ),
                    // color: Colors.amber,
                  )
                ],
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(50, 80, 50, 0),
                child: Image.asset("assets/images/msg.png",
                    height: 250, width: 250),
              ),
            ),
            Container(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 0, 0),
              child: Column(
                children: [
                  Text(
                    "No Result Found",
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Text(
                      "Your followers will appear here.",
                      style: TextStyle(fontSize: 16),
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
