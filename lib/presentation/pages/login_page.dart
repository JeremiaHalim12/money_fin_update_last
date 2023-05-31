// import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';
import 'package:money_fin/data/services/google_auth_service.dart';

// import 'main_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // logo
        // welcoming text
          child: ElevatedButton(
              onPressed: () {
                GoogleAuthService.SignInWithGoogle();
              },
              child: const Text("Sign In with Google"))),
    );
  }
}
