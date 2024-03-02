import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class MapVisibilityPage extends StatefulWidget {
  const MapVisibilityPage({super.key});

  @override
  State<MapVisibilityPage> createState() => _MapVisibilityPageState();
}

class _MapVisibilityPageState extends State<MapVisibilityPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Map Visibility',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Image.asset(
                      'assets/images/location.png',
                      height: 30,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(right: 10)),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '''Hide the start and end points of activities that happen''',
                        ),
                        Text(
                          'at a specific address',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
              thickness: 0.6,
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset('assets/images/earth.png',
                  height: 30,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hide the start and end points of activities '),
                      Text('no matter where they happen',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                )
              ],
            ),
            Divider(thickness: 0.6,color: Colors.grey,height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Image.asset('assets/images/hide_map.png',
                  height: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Hide your activity maps from others completely')
                    ],
                  ),
                )
              ],
            ),
            Divider(
              thickness: 0.6,
              height: 50,
              color: Colors.grey,
            )
          ],
        ),
      ),
    );
  }
}
