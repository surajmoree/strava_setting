// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
 bool _status = false;
 String? selectedOption;
class MessagingPage extends StatefulWidget {
  const MessagingPage({super.key});

  @override
  State<MessagingPage> createState() => _MessagingPageState();
}
class _MessagingPageState extends State<MessagingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color.fromARGB(255, 247, 23, 2) ,
        title:const Text("Messaging",style: TextStyle(fontSize: 18),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15,15,0,0),
            child: Container(height: 100,width: 370,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                   Text("Messaging lets you chat privately with other\npeople on Strava .Choose a setting to decide who\ncan message you.",style: TextStyle(decoration: TextDecoration.none,fontSize: 15,fontWeight: FontWeight.w300),),
               Padding(
                 padding: EdgeInsets.only(top:20.0),
                 child: Text("Learn More about Messaging",style: TextStyle(fontWeight: FontWeight.w400,color: Colors.red),),
               )
                ],
              ),
             ),
          ),
        const Padding(
            padding:  EdgeInsets.only(top:10.0),
            child: Divider(thickness:0.059,color: Colors.black,),
          )
        ,
        Padding(
          padding: const EdgeInsets.only(top:30.0),
          child: Container(width:350,
            child: 
                const Padding(
                  padding:  EdgeInsets.only(left:10.0),
                  child: Text("Online Status",style: TextStyle(color: Colors.red,fontSize: 14),),
                ),
              
            
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Container(//color: Colors.blue,
           width: 380,height:70,
            child:SwitchListTile(activeColor: Colors.red,
      title: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children:const [
           Text('Show When You Are Online'),
          Padding(
            padding:  EdgeInsets.only(top:4),
            child: Text("Your online status will be visible in your direct and group messages.",style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14),),
          )
        ],
      ),
      value: _status,
      onChanged: (bool value) {
        setState(() {
          _status = value;
        });
      },
    //  secondary: const Icon(Icons.lightbulb_outline),
    ),
  
          ),
        ),
          Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Container(width:350,
            child: 
              const  Padding(
                  padding: const EdgeInsets.only(left:10.0),
                  child: Text("Who Can Message You",style: TextStyle(color: Colors.red,fontSize: 14),),
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top:20.0),
          child: Container(
            height: 300,width: 400,
            child:  Column(
              children: [
                ListTile(
                                title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: const[
                                    Text(
                                      "Following",
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top:4.0),
                                      child: Text("Anyone you follow will be able to message\nyou.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                                    )
                                  ],
                                ),
                                trailing: Radio(activeColor: Colors.red,
                                  value: "First",
                                  groupValue: selectedOption,
                                  onChanged: (value) {
                                    setState(() {
                                      selectedOption = value!.toString();
                                    });
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:25.0),
                                child: ListTile(
                                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children:const [
                                      Text(
                                        "Mutuals",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:4.0),
                                        child: Text("People will only be able to message you if\nyou follow each other.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                                      )
                                    ],
                                  ),
                                  trailing: Radio(activeColor: Colors.red,
                                    value: "Second",
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top:25.0),
                                child: ListTile(
                                  title: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const[
                                      Text(
                                        "No One",
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top:4.0),
                                        child: Text("No one will be able to message you first,\nOnly you will be able to start conversations\nwith other people.",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w300),),
                                      )
                                    ],
                                  ),
                                  trailing: Radio(activeColor: Colors.red,
                                    value: "Third",
                                    groupValue: selectedOption,
                                    onChanged: (value) {
                                      setState(() {
                                        selectedOption = value!.toString();
                                      });
                                    },
                                  ),
                                ),
                              ),
              ],
            )
            )
            )
            ]
            )
            );
                            
                         
  }
      
      
    
  }
