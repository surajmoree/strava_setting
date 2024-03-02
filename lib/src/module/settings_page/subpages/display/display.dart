import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class DisplayPage extends StatefulWidget {
  const DisplayPage({super.key});

  @override
  State<DisplayPage> createState() => _DisplayPageState();
}

class _DisplayPageState extends State<DisplayPage> {
  String _measurevalue = 'Metric';
  String _tempvalue = 'Celsius';
  String _defaultvalue = 'Activity Feed';
  void checkmeasure(value) {
    _measurevalue = value;
    Navigator.of(context).pop();
  }

  void checktemp(value) {
    _tempvalue = value;
    Navigator.of(context).pop();
  }

  void checkdefault(value) {
    _defaultvalue = value;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text(
          'Display',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text('Units of Measure'),
                            actions: [
                              RadioListTile(
                                  activeColor: Colors.orange.shade800,
                                  title: Text('Imperial'),
                                  value: 'Imperial',
                                  groupValue: _measurevalue,
                                  onChanged: (value) => setState(() {
                                        checkmeasure(value);
                                      })),
                              RadioListTile(
                                  activeColor: Colors.orange.shade800,
                                  title: Text('Metric'),
                                  value: 'Metric',
                                  groupValue: _measurevalue,
                                  onChanged: (value) => setState(() {
                                        checkmeasure(value);
                                      })),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.orange.shade800),
                                  ))
                            ],
                          ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Units of Measure',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        _measurevalue,
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                )),
            SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                          title: Text('Temperature'),
                          actions: [
                            RadioListTile(
                                activeColor: Colors.orange.shade800,
                                title: Text('Celsius'),
                                value: 'Celsius',
                                groupValue: _tempvalue,
                                onChanged: (value) => setState(() {
                                      checktemp(value);
                                    })),
                            RadioListTile(
                                activeColor: Colors.orange.shade800,
                                title: Text('Fahrenheit'),
                                value: 'Fahrenheit',
                                groupValue: _tempvalue,
                                onChanged: (value) => setState(() {
                                      checktemp(value);
                                    })),
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                },
                                child: Text(
                                  'Cancel',
                                  style:
                                      TextStyle(color: Colors.orange.shade800),
                                ))
                          ],
                        ));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Temperature',
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      _tempvalue,
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                            title: Text('Default Tab'),
                            actions: [
                              RadioListTile(
                                  activeColor: Colors.orange.shade800,
                                  title: Text('Activity Feed'),
                                  value: 'Activity Feed',
                                  groupValue: _defaultvalue,
                                  onChanged: (value) => setState(() {
                                        checkdefault(value);
                                      })),
                              RadioListTile(
                                  activeColor: Colors.orange.shade800,
                                  title: Text('Record Activity'),
                                  value: 'Record Activity',
                                  groupValue: _defaultvalue,
                                  onChanged: (value) => setState(() {
                                        checkdefault(value);
                                      })),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(
                                        color: Colors.orange.shade800),
                                  ))
                            ],
                          ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Default Tab',
                        style: TextStyle(color: Colors.black),
                      ),
                      Text(
                        _defaultvalue,
                        style: TextStyle(color: Colors.grey.shade700),
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
