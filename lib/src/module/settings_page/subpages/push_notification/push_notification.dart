import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/privacyControl/where_you_appear/activities.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/activities_pages.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/challenges.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/clubs.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/data_permissions.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/events.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/friends.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/other.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/posts.dart';

class PushNotificationPage extends StatefulWidget {
  const PushNotificationPage({super.key});

  @override
  State<PushNotificationPage> createState() => _PushNotificationPageState();
}

class _PushNotificationPageState extends State<PushNotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Push Notification',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ActivityPage(),
              FriendsPage(),
              ChallengesPage(),
              ClubsPage(),
              Eventpage(),
              PostPage(),
              DataPermissionPage(),
              OtherPage()
            ],
          ),
        ),
      ),
    );
  }
}
