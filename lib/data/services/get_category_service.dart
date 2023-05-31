import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetCategoryService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  
  CollectionReference categoryDefault = FirebaseFirestore.instance.collection("categoryDefault");

  Future<List<Map<String, dynamic>>> getCategoryCollectionData() async {
    QuerySnapshot querySnapshot = await categoryDefault.get();

    List<Map<String, dynamic>> data = [];

    querySnapshot.docs.forEach((doc) {
      data.add(doc.data() as Map<String, dynamic>);
    });

    return data;
  }

}