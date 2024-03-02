import "package:flutter/material.dart";
import 'package:carousel_slider/carousel_slider.dart';

import '../../details/detail.dart';

class WelcomePage extends StatefulWidget {
  final String? title;
  const WelcomePage({super.key, this.title});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Stack(
      children: [
        Container(
          height: 1000,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Image.asset(
            "assets/images/wel.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
            top: 520,
            left: 20,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 3100, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        " Welcome,${namec.value.text}!",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            color: Color.fromARGB(255, 238, 201, 201),
                            fontSize: 25,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 10),
                        child: Text(
                          "You are ready to go.start uploading\nactivities,compete with friends,Build \nyour community and most importantly\nHave fun !",
                          style: TextStyle(
                              decoration: TextDecoration.none,
                              fontSize: 14,
                              color:Color.fromARGB(255, 238, 201, 201),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              fixedSize: Size(320, 45),
                              backgroundColor: Color.fromARGB(255, 228, 33, 16),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/home_screen');
                            },
                            child: Text("Get Started")),
                      )
                    ],
                  ),
                ),
              ],
            ))
      ],
    )
        // ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(40,20),), onPressed: (){}, child: Text("Log in using Google"))

        );
  }
}
