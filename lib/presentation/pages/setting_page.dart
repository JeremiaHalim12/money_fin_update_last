// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:googleapis/admob/v1.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting"),
      ),
      body: const Center(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.brightness_4_rounded),
              title: Text("Change Theme"),
            ),
            ListTile(
              leading: Icon(Icons.article_rounded),
              title: Text("Extra"),
            ),
            ListTile(
              leading: Icon(Icons.delete_forever_rounded),
              title: Text("Delete all data"),
            )
          ],
        ),
      ),
    );
  }
}
