import "package:flutter/material.dart";

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:strava_clone/src/module/details/pages/detail_page.dart';
import 'package:strava_clone/src/module/signup/pages/signup_pages.dart';
import 'dart:core';

import '../../../database/note.dart';
import '../../../database/note_database.dart';


FocusNode FocusNodeFirstName = new FocusNode();
FocusNode FocusNodePassword = new FocusNode();
TextEditingController usernamecontroller = TextEditingController();
bool _isObscureForPassword = true;

//import 'package:stravaapplication/routes.dart';
//https://media.istockphoto.com/id/1262293243/photo/d.jpg?s=612x612&w=0&k=20&c=HfhtRWYeR49mVmALB1zCzgOhY3YZ9ndnRnIb02CpvB8=
class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<LoginPage> {
  var _MyFormkey = GlobalKey<FormState>();
  moveToNext(BuildContext context) async {
    final form = _MyFormkey.currentState;
    if (form != null && form.validate()) {
      {
        await Future.delayed(const Duration(seconds: 1));
        //context.read<NoteDatabase>().addNote(namec.text, passc.text);
      //Navigator.pushNamed(context,'/home_screen');
        print("clicked");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final noteDatabase = context.read<NoteDatabase>();
    List <Note> currentNotes = noteDatabase.currentNotes;
    print("list==========================$currentNotes");

    return Scaffold(
      body: Form(
        key: _MyFormkey,
        child: Container(
            height: 900,
            width: 800,
            child: Stack(children: [
              Container(
                  child: ListView(children: [
                CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.black.withOpacity(0.3),
                        image: const DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1541625602330-2277a4c46182?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8Y3ljbGluZ3xlbnwwfHwwfHx8MA%3D%3D",
                          ),
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://images.unsplash.com/photo-1541625810516-44f1ce894bcd?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGN5Y2xpbmd8ZW58MHx8MHx8fDA%3D"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: const DecorationImage(
                          image: NetworkImage(
                              "https://media.istockphoto.com/id/1262293243/photo/d.jpg?s=612x612&w=0&k=20&c=HfhtRWYeR49mVmALB1zCzgOhY3YZ9ndnRnIb02CpvB8="),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                  options: CarouselOptions(
                    height: 900,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 4 / 3,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 400),
                    viewportFraction: 1,
                  ),
                ),
              ])),
              Positioned(
                  left: 50,
                  right: 50,
                  top: 250,
                  child: SingleChildScrollView(
                      child: Container(
                          //          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.grey ),
                          color: Colors.black.withOpacity(0.4),
                          height: 360,
                          width: 100,
                          //decoration: BoxDecoration(gradient:LinearGradient(colors: [Color.fromARGB(255, 108, 98, 98).withOpacity(0.5),Colors.grey.withOpacity(0.5)])),
                          child: Column(
                            children: [
                              //                             // Padding(
                              //                             //   padding: const EdgeInsets.all(8.0),
                              //                             //   child: Text("Track your progress and reach goals.Join\n    100 million active peaple on strava",style: TextStyle(fontWeight: FontWeight.bold,fontSize:17),),
                              //                             // ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 10),
                                child: SizedBox(
                                  height: 40,
                                  width: 500,
                                  child: Card(
                                    child: Center(
                                        child: InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/google.png"),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                10, 0, 0, 0),
                                            child: Text(
                                              "Log In using Google",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    )),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                width: 340,
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                  child: Card(
                                    color: Color.fromARGB(255, 71, 131, 244),
                                    child: Center(
                                        child: InkWell(
                                      onTap: () {},
                                      child: Row(
                                        children: [
                                          Image.asset(
                                              "assets/images/facebook.png",
                                              height: 20,
                                              width: 25),
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                15, 0, 0, 0),
                                            child: Text(
                                              "Log In using Facebook",
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Divider(
                                              color: Colors.black, thickness: 3)
                                        ],
                                      ),
                                    )),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  controller: namec,
                                 
                                  validator: (String? name) {
                                  
                                    dynamic error;
                                   
                                    if (name!.isEmpty) {
                                      return "Please Enter name";
                                    } else {
                                      currentNotes.forEach((element) {
                                       // print(element.text);
                                        if (element.text != namec.text) {
                                          
                                          error = "Please enter valid data";
                                        }
                                      
                                      });
                                    
                                    
                                      return error;
                                    }
                                  },
                                  style: TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    fillColor: Colors.white,
                                    //filled: true,
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(1)),
                                    hintText: "  Enter Username",
                                    hintStyle: TextStyle(color: Colors.white),
                                    labelText: "  Username",
                                    labelStyle: TextStyle(
                                        color: FocusNodeFirstName.hasFocus
                                            ? Colors.blue
                                            : Colors.grey.shade200),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(height: 60,
                                  child: TextFormField(controller: passc,
                                    obscureText: _isObscureForPassword,
                                       validator:(String? msg){dynamic error;
                                    if(msg!.isEmpty){
                                    return "Please Enter Password";
                                    }
                                    else if(msg.length<6){
                                      return "Password is too short";
                                    }else {
                                      currentNotes.forEach((element) {
                                        if (element.password != passc.text) {
                                          print("not same=================");
                                          error = "Incorrect Password";
                                        }
                                        // else {
                                        //   Navigator.pushNamed(context,"/home_screen");
                                        // }
                                      });
                                      //  print(currentNotes[i]);
                                    
                                      return error;
                                    }
                                  },
                                    style: TextStyle(color: Colors.white),
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(1)),
                                      hintText: "  Enter Password",
                                      hintStyle: TextStyle(color: Colors.white),
                                      labelText: "  Password",
                                      labelStyle: TextStyle(
                                          color: FocusNodePassword.hasFocus
                                              ? Colors.blue
                                              : Colors.grey.shade200),
                                      focusedBorder: OutlineInputBorder(
                                          borderSide:
                                              BorderSide(color: Colors.grey)),
                                               suffix: IconButton(
                                    padding: const EdgeInsets.all(0),
                                    iconSize: 20.0,
                                    icon: _isObscureForPassword
                                        ? const Icon(
                                            Icons.visibility_off,
                                            color: Colors.white,
                                          )
                                        : const Icon(
                                            Icons.visibility,
                                            color: Colors.white,
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        _isObscureForPassword = !_isObscureForPassword;
                                      });
                                    },
                                  ),
                                    ),
                                  ),
                                ),
                              ),

                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: SizedBox(
                                  width: 500,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          backgroundColor:
                                              Colors.orange.shade900),
                                      onPressed: () {
                                        //  print(noteDatabase.currentNotes);
                                        print(
                                            "list==========================${currentNotes}");
                                        moveToNext(context);
                                      //  dynamic error;
                                        currentNotes.forEach((element) {
                                        if (element.text == namec.text && element.password == passc.text) {
                                    
                                    
                                          Navigator.pushNamed(context,"/home_screen");
                                        }
                                      });
                                        //Navigator.pushNamed(context,'/home_screen');
                                      },
                                      child: Text("Log In")),
                                ),
                              ),

                              //                           ],
                              //                         ),
                              //                       ),
                              //                     ),
                              //                   ),
                              //                 ),
                            ],
                          )
                          // ElevatedButton(style: ElevatedButton.styleFrom(fixedSize:Size(40,20),), onPressed: (){}, child: Text("Log in using Google"))

                          )))
            ])),
      ),
    );
  }
}
