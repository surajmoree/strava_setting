import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
enum Mentionlist{Everyone,Followers,NoOne}
class MentionPage extends StatefulWidget {
  const MentionPage({super.key});

  @override
  State<MentionPage> createState() => _MentionPageState();
}

class _MentionPageState extends State<MentionPage> {
 Mentionlist? _mentionlist=Mentionlist.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Mentions',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text('Choose who can @mention you and tag your account.'),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text('Learn More about Mentions.',style: TextStyle(color: Colors.orange.shade800),),
            ),
            Divider(
              height: 50,
              color: Colors.grey,
              thickness: 0.5,
            ),
            RadioListTile(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Everyone'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text('There are no restrictions on who can mention you'),
              ),
              value: Mentionlist.Everyone, 
              groupValue: _mentionlist, 
              onChanged: (value)=>setState(() {
                _mentionlist=value;
                wait();
              })),
              Divider(
                thickness: 0.5,
                height: 20,
                color: Colors.grey,
              ),
              RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Followers'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('Only your followers will be able to mention you'),
                ),
                value: Mentionlist.Followers, 
                groupValue: _mentionlist, 
                onChanged: ((value) => setState(() {
                  _mentionlist=value;
                  wait();
                }))),
                Divider(
                  thickness: 0.5,
                  height: 20,
                  color: Colors.grey,
                ),
                RadioListTile(
                  activeColor: Colors.orange.shade800,
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text('No One'),
                  subtitle: Text('No one will be able to mention you'),
                  value: Mentionlist.NoOne,
                   groupValue: _mentionlist,
                    onChanged: (value)=>setState(() {
                      _mentionlist=value;
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