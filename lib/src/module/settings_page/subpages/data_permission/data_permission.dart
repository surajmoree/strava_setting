import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/module/settings_page/subpages/push_notification/pages/data_permissions.dart';

class PermissionPage extends StatefulWidget {
  const PermissionPage({super.key});

  @override
  State<PermissionPage> createState() => _PermissionPageState();
}

class _PermissionPageState extends State<PermissionPage> {
  String _accessvalue = '';
  void checkRadioValue(value) {
    _accessvalue = value;
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: const Text(
          'Data Permissions',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Text(
                    '''Strava collects and uses health data from paired devices,like a heart rate monitor,to give you intresting and useful performance analysis.We collect this data only from sensors or devices you've connected to Strava.We do not share it without yor consent.''',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                  child: Container(
                      decoration: const BoxDecoration(
                          border: Border(bottom: BorderSide(width: 1))),
                      child: const Text(
                        'Learn more',
                      )),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(7, 20, 0, 0),
              child: TextButton(
                  onPressed: () {
                   
                      showDialog(
                      barrierDismissible: false,
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                              title: const Text(
                                'Access to Health-Related Data',
                                style: TextStyle(fontSize: 18),
                              ),
                              actions: [
                              
                                RadioListTile(
                                  
                                    activeColor: Colors.orange.shade900,
                                    title: const Text('Allow'),
                                    value: 'Allow',
                                    groupValue: _accessvalue,
                                    onChanged: (value) {
                                      setState(() {
                                        checkRadioValue(value);
                                      });
                                     
                                    },
                                   
                                    ),
                                RadioListTile(
                                    activeColor: Colors.orange.shade900,
                                    title: const Text('Decline'),
                                    value: 'Decline',
                                    groupValue: _accessvalue,
                                    onChanged: (value) {
                                      setState(() {
                                        checkRadioValue(value);
                                      });
                                    }),
                                const Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(20, 10, 0, 0),
                                  child: Text(
                                      'If you decline,your Strava activities will no longer include heart rate or other health-related data.'),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: Text(
                                          'Cancel',
                                          style: TextStyle(
                                              color: Colors.orange.shade800),
                                        )),
                                    TextButton(
                                        onPressed: () {
                                          Navigator.of(context).pop();
                                          if (_accessvalue == 'Allow') {
                                            showDialog(
                                              barrierDismissible: false,
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(
                                                      actions: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                      .fromLTRB(
                                                                  10, 0, 0, 0),
                                                          child: Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children:const [
                                                               Text(
                                                                'Access Confirmed',
                                                                style: TextStyle(
                                                                    fontSize:
                                                                        17),
                                                              ),
                                                               SizedBox(
                                                                height: 10,
                                                              ),
                                                               Text(
                                                                  '''If you've already connected your device(s),all future activities will show heart rate and other health-related data.''')
                                                            ],
                                                          ),
                                                        ),
                                                        TextButton(
                                                            onPressed: () {
                                                              Navigator.of(context).pop();
                                                            },
                                                            child: Text(
                                                              'OK',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .orange
                                                                      .shade800),
                                                            ))
                                                      ],
                                                    ));
                                          } else if (_accessvalue ==
                                              'Decline') {
                                            showDialog(
                                              barrierDismissible: false,
                                                context: context,
                                                builder: (BuildContext
                                                        context) =>
                                                    AlertDialog(actions: [
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                10, 0, 0, 0),
                                                        child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            const Text(
                                                              'Are you sure?',
                                                              style: TextStyle(
                                                                  fontSize: 17),
                                                            ),
                                                            const SizedBox(
                                                              height: 10,
                                                            ),
                                                            const Text(
                                                                '''This will prevent Strava from collecting and using health-related data.Analyzing this data can help you better understand your performance.''')
                                                          ],
                                                        ),
                                                      ),
                                                      const SizedBox(
                                                        height: 20,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        children: [
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                              },
                                                              child: Text(
                                                                'Cancel',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .orange
                                                                        .shade700),
                                                              )),
                                                          TextButton(
                                                              onPressed: () {
                                                                Navigator.of(
                                                                        context)
                                                                    .pop();
                                                                _onLoading();
                                                              },
                                                              child: Text(
                                                                'DENY PERMISSION',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .orange
                                                                        .shade700),
                                                              ))
                                                        ],
                                                      )
                                                    ]));
                                          }
                                        },
                                        child: Text(
                                          'OK',
                                          style: TextStyle(
                                              color: Colors.orange.shade800),
                                        )),
                                  ],
                                )
                              ],
                          
                            )
                            );
                    
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Health-Related Data',
                        style: TextStyle(color: Colors.black),
                      ),
                      if (_accessvalue == 'Allow') ...[
                        Text(
                          'Access Allowed',
                          style: TextStyle(color: Colors.grey.shade700),
                        )
                      ] else if (_accessvalue == 'Decline') ...[
                        Text(
                          'Access declined',
                          style: TextStyle(color: Colors.grey.shade700),
                        )
                      ]
                    ],
                  )),
            )
          ],
        ),
      ),
    );
  }

  void _onLoading() {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: SizedBox(
            height: 70,
            child: new Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: new CircularProgressIndicator(
                    color: Colors.orange.shade800,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                new Text("Loading..."),
              ],
            ),
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 2), () {
      Navigator.pop(context); //pop dialog
    });
  }
}
