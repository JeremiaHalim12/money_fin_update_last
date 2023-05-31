import 'package:cloud_firestore/cloud_firestore.dart';

class GetWalletData {
  // Future<List<Map<String, dynamic>>> getWalletCollectionData(String uid) async {
  //   FirebaseFirestore firestore = FirebaseFirestore.instance;

  //   DocumentReference wallet =
  //       FirebaseFirestore.instance.collection("user").doc(uid);
  //   QuerySnapshot querySnapshot = (await wallet.get()) as QuerySnapshot<Object?>;

  //   List<Map<String, dynamic>> data = [];

  //   querySnapshot.docs.forEach((doc) {
  //     data.add(doc.data() as Map<String, dynamic>);
  //   });

  //   return data;
  // }
  // FirebaseFirestore firestore = FirebaseFirestore.instance;
  // Future<String> getWalletData(String uid) async {
  //   DocumentReference wallet =
  //       FirebaseFirestore.instance.collection("user").doc(uid);
  //   CollectionReference userWallet = wallet.collection('');

  //   String collectionName = userWallet.id;

  //   return collectionName;
  // }
  Future<List<String>> getAllSubcollections(String uid) async {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    List<String> subcollectionNames = [];

    DocumentSnapshot documentSnapshot = await firestore.doc(uid).get();
    Map<String, dynamic>? data = documentSnapshot.data() as Map<String, dynamic>?;

    if (data != null) {
      for (String key in data.keys) {
        if (data[key] is CollectionReference) {
          subcollectionNames.add(key);
        }
      }
    }

    return subcollectionNames;
  }
}
