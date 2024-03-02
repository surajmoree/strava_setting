import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class ActivityPage extends StatefulWidget {
  const ActivityPage({super.key});
  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends State<ActivityPage> {
  bool kudos = false;
  bool comments = false;
  bool other_activities = false;
  bool mentions = false;
  bool lost_cr = false;
  bool device = false;
  bool beacon = false;
  bool add_activities = false;
  bool reminders = false;
  bool segment_analysis = false;
  bool activity_crop = false;
  bool elevation = false;
  bool progress_completion = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
            child: Text('Activities',style: TextStyle(color: Colors.orange.shade800),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Kudos and Likes'),
                subtitle: Text(
                    'Notify mw when I receive kudos on my activities or likes on my comments'),
                value: kudos,
                onChanged: (value) {
                  setState(() {
                    kudos = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Comments'),
                subtitle:
                    Text('Notify me when someone comments on my activity'),
                value: comments,
                onChanged: (value) {
                  setState(() {
                    comments = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('''Comments on others' Activities'''),
                subtitle: Text(
                    '''Notify me when someone comments on an activity I commented on'''),
                value: other_activities,
                onChanged: (value) {
                  setState(() {
                    other_activities = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Mentions on Activities'),
                subtitle:
                    Text('Notify me when someone mentions me in an activity'),
                value: mentions,
                onChanged: (value) {
                  setState(() {
                    mentions = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Lost CR'),
                subtitle: Text(
                    'Notify me when I lose the top place on a leaderboard'),
                value: lost_cr,
                onChanged: (value) {
                  setState(() {
                    lost_cr = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Device Activity Synced'),
                subtitle: Text(
                    'Notify me when an activity from my device syncs to strava'),
                value: device,
                onChanged: (value) {
                  setState(() {
                    device = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Beacon'),
                subtitle: Text(
                    '''Notify me when I'm sharing my location with safety contacts'''),
                value: beacon,
                onChanged: (value) {
                  setState(() {
                    beacon = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Add to Activities'),
                subtitle: Text(
                    'Notify me when someone sends me their activity so I can save it to my profile'),
                value: add_activities,
                onChanged: (value) {
                  setState(() {
                    add_activities = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Upload Reminders'),
                subtitle: Text('Notify me to remind me to upload'),
                value: reminders,
                onChanged: (value) {
                  setState(() {
                    reminders = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Segment Analysis'),
                subtitle: Text(
                    'Notify me with analysis of segmemt efforts on my recent activities'),
                value: segment_analysis,
                onChanged: (value) {
                  setState(() {
                    segment_analysis = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Activity Crop'),
                subtitle: Text('Notify me when my activity crop finishes'),
                value: activity_crop,
                onChanged: (value) {
                  setState(() {
                    activity_crop = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Activity Elevation Adjustment'),
                subtitle:
                    Text('Notify me when my elevation adjustment finishes'),
                value: elevation,
                onChanged: (value) {
                  setState(() {
                    elevation = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Progress Completion'),
              subtitle: Text('Notify me when I reach an activity milestone or complete a goal'),
                value: progress_completion,
                onChanged: (value) {
                  setState(() {
                    progress_completion = value!;
                  });
                }),
          ),
          DividerPage(),
        ],
      ),
    );
  }
}
