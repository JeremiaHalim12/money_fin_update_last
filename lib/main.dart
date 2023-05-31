import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:money_fin/presentation/pages/login_page.dart';
import 'package:money_fin/presentation/pages/main_page.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StreamBuilder<User?>(
          stream: FirebaseAuth.instance.authStateChanges(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            if (snapshot.connectionState == ConnectionState.active) {
              if (snapshot.data == null) {
                return const LoginPage();
              } else {
                return MainPage(
                  title: FirebaseAuth.instance.currentUser!.displayName!,
                  uid: FirebaseAuth.instance.currentUser!.uid,
                );
              }
            }
            return const CircularProgressIndicator();
          }),
          debugShowCheckedModeBanner: false,
    );
  }
}
