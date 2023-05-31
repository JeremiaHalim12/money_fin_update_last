import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

class GoogleAuthService {
  static Future<UserCredential?> SignInWithGoogle() async {
    GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth?.accessToken, idToken: googleAuth?.idToken);

    UserCredential userCredential =
        await FirebaseAuth.instance.signInWithCredential(credential);

    CollectionReference users = FirebaseFirestore.instance.collection("user");
    await users.doc(userCredential.user!.uid).set({
      'name': userCredential.user?.displayName,
      'email': userCredential.user!.email
    });

    print(userCredential.user?.displayName);
    print(userCredential.user!.uid);

    return userCredential;
  }
}
