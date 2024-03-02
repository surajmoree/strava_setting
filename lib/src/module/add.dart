
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/widgets.dart';

// import 'package:isar/isar.dart';


// import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:isar_flutter_libs/isar_flutter_libs.dart';



// import '../database/note.dart';
// import '../database/note_database.dart';
// import 'details/detail.dart';

// class AddPage extends StatefulWidget {


  
//   const AddPage({super.key});

//   @override
//   State<AddPage> createState() => _AddPageState();
// }

// class _AddPageState extends State<AddPage> {
//   final Controller=TextEditingController();
//   @override
//   void initState(){
//     super.initState();
//     readNotes();
//   }
//  void createNote(){
//     TextFormField(controller: namec,
//     );
//       MaterialButton(onPressed:(){
//       context.read<NoteDatabase>().addNote(Controller.text);
//       Controller.clear();
//       Navigator.pop(context);
//       },child: Text("Create"),);
     
    
    
  
//   }
//    void readNotes(){
//     context.read<NoteDatabase>().fetchNote();
//   } 
  
//   void updateNote(Note notes){
//     Controller.text=notes.text;
//     showDialog(context:context, builder: ((context)=>AlertDialog(title: Text("Update"),content: TextField(controller:Controller),
//     actions: [
//       MaterialButton(onPressed: (){
//         context.read<NoteDatabase>().updateNote(notes.id,Controller.text);
//         Controller.clear();
//         Navigator.pop(context);
        
//       },child: Text("Update"),)
//     ],)));
//   }
//   void deleteNote(int id){
//     context.read<NoteDatabase>().deleteNote(id);
//   }
//   @override
//   Widget build(BuildContext context) {
//     final noteDatabase=context.watch<NoteDatabase>();
//     List <Note> currentNotes=noteDatabase.currentNotes;
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Color.fromARGB(255, 240, 65, 7), title: Text("Notes")),
//      floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 240, 65, 7), onPressed: (){
//       createNote();
//       Navigator.pushNamed(context,'/signup');
//      },child: Icon(Icons.add),),
//      );
    
//   }
   
// }