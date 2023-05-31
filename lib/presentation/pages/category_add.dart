// import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:money_fin/data/services/add_category_service.dart';
import 'package:money_fin/data/services/get_category_service.dart';


class AddCategoryPage extends StatelessWidget {
  AddCategoryPage({super.key});
  final TextEditingController categoryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category"),
      ),
      body: Center(
          child: Column(
        children: [
          TextField(
            controller: categoryController,
          ),
          // ElevatedButton(
          //     onPressed: () {
          //       AddCategory().categorySave(categoryController.text);
          //     },
          //     child: const Text("Add Category"))

          // FutureBuilder<Pengguna?>(
          //     future: Pengguna.getPengguna('jerryhalim@gmail.com'),
          //     builder: (context, snapshot) {
          //       if (snapshot.hasData) {
          //         Pengguna? pengguna = snapshot.data;
          //         return Text(pengguna!.tabungan);
          //       } else if (snapshot.hasError) {
          //         return const Text("error get tabungan");
          //       } else {
          //         return Container();
          //       }
          //     },
          //   ),
        ],
      )),
    );
  }
}
