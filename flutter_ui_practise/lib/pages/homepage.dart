import 'package:flutter/material.dart';
import 'package:flutter_ui_practise/services/database_service.dart';
import 'package:flutter_ui_practise/services/show_data.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);
  final formKey = GlobalKey<FormState>();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Form'),
          ),
          body: ShowData()),
    );
  }
}

// Form(
//           key: formKey,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Column(
//               children: [
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   controller: titleController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter Details!';
//                     }
//                   },
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     label: Text('Title'),
//                   ),
//                 ),
//                 SizedBox(
//                   height: 10,
//                 ),
//                 TextFormField(
//                   controller: descriptionController,
//                   validator: (value) {
//                     if (value!.isEmpty) {
//                       return 'Please enter title!';
//                     }
//                   },
//                   decoration: InputDecoration(
//                     border: OutlineInputBorder(
//                         borderRadius: BorderRadius.circular(20)),
//                     label: Text('Detail'),
//                   ),
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (formKey.currentState!.validate()) {
//                       DatabaseService.addData(
//                           titleController.text, descriptionController.text);
//                     }
//                   },
//                   child: Text('ADD'),
//                 ),
//               ],
//             ),
//           ),
//         ),
