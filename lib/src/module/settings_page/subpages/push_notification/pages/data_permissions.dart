import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/divider.dart';

class DataPermissionPage extends StatefulWidget {
  const DataPermissionPage({super.key});

  @override
  State<DataPermissionPage> createState() => _DataPermissionPageState();
}

class _DataPermissionPageState extends State<DataPermissionPage> {
  bool health_data = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Text(
                'Data Permissions',
                style: TextStyle(color: Colors.orange.shade900),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Health Data'),
                subtitle: Text('''Notify me when I upload a file that includes health data that I haven't given Strava consent to process'''),
                  value: health_data,
                  onChanged: (value) {
                    setState(() {
                      health_data = value!;
                    });
                  }),
            ),
            DividerPage()
          ],
        ),
      ),
    );
  }
}
