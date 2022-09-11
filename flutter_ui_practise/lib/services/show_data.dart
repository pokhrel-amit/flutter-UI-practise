import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_ui_practise/services/database_service.dart';

class ShowData extends StatelessWidget {
  const ShowData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
          stream: firebaseFirestore.collection('notes').snapshots(),
          builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.docs.length,
                itemBuilder: ((context, index) {
                  final result = snapshot.data!.docs[index];
                  return ExpansionTile(
                    title: Text('${result['title']}'),
                    children: [Text('${result['description']}')],
                  );
                }),
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
