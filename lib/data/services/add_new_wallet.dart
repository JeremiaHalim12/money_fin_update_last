import 'package:cloud_firestore/cloud_firestore.dart';

class AddNewWallet {
  // final String uid;
  // final String newWallet;
  // final String description;
  // final int amount;

  // AddNewWallet(this.uid, this.newWallet, this.description, this.amount);

  Future<void> NewWalletFunction(
      String uid, String newWallet, String description, int amount) async {
    DocumentReference wallet =
        FirebaseFirestore.instance.collection("user").doc(uid);
    CollectionReference userWallet = wallet.collection(newWallet);

    userWallet.add({'description': description, 'amount': amount});
  }
}
