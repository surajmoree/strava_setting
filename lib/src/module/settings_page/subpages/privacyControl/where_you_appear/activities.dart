import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

enum Radiolists{Everyone,Followers,OnlyYou}

class ActivitesPage extends StatefulWidget {
  const ActivitesPage({super.key});

  @override
  State<ActivitesPage> createState() => _ActivitesPageState();
}

class _ActivitesPageState extends State<ActivitesPage> {
  Radiolists? _radiolists=Radiolists.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Activities',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
                child: Text(
                    '''Activities are workouts,races,or events you record or upload to strava,What you choose below will be your default,but you can change settings for each individual activity.You will appear in group activities or Flybys unless you adjust those controls.''',
                    style: TextStyle(fontSize: 14),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text('Learn More about Activities',style: TextStyle(color: Colors.orange.shade800),),
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
                  child: Text('''Anyone on strava can view your activities.Your activities will be visible on segment and challenge leaderboards, and other strava features.''',
                  style: TextStyle(fontSize: 13),
                  ),
                ),
                value: Radiolists.Everyone, 
                groupValue: _radiolists, 
                onChanged: (value)=>setState(() {
                  _radiolists=value;
                  wait();
                })),
                Divider(
                  height: 30,
                  thickness: 0.5,
                  color: Colors.grey,
                ),
                RadioListTile(
                  activeColor: Colors.orange.shade800,
                  controlAffinity:ListTileControlAffinity.trailing,
                  title: Text('Followers'),
                  subtitle: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                    child: Text('''Only your followers will be able to see your activity details.Your activities will not appear on segment or challenge leaderboards,and may not count toward some challenge goals.Members who do not follow you may be able to view your activity summaries depending on your other privacy settings.''',
                    style: TextStyle(fontSize: 13),
                    ),
                  ),
                  value: Radiolists.Followers,
                   groupValue: _radiolists, 
                   onChanged: ((value) => setState(() {
                     _radiolists=value;
                     wait();
                   }))),
                   Divider(
                    height: 30,
                    thickness: 0.5,
                    color: Colors.grey,
                   ),
                   RadioListTile(
                    activeColor: Colors.orange.shade800,
                    controlAffinity: ListTileControlAffinity.trailing,
                    title: Text('Only You'),
                    subtitle: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                      child: Text('''Your activities are private.Only you can view them.If they count toward a challenge,your followers may see updates on your progress.Np one will see your activity pages,and  your activities won't show up on leaderboards or elsewhere on strava,including group activites or Flybys''',
                      style: TextStyle(fontSize: 13),
                      ),
                    ),
                    value: Radiolists.OnlyYou,
                     groupValue: _radiolists,
                      onChanged: (value)=>setState(() {
                        _radiolists=value;
                        wait();
                      })),
                      Divider(
                        height: 30,
                        thickness: 0.5,
                        color: Colors.grey,
                      )
            ],
          ),
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
