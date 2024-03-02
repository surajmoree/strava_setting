
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
// import 'package:flutter/widgets.dart';

// import 'package:isar/isar.dart';


// import 'package:path_provider/path_provider.dart';
// import 'package:provider/provider.dart';
// import 'package:isar_flutter_libs/isar_flutter_libs.dart';



// import 'note.dart';
// import 'note_database.dart';
// class Note_page extends StatefulWidget {


  
//   const Note_page({super.key});

//   @override
//   State<Note_page> createState() => _Note_pageState();
// }

// class _Note_pageState extends State<Note_page> {
//   final Controller=TextEditingController();
//   @override
//   void initState(){
//     super.initState();
//     readNotes();
//   }
//  void createNote(){
//     showDialog(context:context, builder: ((context)=>AlertDialog(content: TextField(controller: Controller),
//     actions: [
//       MaterialButton(onPressed:(){
//       context.read<NoteDatabase>().addNote(Controller.text);
//       Controller.clear();
//       Navigator.pop(context);
//       },child: Text("Create"),),
     
//     ],
     
//     ))
//   );
  
//   }
// void getNote(){
//    context.read<NoteDatabase>().getNote();
// }
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
//    final noteDatabase=context.watch<NoteDatabase>();
//     List <Note> currentNotes=noteDatabase.currentNotes.toList();
//     return Scaffold(
//       appBar: AppBar(backgroundColor: Color.fromARGB(255, 240, 65, 7), title: Text("Notes")),
//      floatingActionButton: FloatingActionButton(backgroundColor: Color.fromARGB(255, 240, 65, 7), onPressed: createNote,child: Icon(Icons.add),),
//     //   body: 
//     //   ListView.builder(itemCount: currentNotes.length, itemBuilder:((context,index){
//     //     final note=currentNotes[index];
//     //     return ListTile(
//     //       title: Text(note.text),
//     //       trailing: Row(
//     //       mainAxisSize: MainAxisSize.min,
//     //       children: [
//     //                  IconButton(onPressed: ()=>updateNote(note) ,icon: Icon(Icons.edit)),
//     //                  IconButton(onPressed: ()=>deleteNote(note.id) ,icon: Icon(Icons.delete))
//     //       ],
          
//     //       ),
//     //     );
//     //   })
//     // ));
//     );
//   }
   
// }