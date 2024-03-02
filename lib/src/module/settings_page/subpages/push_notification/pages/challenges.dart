import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class ChallengesPage extends StatefulWidget {
  const ChallengesPage({super.key});

  @override
  State<ChallengesPage> createState() => _ChallengesPageState();
}

class _ChallengesPageState extends State<ChallengesPage> {
  bool challenge_progress = false;
  bool challenge_rewards = false;
  bool challenge_invites = false;
  bool group = false;
  bool gp_challenge_leaderboard = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
            child: Text(
              'Challenges',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade800,
                title: Text('Challenge Progress'),
                subtitle: Text(
                    '''Notify me when I've joined,made progress on or completed either a Strava Challenge or Group Challenge'''),
                value: challenge_progress,
                onChanged: (value) {
                  setState(() {
                    challenge_progress = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Challenge Rewards'),
                subtitle: Text(
                    'Notify me when I complete a challenge that has a reward,donation,or an opportunity to learn more'),
                value: challenge_rewards,
                onChanged: (value) {
                  setState(() {
                    challenge_rewards = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Challenge Invites'),
                subtitle: Text(
                    'Notify me when someone invites me to either a Strava Challenge or Group Challenge'),
                value: challenge_invites,
                onChanged: (value) {
                  setState(() {
                    challenge_invites = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Group Challenge Comments'),
                subtitle: Text(
                    'Notify me when someone comments on a Group Challenge'),
                value: group,
                onChanged: (value) {
                  setState(() {
                    group = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Group Challenge Leaderboard Changes'),
              subtitle: Text('Notify me when someone passes me on a Group Challenge leaderboard'),
                value: gp_challenge_leaderboard,
                onChanged: (value) {
                  setState(() {
                    gp_challenge_leaderboard = value!;
                  });
                }),
          ),
          DividerPage(),
        ],
      ),
    );
  }
}
