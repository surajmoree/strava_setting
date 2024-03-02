import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:date_format/date_format.dart';
import 'package:strava_clone/src/database/pages/database.dart';
import 'package:strava_clone/src/module/signup/pages/signup_pages.dart';
import 'package:test/expect.dart';
import '../../../database/note_database.dart';
import '../../login/pages/login_pages.dart';
import 'package:intl/intl.dart';

TextEditingController namec = TextEditingController();
TextEditingController birthdayInput = TextEditingController();
TextEditingController lastnamec = TextEditingController();
FocusNode FocusNodeLastName = new FocusNode();
FocusNode FocusNodeFirstName = new FocusNode();
FocusNode FocusNodeBirthdate = new FocusNode();
FocusNode FocusNodeGender = new FocusNode();

String? selectedOption;

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              const Padding(
                padding: const EdgeInsets.fromLTRB(20, 70, 120, 0),
                child: Text(
                  "Tell us who you are",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontSize: 28,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
                child: TextFormField(
                  controller: namec,
                  decoration: InputDecoration(
                    hintText: "First Name",
                    labelText: "First Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    labelStyle: TextStyle(
                        color: FocusNodeFirstName.hasFocus
                            ? Colors.blue
                            : Colors.black),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: TextFormField(
                  controller: lastnamec,
                  decoration: InputDecoration(
                    hintText: "Last Name",
                    labelText: "Last Name",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    labelStyle: TextStyle(
                        color: FocusNodeLastName.hasFocus
                            ? Colors.blue
                            : Colors.black),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                child: TextField(
                  readOnly: true,
                  controller: birthdayInput,
                  decoration: InputDecoration(
                    suffixIconColor: Color.fromARGB(255, 151, 148, 148),
                    suffixIcon: Icon(Icons.question_mark_sharp),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    label: Text(
                      'Birthday',
                      style: TextStyle(color: Colors.black),
                    ),
                    labelStyle: TextStyle(
                        color: FocusNodeGender.hasFocus
                            ? Colors.blue
                            : Colors.black),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                  ),
                  onTap: () async {
                    DateTime? pickbirthday = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(1900),
                        lastDate: DateTime(3000));
                    if (pickbirthday != null) {
                      print(pickbirthday);
                      String formattedDate =
                          DateFormat('yyyy-MM-dd').format(pickbirthday);
                      setState(() {
                        birthdayInput.text = formattedDate;
                      });
                    }
                  },
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(700, 55),
                        side: BorderSide(color: Colors.grey.shade700)),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Choose Gender'),
                        //content: const Text('AlertDialog description'),
                        actions: <Widget>[
                          ListTile(
                            title: Text(
                              "Male",
                            ),
                            leading: Radio(
                              value: "Male",
                              groupValue: selectedOption,
                              onChanged: (value) {
                                setState(() {
                                  selectedOption = value!.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: ListTile(
                              title: const Text('Female'),
                              leading: Radio(
                                value: "Female",
                                groupValue: selectedOption,
                                onChanged: (value) {
                                  setState(() {
                                    selectedOption = value!.toString();
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right:230),
                      child: Text(
                        '${selectedOption}',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 20, 0, 30),
                child: Text(
                  "Your profile is public by default.Change your\nvisibility any time in Privacy Control",
                  style: TextStyle(fontSize: 17, color: Colors.grey.shade700),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey.shade400,
                      fixedSize: Size(340, 45)),
                  onPressed: () {
                    print("$selectedOption");
                  //  context.read<DataDatabase>().addData(namec., lastNameFromUser, passFromUser)
                  //  context.read<DataDatabase>().addData(lastnamec.text);
                    Navigator.pushNamed(context, '/welcome');
                    // createNote();
                  },
                  child: Text(
                    "Continue",
                    
                    style: TextStyle(fontSize: 17, color: Colors.black),
                  ),
                  )
                 
            ],
          ),
        ),
      ),
    );
  }
}
