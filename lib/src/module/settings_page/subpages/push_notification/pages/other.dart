import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class OtherPage extends StatefulWidget {
  const OtherPage({super.key});

  @override
  State<OtherPage> createState() => _OtherPageState();
}

class _OtherPageState extends State<OtherPage> {
  bool marketing = false;
  bool feature_subscription = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'Other',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Marketing'),
                subtitle: Text(
                    'Alllow Strava to send me push notifications about promotions or other marketing announcements.'),
                value: marketing,
                onChanged: (value) {
                  setState(() {
                    marketing = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Feature and Subscription Tips'),
              subtitle: Text('Receive announcements about new features and tips for how to best use them.'),
                value: feature_subscription,
                onChanged: (value) {
                  setState(() {
                    feature_subscription = value!;
                  });
                }),
          )
        ],
      ),
    );
  }
}
