import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class DataUsagePage extends StatefulWidget {
  const DataUsagePage({super.key});

  @override
  State<DataUsagePage> createState() => _DataUsagePageState();
}

class _DataUsagePageState extends State<DataUsagePage> {
  bool aggregate_data_sets=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Aggregated Data Usage',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CheckboxListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Contribute your activity data to de-identified,aggregate data sets'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('''When you contribute your activity data using this checkboc,your data is de-identified and aggregated with other athletes' activity data to support our community-powered features such as Metro,Heatmap,Points of Interest and start/End points.These aggregate data sets do not include activities set to 'only you' visibility.'''),
                ),
                value: aggregate_data_sets, onChanged: (value)=>setState(() {
                aggregate_data_sets=value!;
              })),
              Divider(
                thickness: 0.5,
                height: 40,
                color: Colors.grey,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                child: Text('Why contribute?'),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 10, 0),
                child: Text('''Strava Metro,the Global Heatmap,Points of Interest and Start/End Points are examples of community-powered features that improve the Strava experience.The Metro data set is used exclusively by Urban planners,advocacy groups,and research institutions to build safer towns and citites for pedestrians and cyclists.The other features source the collective knowledge and route usage of athletes to help the Strava community find places to run ,ride and walk.All data is aggregated and de-identified.''',
                style: TextStyle(color: Colors.grey.shade700),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 20, 0, 0),
                child: Text('Learn more',style: TextStyle(color: Colors.orange.shade900),),
              )
            ],
          ),
        ),
      ),
    );
  }
}