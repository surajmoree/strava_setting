import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CreateChallengePage extends StatefulWidget {
  const CreateChallengePage({super.key});

  @override
  State<CreateChallengePage> createState() => _CreateChallengePageState();
}

class _CreateChallengePageState extends State<CreateChallengePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color.fromARGB(255, 247, 23, 2), title: Text("Challenge Type",style: TextStyle(fontSize:17),)),
    body: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15,20,0,0),
            child: Text("Let's get started. Pick your\nchallenge type.",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15,50,15,0),
              child: Container(height:87,width:330,
              child: Container(
                                    //  color: Colors.amber,
                                    width: 40, height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey.shade400,width: 0.8)),
                                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Padding(
                                        padding: const EdgeInsets.fromLTRB(12,12,14,0),
                                        child: Icon(Icons.people),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Group Goal ",style: TextStyle(fontWeight: FontWeight.w500),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0),
                                              child: Text("Chase a goal as a group. All activities will count\ntowards a single goal",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                            )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                        
                                          ),),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(15,12,15,0),
              child: Container(height:95,width:330,
              child: Container(
                                    //  color: Colors.amber,
                                    width: 40, height:40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey.shade400,width: 0.8)),
                                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Padding(
                                        padding: const EdgeInsets.fromLTRB(12,12,14,0),
                                        child: Icon(Icons.arrow_circle_right),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Most Activity ",style: TextStyle(fontWeight: FontWeight.w500),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0),
                                              child: Text("Each athlete logs as much distance,time or\nelevation as they can during the challenge\nwindow",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                            )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                        
                                          ),),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(15,12,15,0),
              child: Container(height:87,width:330,
              child: Container(
                                    //  color: Colors.amber,
                                    width: 40, height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey.shade400,width: 0.8)),
                                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Padding(
                                        padding: const EdgeInsets.fromLTRB(12,12,14,0),
                                        child: Icon(Icons.fast_forward),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Fastest Effort",style: TextStyle(fontWeight: FontWeight.w500),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0),
                                              child: Text("Upload the fastest run or wheelchair time over a \nset distance.",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                            )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                        
                                          ),),
            ),
              Padding(
              padding: const EdgeInsets.fromLTRB(15,12,15,0),
              child: Container(height:70,width:330,
              child: Container(
                                    //  color: Colors.amber,
                                    width: 40, height: 20,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(4),
                                        border: Border.all(color: Colors.grey.shade400,width: 0.8)),
                                    child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [Padding(
                                        padding: const EdgeInsets.fromLTRB(12,12,14,0),
                                        child: Icon(Icons.route),
                                      ),
                                        Padding(
                                          padding: const EdgeInsets.only(top:15.0),
                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text("Longest Single Activity",style: TextStyle(fontWeight: FontWeight.w500),),
                                            Padding(
                                              padding: const EdgeInsets.only(top:8.0),
                                              child: Text("Log the most distance in one activity.",style: TextStyle(fontSize: 12,color: Colors.grey.shade700),),
                                            )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                        
                                          ),),
            ),
          ],
        )
      ],
    ),
    );
  }
}