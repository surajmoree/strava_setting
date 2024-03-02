import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
enum Messagelist{Following,Mutuals,NoOne}
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  Messagelist? _messagelist=Messagelist.Following;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Messaging',style: TextStyle(fontSize:16,fontWeight: FontWeight.bold ),),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text('''Messaging lets you chat privately with other people on strava.Choose a setting to decide who can message you.'''),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text('Learn More about Messaging',style:TextStyle(color: Colors.orange.shade800),),
            ),
            Divider(
              thickness: 0.5,
              height: 40,
              color: Colors.grey,
            ),
            RadioListTile(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Following'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text('Anyone you follow will be able to message you.'),
              ),
              value: Messagelist.Following,
               groupValue: _messagelist, 
               onChanged:(value)=>setState(() {
                 _messagelist=value;
                 wait();
               })),
               Divider(
                height: 20,
                color: Colors.grey,
                thickness: 0.5,
               ),
               RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Mutuals'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('People will only be able to message you if you follow each other.'),
                ),
                value: Messagelist.Mutuals, 
                groupValue: _messagelist, 
                onChanged: (value)=>setState(() {
                  _messagelist=value;
                  wait();
                })),
                Divider(
                  height: 20,
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                RadioListTile(
                  activeColor: Colors.orange.shade800,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('No One'),
                  subtitle: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text('''No one will be able to message you first.Only you will be able to start conversations with other people.'''),
                  ),
                  value: Messagelist.NoOne, 
                  groupValue: _messagelist, 
                  onChanged: (value)=>setState(() {
                    _messagelist=value;
                    wait();
                  })),
                  Divider(
                    height: 20,
                    thickness: 0.5,
                    color: Colors.grey,
                  )
          ],
        ),
      ),
    );
  }
  void wait(){
    showDialog(
      barrierDismissible: false,
      context: context, builder: (context){
              return Dialog(
                   child: SizedBox(
                    height: 70,
                     child: Row(
                      children: [
                        SizedBox(width: 20,),
                        CircularProgressIndicator(color: Colors.orange.shade900,),
                        SizedBox(width: 30,),
                        Text('Please wait...')
                      ],
                     ),
                   ),
              );
          
    });
    Future.delayed(Duration(seconds: 2),(){
        Navigator.pop(context);
    });
  }
}