import 'package:cloud_firestore/cloud_firestore.dart';

FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

class DatabaseService {
  static Future addData(String title, String description) async {
    firebaseFirestore
        .collection('notes')
        .add({'title': title, 'description': description})
        .whenComplete(() => print('data added successfully!'))
        .catchError((e) => print(e.toString()));
  }
}
