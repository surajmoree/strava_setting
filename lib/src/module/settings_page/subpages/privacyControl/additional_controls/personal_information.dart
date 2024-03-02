import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';

class PersonalInformationPage extends StatefulWidget {
  const PersonalInformationPage({super.key});

  @override
  State<PersonalInformationPage> createState() => _PersonalInformationPageState();
}

class _PersonalInformationPageState extends State<PersonalInformationPage> {
  bool personalInformation=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: Text('Personal Information Sharing',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SwitchListTile(
                activeColor: Colors.orange.shade900,
                title: Text('Do Not Share My Personal Information'),
                subtitle: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 0),
                  child: Text('''If you opt out,we will not share your personal Information for third party targeted advertising.For more Information,please see our Privacy Policy.'''),
                ),
                value: personalInformation, onChanged: (value)=>setState(() {
                personalInformation=value;
                // if(value==true){

                
                // final snackBar=SnackBar(
                //   duration: Duration(microseconds: 1000000),
                //   content: Text('Share your Personal Information'));
                // ScaffoldMessenger.of(context).showSnackBar(snackBar);
                // }
              },
              ),
              )
            ],
          ),
        ),
      ),
    );
  }
}