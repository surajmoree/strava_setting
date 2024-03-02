import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class FriendsPage extends StatefulWidget {
  const FriendsPage({super.key});

  @override
  State<FriendsPage> createState() => _FriendsPageState();
}

class _FriendsPageState extends State<FriendsPage> {
  bool friends_join = false;
  bool new_followers = false;
  bool frnds_activities = false;
  bool suggested_frnds = false;
  bool segmemnts_routes = false;
  bool videos = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              'Friends',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Friend Joins'),
              subtitle: Text('Notify me when someone I know joins strava'),
              value: friends_join,
              onChanged: (value) {
                setState(() {
                  friends_join = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('New Follower'),
              subtitle: Text('Notify me when someone follows me on strava'),
              value: new_followers,
              onChanged: (value) {
                setState(() {
                  new_followers = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('''Friend's Activities'''),
              subtitle: Text(
                  '''Notify me when my friends post interesting activities, and when friends I've favorited post activities'''),
              value: frnds_activities,
              onChanged: (value) {
                setState(() {
                  frnds_activities = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Suggested Friend'),
              subtitle: Text('Notify me to suggest friend to follow'),
              value: suggested_frnds,
              onChanged: (value) {
                setState(() {
                  suggested_frnds = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Segments and Routes'),
              subtitle: Text(
                  'Notify me when someone shares a segment or route with me on strava.'),
              value: segmemnts_routes,
              onChanged: (value) {
                setState(() {
                  segmemnts_routes = value!;
                });
              }),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Videos'),
              subtitle: Text('''Notify me when someone I'm following has uploaded a video'''),
                value: videos,
                onChanged: (value) {
                  setState(() {
                    videos = value!;
                  });
                }),
          ),
          DividerPage()
        ],
      ),
    );
  }
}
