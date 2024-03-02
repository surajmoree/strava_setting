import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  bool kudos_and_like = false;
  bool post_comments = false;
  bool mentions_onpost = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
            child: Text(
              'Posts',
              style: TextStyle(color: Colors.orange.shade800),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Post Kudos and Likes'),
                subtitle: Text(
                    'Notify me when I receive kudos on a post or likes on my comments'),
                value: kudos_and_like,
                onChanged: (value) {
                  setState(() {
                    kudos_and_like = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Post Comments'),
                subtitle: Text(
                    'Notify me when someone comments on my post or replies to my comment on a post'),
                value: post_comments,
                onChanged: (value) {
                  setState(() {
                    post_comments = value!;
                  });
                }),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            child: CheckboxListTile(
              activeColor: Colors.orange.shade900,
              title: Text('Mentions on Posts'),
              subtitle: Text('Notify me when someone mentions me in a post comment'),
                value: mentions_onpost,
                onChanged: (value) {
                  setState(() {
                    mentions_onpost = value!;
                  });
                }),
          ),
          DividerPage()
        ],
      ),
    );
  }
}
