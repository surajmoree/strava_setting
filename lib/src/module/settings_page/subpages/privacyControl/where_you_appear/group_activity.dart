import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

enum GroupActivitylist { Everyone, Followers, NoOne }

class GroupActivityPage extends StatefulWidget {
  const GroupActivityPage({super.key});

  @override
  State<GroupActivityPage> createState() => _GroupActivityPageState();
}

class _GroupActivityPageState extends State<GroupActivityPage> {
  GroupActivitylist? _groupActivitylist = GroupActivitylist.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Group Activities',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                  '''This feature detects if athletes recorded activities together,if they have, the activities are grouped and displayed according to the options below.'''),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 0, 0),
              child: Text(
                'Learn More about Group Activities',
                style: TextStyle(color: Colors.orange.shade800),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              height: 40,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Everyone'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      'Your group activities will be visible to anyone on strava.'),
                ),
                value: GroupActivitylist.Everyone,
                groupValue: _groupActivitylist,
                onChanged: (value) => setState(() {
                      _groupActivitylist = value;
                      wait();
                    })),
            Divider(
              height: 30,
              thickness: 0.5,
              color: Colors.grey,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Followers'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      'Your group activities will only be visible to athletes who follow you and athletes you follow.'),
                ),
                value: GroupActivitylist.Followers,
                groupValue: _groupActivitylist,
                onChanged: (value) => setState(() {
                      _groupActivitylist = value;
                      wait();
                    })),
            Divider(
              height: 30,
              thickness: 0.5,
              color: Colors.grey,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('No One'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      'Your activities will not be displayed as part of group activities.'),
                ),
                value: GroupActivitylist.NoOne,
                groupValue: _groupActivitylist,
                onChanged: (value) => setState(() {
                      _groupActivitylist = value;
                      wait();
                    })),
            Divider(
              height: 30,
              thickness: 0.5,
              color: Colors.grey,
            ),
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
