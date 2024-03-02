import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

bool _status = false;

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 247, 23, 2),
        title: Row(
          children: [
            Text("Beacon"),
            Padding(
              padding: const EdgeInsets.only(left: 140),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "SAVE",
                    style: TextStyle(color: Colors.white),
                  )),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.grey.shade200,
                border: Border(bottom: BorderSide(width: 0.1))),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
              child: Text(
                "Share a Beacon with up to three safety contacts so they can see your location during your activity.Turn on Beacon to select your contacts.",
                style: TextStyle(
                    decoration: TextDecoration.none,
                    fontSize: 12,
                    fontWeight: FontWeight.w300),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Container(
                //color: Colors.blue,
                width: 380,
                height: 70,
                child: SwitchListTile(
                  activeColor: Colors.red,
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Beacon For Mobile'),
                      Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: Text(
                          "Share your location from this device.",
                          style: TextStyle(
                              fontWeight: FontWeight.w300, fontSize: 13),
                        ),
                      )
                    ],
                  ),
                  value: _status,
                  onChanged: (bool value) {
                    setState(() {
                      _status = value;
                    });
                  },
                  
                )),
          ),
        ],
      ),
    );
  }
}
