import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class ClubsPage extends StatefulWidget {
  const ClubsPage({super.key});

  @override
  State<ClubsPage> createState() => _ClubsPageState();
}

class _ClubsPageState extends State<ClubsPage> {
  bool club_invitation = false;
  bool new_post = false;
  bool club_event = false;
  bool join_request = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'Clubs',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Club Invitation'),
                subtitle:
                    Text('Notify me when a friend invites me to join a club'),
                value: club_invitation,
                onChanged: (value) {
                  setState(() {
                    club_invitation = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('New Post'),
                subtitle:
                    Text('Notify me when a post is added in one of my clubs'),
                value: new_post,
                onChanged: (value) {
                  setState(() {
                    new_post = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('New Club Event'),
                subtitle:
                    Text('Notify me when an event is added in one of my clubs'),
                value: club_event,
                onChanged: (value) {
                  setState(() {
                    club_event = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Join Request'),
              subtitle: Text('Notify me when someone requests to join one of my clubs'),
                value: join_request,
                onChanged: (value) {
                  setState(() {
                    join_request = value!;
                  });
                }),
          ),
          DividerPage()
        ],
      ),
    );
  }
}
