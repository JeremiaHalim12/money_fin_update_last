// import 'dart:js_interop';

import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_core/firebase_core.dart';

class AddCategory {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  Future<void> categorySave(String category) async {
    await FirebaseFirestore.instance.collection('category').add(category as Map<String, dynamic>);

  }
}