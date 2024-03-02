import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class EditActivitiesPage extends StatefulWidget {
  const EditActivitiesPage({super.key});

  @override
  State<EditActivitiesPage> createState() => _EditActivitiesPageState();
}

class _EditActivitiesPageState extends State<EditActivitiesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Edit Past Activities',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    );
  }
}