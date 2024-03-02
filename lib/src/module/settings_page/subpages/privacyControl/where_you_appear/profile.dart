import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
enum radiooptions { Everyone, Followers }

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  radiooptions? _radiooptions = radiooptions.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Profile Page',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                  '''Your profile page displays information about you,such as your name,activities,followers,photos, and stats.Parts of your profile page will always be publicly available. '''),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                'Learn More about Profile Pages',
                style: TextStyle(color: Colors.orange.shade800),
              ),
            ),
            Divider(
              height: 50,
              thickness: 0.5,
              color: Colors.grey,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Everyone'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      '''Anyone on strava can search for and view your complete profile page and activity summaries, as well as follow you. Anyone on the web can search for and view certain profile information.'''),
                ),
                value: radiooptions.Everyone,
                groupValue: _radiooptions,
                onChanged: (value) {
                  setState(() {
                    _radiooptions = value;
                    wait();
                  });
                }),
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
                  child: Text('''Members who follow you can see your complete profile page.Anyone can search for and view certain profile information,and you can approve who follows you.'''),
                ),
                value: radiooptions.Followers,
                groupValue: _radiooptions,
                onChanged: (value) => setState(() {
                      _radiooptions = value;
                     wait();
                    })),
                    Divider(
                      height: 30,
                      color: Colors.grey,
                      thickness: 0.5,
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
