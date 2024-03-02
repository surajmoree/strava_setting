import 'package:flutter/gestures.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:strava_clone/src/boot.dart';
import 'package:strava_clone/src/database/note_database.dart';
import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:intl/intl.dart';
import 'package:strava_clone/src/module/signup/pages/signup_pages.dart';

import '../../../database/note.dart';

FocusNode FocusNodeFirstName = new FocusNode();
FocusNode FocusNodeLastName = new FocusNode();
FocusNode FocusNodesport = new FocusNode();
String? option;

class editinfo_page extends StatefulWidget {
  const editinfo_page({super.key});

  @override
  State<editinfo_page> createState() => _editinfo_pageState();
}

class _editinfo_pageState extends State<editinfo_page> {
  @override
  void initState() {
    super.initState();
    readNotes();
  }

  void readNotes() {
    context.read<NoteDatabase>().fetchNote();
  }

  @override
  Widget build(BuildContext context) {
    final noteDatabase = context.read<NoteDatabase>();
    List<Note> currentNotes = noteDatabase.currentNotes;
    // currentNotes.forEach((element){
    // namec.text=element.text;
    // lastnamec.text=element.password;
    // });
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 247, 23, 2),
            title: Row(
              children: [
                Text("Edit Profile"),
                Padding(
                  padding: const EdgeInsets.only(left: 110.0),
                  child: TextButton(
                      onPressed: () {
                        currentNotes.forEach((element) {
                          context.read<NoteDatabase>().fetchNote();
                           print(element.id);
                          //namec.text=element.text;
                          //if(element.text==namec.text){
                          if (element.password == passc.text) {
                           
                            context
                                .read<NoteDatabase>()
                                .updateNote(element.id, namec.text);

                            //  lastnamec.text=element.password;
                          }
                        });

                        //  final note=currentNotes

                        Navigator.pushNamed(context, '/you');
                      },
                      child: Text(
                        "DONE",
                        style: TextStyle(color: Colors.white),
                      )),
                )
              ],
            )),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 150,
                width: 500,
                child: const Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Color.fromARGB(255, 198, 197, 205),
                    radius: 40,
                    child: Icon(
                      Icons.person,
                      size: 55,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                //color: Colors.amber,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                        child: TextField(
                            controller: namec,
                            cursorColor: Colors.black,
                            cursorHeight: 20,
                            cursorWidth: 0.5,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)),
                              labelText: "First Name",
                              // hintText: "${namec.value.text}",
                              labelStyle: TextStyle(
                                  color: FocusNodeFirstName.hasFocus
                                      ? Colors.blue
                                      : Colors.grey.shade600),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                            )),
                      ),
                    ),
                    Flexible(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(5, 6, 10, 0),
                        child: TextField(
                            controller: lastnamec,
                            cursorColor: Colors.black,
                            cursorHeight: 20,
                            cursorWidth: 0.5,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3)),
                              labelText: "Last Name",
                              labelStyle: TextStyle(
                                  color: FocusNodeLastName.hasFocus
                                      ? Colors.blue
                                      : Colors.grey.shade600),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black)),
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0),
                child: Container(
                  //color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 6, 10, 0),
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              cursorWidth: 0.5,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                labelText: "City",
                                labelStyle: TextStyle(
                                    color: FocusNodeFirstName.hasFocus
                                        ? Colors.blue
                                        : Colors.grey.shade600),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              )),
                        ),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 6, 10, 0),
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              cursorWidth: 0.5,
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                labelText: "State",
                                labelStyle: TextStyle(
                                    color: FocusNodesport.hasFocus
                                        ? Colors.blue
                                        : Colors.grey.shade600),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        fixedSize: Size(700, 55),
                        side: BorderSide(color: Colors.grey.shade700)),
                    onPressed: () => showDialog<String>(
                      context: context,
                      builder: (BuildContext context) => AlertDialog(
                        title: const Text('Primary Sport'),
                        //content: const Text('AlertDialog description'),
                        actions: <Widget>[
                          ListTile(
                            title: Text(
                              "Running",
                            ),
                            leading: Radio(
                              value: "Running",
                              activeColor: Colors.red,
                              groupValue: option,
                              onChanged: (value) {
                                setState(() {
                                  option = value!.toString();
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                            child: ListTile(
                              title: const Text('Cycling'),
                              leading: Radio(
                                value: "Cycling",
                                groupValue: option,
                                onChanged: (value) {
                                  setState(() {
                                    option = value!.toString();
                                  });
                                },
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(right: 250),
                      child: Text(
                        '${option}',
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 15, 9, 0),
                child: Container(
                  //color: Colors.amber,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      labelText: "Bio",
                      labelStyle: TextStyle(
                          color: FocusNodeLastName.hasFocus
                              ? Colors.blue
                              : Colors.grey.shade600),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  height: 60,
                  width: 700,
                  color: Color.fromARGB(255, 204, 209, 197),
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "ATHLETE INFORMATION",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Used to calculate calories,power and more",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade700),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 29, 10, 0),
                child: Container(
                  height: 60,
                  width: 355,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border.all(color: Colors.grey.shade500)),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Icon(
                          Icons.favorite_outline_outlined,
                          color: Colors.red,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 12.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Automatically update your profile by",
                              style: TextStyle(fontSize: 13, color: Colors.red),
                            ),
                            Text(
                              "connecting to Google Fit",
                              style: TextStyle(fontSize: 13, color: Colors.red),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 35.0),
                        child: Icon(
                          Icons.arrow_forward_ios_outlined,
                          color: Colors.grey.shade600,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                child: TextField(
                  readOnly: true,
                  controller: birthdayInput,
                  decoration: InputDecoration(
                    suffixIconColor: Color.fromARGB(255, 151, 148, 148),
                    suffixIcon: Icon(Icons.more_vert),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(3)),
                    label: Text(
                      'Birthday',
                      style: TextStyle(color: Colors.grey.shade600),
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
                padding: const EdgeInsets.only(top: 20.0),
                child: Container(
                  //color: Colors.amber,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Flexible(
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 4, 10, 0),
                            child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  fixedSize: Size(510, 48),
                                  side:
                                      BorderSide(color: Colors.grey.shade700)),
                              onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: const Text('Gender'),
                                  //content: const Text('AlertDialog description'),
                                  actions: <Widget>[
                                    ListTile(
                                      title: const Text(
                                        "Male",
                                      ),
                                      leading: Radio(
                                        value: "Male",
                                        activeColor: Colors.red,
                                        groupValue: selectedOption,
                                        onChanged: (value) {
                                          setState(() {
                                            selectedOption = value!.toString();
                                          });
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: ListTile(
                                        title: const Text('Female'),
                                        leading: Radio(
                                          value: "Female",
                                          activeColor: Colors.red,
                                          groupValue: selectedOption,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedOption =
                                                  value!.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: ListTile(
                                        title: const Text("Non-binary"),
                                        leading: Radio(
                                          value: "Non-binary",
                                          activeColor: Colors.red,
                                          groupValue: selectedOption,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedOption =
                                                  value!.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.fromLTRB(0, 5, 0, 0),
                                      child: ListTile(
                                        title: const Text('Prefer not to say'),
                                        leading: Radio(
                                          value: "Prefer not to say",
                                          activeColor: Colors.red,
                                          groupValue: selectedOption,
                                          onChanged: (value) {
                                            setState(() {
                                              selectedOption =
                                                  value!.toString();
                                            });
                                          },
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(right: 250),
                                child: Text(
                                  '${selectedOption}',
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.black),
                                ),
                              ),
                            )),
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 6, 10, 0),
                          child: TextField(
                              cursorColor: Colors.black,
                              cursorHeight: 20,
                              cursorWidth: 0.5,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(10),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(3)),
                                labelText: "Weight",
                                labelStyle: TextStyle(
                                    color: FocusNodeLastName.hasFocus
                                        ? Colors.blue
                                        : Colors.grey.shade600),
                                focusedBorder: const OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.black)),
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Container(
                  height: 60,
                  width: 700,
                  color: const Color.fromARGB(255, 204, 209, 197),
                  child: Align(
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Text(
                              "PERFORMANCE POTENTIAL",
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey.shade700),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 4.0),
                            child: Text(
                              "Used to set heart rate and running pace zones",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey.shade700),
                            ),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 30, 9, 0),
                child: Container(
                  //color: Colors.amber,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      labelText: "Max Heart Rate(bpm)",
                      labelStyle: TextStyle(
                          color: FocusNodeLastName.hasFocus
                              ? Colors.blue
                              : Colors.grey.shade600),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 15, 9, 0),
                child: Container(
                  //color: Colors.amber,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      labelText: "Running Race Distance",
                      labelStyle: TextStyle(
                          color: FocusNodeLastName.hasFocus
                              ? Colors.blue
                              : Colors.grey.shade600),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 15, 9, 0),
                child: Container(
                  //color: Colors.amber,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      labelText: "Runnin Race Time",
                      labelStyle: TextStyle(
                          color: FocusNodeLastName.hasFocus
                              ? Colors.blue
                              : Colors.grey.shade600),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9.0, 15, 9, 0),
                child: Container(
                  //color: Colors.amber,
                  child: TextField(
                    cursorColor: Colors.black,
                    cursorHeight: 20,
                    cursorWidth: 0.5,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(3)),
                      labelText: "Functional Threshold Power(watts)",
                      labelStyle: TextStyle(
                          color: FocusNodeLastName.hasFocus
                              ? Colors.blue
                              : Colors.grey.shade600),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                    ),
                  ),
                ),
              ),
              Container(height: 20)
            ],
          ),
        ));
  }

  void updateNote(Note notes) {
    namec.text = notes.text;
    context.read<NoteDatabase>().updateNote(notes.id, namec.text);
    namec.clear();
  }
}
