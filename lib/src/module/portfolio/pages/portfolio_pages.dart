import 'package:strava_clone/src/module/app/app_layout/main_layout.dart';
import 'package:strava_clone/src/module/app/bloc/app_bloc.dart';
// import 'package:strava_clone/src/module/components/profile_image/profile_image_component.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test/expect.dart';

import '../../app/app_layout/yourlayout.dart';
import '../../module.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key, required this.title, this.color});
  final String title;
  final Color? color;

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  String flowerImage =
      'https://images.unsplash.com/photo-1515041219749-89347f83291a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Y2FydG9vbnxlbnwwfHwwfHw%3D&w=1000&q=80';
  // String flowerImage = '';
  String StaticImagePath =
      "https://images.pexels.com/photos/60597/dahlia-red-blossom-bloom-60597.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";

  //TO DO: Pass it from local referncd area Or Main Action component of the App
  List<Widget> getAction(BuildContext context) {
    return [
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/you');
              },
              child: const CircleAvatar(
                child: Icon(
                  Icons.person,
                  size: 18,
                  color: Colors.white,
                ),
                radius: 12,
                backgroundColor: Colors.grey,
              ))),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.search_outlined),
          )),
      Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.settings_outlined),
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    floatingActionButton:
    FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 247, 23, 2),
        onPressed: () {},
        child: Icon(Icons.add));
    final textTheme = Theme.of(context).textTheme;
    return YourLayout(
        drawer: const AppMenu(),
        bootomNavigationBar: const BottomMenu(),
        actions: getAction(context),
        body: SingleChildScrollView(
            child: Column(children: [
          SizedBox(
            height: 320,
            width: 500,
            child: Card(
              child: Image.asset(
                "assets/images/graph.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ]) // This trailing comma makes auto-formatting nicer for build methods.

            ));
  }
}
