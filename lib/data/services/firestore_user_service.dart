import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/foundation.dart';

class PenggunaService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  CollectionReference userCollection =
      FirebaseFirestore.instance.collection("user");
  // CollectionReference cashflow = FirebaseFirestore.instance
  //     .collection('user')
  //     .doc("email")
  //     .collection("cashflow");

  // add data user to firestore
  // Future<void> addUserToFirestore(String ) async {
  //   await userCollection.doc()
  // }

  Future<Map<String, dynamic>> getUser(String email) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance.collection("user").doc(email).get();

      if (snapshot.exists) {
        return snapshot.data()!;
      } else {
        return {};
      }
    } catch (e) {
      print("error getting user");
      return {};
    }
  }

  Future<Map<String, dynamic>?> getCashflow(String index, String email) async {
    try {
      DocumentSnapshot<Map<String, dynamic>> snapshot =
          await FirebaseFirestore.instance.collection("user").doc(email).collection('cashflow').doc(index).get();
      
      if (snapshot.exists) {
        return snapshot.data();
      } else {
        print ("error getting cashflow");
        return {};
      }
    } catch (e) {
      print("error getting cashflow");
      return {};
    }
  }
}