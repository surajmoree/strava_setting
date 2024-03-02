import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

enum Flybyslist { Everyone, NoOne }

class FlybysPage extends StatefulWidget {
  const FlybysPage({super.key});

  @override
  State<FlybysPage> createState() => _FlybysPageState();
}

class _FlybysPageState extends State<FlybysPage> {
  Flybyslist? _flybyslist = Flybyslist.Everyone;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Flybys',
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
                '''Flybys provide in-depth activity playbacks to anyone on strava or the web.Flybys aloow you to rewatch any activity minute by minute, and see athletes who were nearby and where you crossed paths.''',
                style: TextStyle(fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 15, 0, 0),
              child: Text(
                'Learn More about Flyby',
                style: TextStyle(color: Colors.orange.shade800),
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 50,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('Everyone'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      '''Your activities are accessible to you and anyone on the web using Flybys.Only your activities marked as visible to 'Everyone' will be displayed in Flybys.'''),
                ),
                value: Flybyslist.Everyone,
                groupValue: _flybyslist,
                onChanged: (value) => setState(() {
                      _flybyslist = value;
                      wait();
                    })),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 30,
            ),
            RadioListTile(
                activeColor: Colors.orange.shade800,
                controlAffinity: ListTileControlAffinity.trailing,
                title: Text('No One'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text(
                      '''Your activities will not be visioble on Flybys to you or to anyone else.'''),
                ),
                value: Flybyslist.NoOne,
                groupValue: _flybyslist,
                onChanged: (value) => setState(() {
                      _flybyslist = value;
                      wait();
                    })),
            Divider(
              color: Colors.grey,
              thickness: 0.5,
              height: 30,
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
