import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class Eventpage extends StatefulWidget {
  const Eventpage({super.key});

  @override
  State<Eventpage> createState() => _EventpageState();
}

class _EventpageState extends State<Eventpage> {
  bool event_invitation = false;
  bool event_reminder = false;
  bool event_change = false;
  bool event_RSVP = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'Events',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Event Invitation'),
                subtitle:
                    Text('Notify me when a friend invites me to join an event'),
                value: event_invitation,
                onChanged: (value) {
                  setState(() {
                    event_invitation = value!;
                  });
                }),
          ),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Event Reminder'),
              subtitle: Text('Notify me 24 hours before one of my events'),
              value: event_reminder,
              onChanged: (value) {
                setState(() {
                  event_reminder = value!;
                });
              }),
          CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Event Change'),
              subtitle: Text(
                  'Notify me when one of my events is changed or canceled'),
              value: event_change,
              onChanged: (value) {
                setState(() {
                  event_change = value!;
                });
              }),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Event RSVP'),
              subtitle: Text('''Notify me when someone RSVPs to an event I'm organizing'''),
                value: event_RSVP,
                onChanged: (value) {
                  setState(() {
                    event_RSVP = value!;
                  });
                }),
          ),
              DividerPage()
        ],
      ),
    );
  }
}
