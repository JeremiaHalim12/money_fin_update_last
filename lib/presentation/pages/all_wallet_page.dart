// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:money_fin/data/services/get_wallet_data.dart';

class AllWalletPage extends StatelessWidget {
  final String uid;
  AllWalletPage({super.key, required this.uid});
  GetWalletData getWalletData = GetWalletData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("All Wallet"),
      ),
      body: Center(
          child: Column(
        children: [Text('${GetWalletData().getAllSubcollections(uid)}')],
      )),
    );
  }
}
