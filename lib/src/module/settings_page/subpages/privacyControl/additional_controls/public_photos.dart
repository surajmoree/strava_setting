import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class PublicPhotoPage extends StatefulWidget {
  const PublicPhotoPage({super.key});

  @override
  State<PublicPhotoPage> createState() => _PublicPhotoPageState();
}

class _PublicPhotoPageState extends State<PublicPhotoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Public photos on routes',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
    );
  }
}