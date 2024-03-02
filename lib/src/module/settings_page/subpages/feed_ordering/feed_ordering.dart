import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

enum Radiooption { Personalized, Latest_activities }

class FeedOrderingPage extends StatefulWidget {
  const FeedOrderingPage({super.key});

  @override
  State<FeedOrderingPage> createState() => _FeedOrderingPageState();
}

class _FeedOrderingPageState extends State<FeedOrderingPage> {
  Radiooption? _radiooption = Radiooption.Personalized;
bool isLoading=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Feed Ordering'),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Text(
                  '''Change how activities are ordered in your feed. Any changes will apply only to new activities in your feed,so you may not notice a difference at first'''),
            ),
            GestureDetector(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                child: Text(
                  'Learn more',
                  style: TextStyle(color: Colors.orange.shade900),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Divider(
              thickness: 0.5,
              color: Colors.grey,
            ),
            RadioListTile<Radiooption>(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Personalized'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                    '''The feed is ordered as a blend of new activities,the kind of activities you tend to interact with and great efforts you may have missed.'''),
              ),
              groupValue: _radiooption,
              onChanged: (Radiooption? value) {
                CircularProgressIndicator();
                setState(() {
                  _radiooption = value;
                  wait();
                });
              },
              value: Radiooption.Personalized,
            ),
            Divider(
              height: 30,
              thickness: 0.5,
              color: Colors.grey,
            ),
            RadioListTile<Radiooption>(
              activeColor: Colors.orange.shade800,
              controlAffinity: ListTileControlAffinity.trailing,
              title: Text('Latest Activities'),
              subtitle: Padding(
                padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                child: Text(
                    '''The feed is ordered chronologically by when new activities are finished.'''),
              ),
              groupValue: _radiooption,
              onChanged: (Radiooption? value) {
                setState(() {
                  _radiooption = value;
                  wait();
                });
              },
              value: Radiooption.Latest_activities,
            ),
            Divider(
              height: 30,
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
