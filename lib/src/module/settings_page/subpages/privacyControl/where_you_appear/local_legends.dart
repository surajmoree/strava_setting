import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

enum Locallegndslist { Everyone, NoOne }

class LocalLegendsPage extends StatefulWidget {
  const LocalLegendsPage({super.key});

  @override
  State<LocalLegendsPage> createState() => _LocalLegendsPageState();
}

class _LocalLegendsPageState extends State<LocalLegendsPage> {
  Locallegndslist? _locallegendslist = Locallegndslist.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Local Legends',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
              child: Text(
                '''The Local Legend's name and efforts are visible to everyone.If you're not the Local Legend(LCL), ypur effort count and histogram placement are only visible to you.''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                'Learn More about Local Legends',
                style: TextStyle(color: Colors.orange.shade800),
              ),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              height: 50,
            ),
            RadioListTile(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Everyone'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  '''Only activities marked as visible to 'Everyone' will be counted towards Local Legends.If you are the Local Legend your name and achivement will be visible to everyone.If you're not the Local Legend, your effort count and histogram placement are only visible to you''',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              value: Locallegndslist.Everyone,
              groupValue: _locallegendslist,
              onChanged: ((value) => setState(() {
                    _locallegendslist = value;
                    wait();
                  })),
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
              height: 30,
            ),
            RadioListTile(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('No One'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                  '''Your activities will not be counted towards a Local Legend achievement.If you'd like to join again in the future,only activities from the time you join will be counted.''',
                  style: TextStyle(fontSize: 14),
                ),
              ),
              value: Locallegndslist.NoOne,
              groupValue: _locallegendslist,
              onChanged: (value) => setState(() {
                
                _locallegendslist = value;
                showDialog(context: context, builder:(context)=>AlertDialog(
                 actions: [
                  Column(
                    crossAxisAlignment:CrossAxisAlignment.start ,
                    children: [
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Leave Local Legends',style: TextStyle(fontSize: 17),),
                      ),
                      SizedBox(height: 20,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('''If you choose to leave,your activities will not be counted towards a Local Legend achievement.If you'd like to join again the future,only activities from the day you join will be counted.Are you sure you want to leave?'''),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          TextButton(onPressed: (){
                            

                            
                            }, child: Text('Cancel',style: TextStyle(color: Colors.orange.shade800),)),
                          TextButton(onPressed: (){
                          Navigator.of(context).pop();
                            wait();
                          }, child: Text('Yes,Leave',style: TextStyle(color: Colors.orange.shade800),))
                        ],
                      )
                    ],
                  )
                 ],
                ));
                
              }),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 30,
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
