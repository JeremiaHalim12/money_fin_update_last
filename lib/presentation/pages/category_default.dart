import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../data/services/get_category_service.dart';

class CategoryDefaultPage extends StatefulWidget {
  const CategoryDefaultPage({super.key});

  @override
  State<CategoryDefaultPage> createState() => _CategoryDefaultPageState();
}

class _CategoryDefaultPageState extends State<CategoryDefaultPage> {
  final GetCategoryService getCategoryService = GetCategoryService();
  List<Map<String, dynamic>> data = [];

  @override
  void initState() {
    super.initState();
    getDataCategoryFromFirebase();
  }

  Future<void> getDataCategoryFromFirebase() async {
    List<Map<String, dynamic>> fetchedData =
        await getCategoryService.getCategoryCollectionData();
    setState(() {
      data = fetchedData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Category Default"),
      ),
      body: Align(
        alignment: Alignment.topRight,
        child: PopupMenuButton(itemBuilder: (context) => [
          for (int i = 0; i < data.length; i++)
            PopupMenuItem(child: Text(data[i]['name'])),
          // PopupMenuItem(child: Text(data[0]['name'])),
          // PopupMenuItem(child: Text(data[1]['name'])),
          // PopupMenuItem(child: Text(data[2]['name'])),
          // PopupMenuItem(child: Text(data[3]['name'])),
          // PopupMenuItem(child: Text(data[4]['name'])),
          // PopupMenuItem(child: Text(data[5]['name'])),
          // PopupMenuItem(child: Text(data[6]['name'])),
          // PopupMenuItem(child: Text(data[7]['name'])),
        ]),
      ),
      // body: ListView.builder(
      //   itemCount: data.length,
      //   itemBuilder: (BuildContext context, int index) {
      //     // return ListTile(
      //     //   title: Text(data[index]['name']),
      //     // );
      //     return PopupMenuButton(itemBuilder: (context) => [
      //       PopupMenuItem(child: Text(data[index]['name'])),
      //     ]);
      //   }),
    );
  }
}
