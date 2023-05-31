// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:money_fin/data/services/add_new_wallet.dart';

class NewWalletPage extends StatelessWidget {
  final String uid;
  NewWalletPage({super.key, required this.uid});
  TextEditingController amountController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController walletNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add New Wallet"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: walletNameController,
            ),
            TextField(
              controller: amountController,
            ),
            TextField(
              controller: descriptionController,
            ),
            ElevatedButton(
                onPressed: () {
                  AddNewWallet().NewWalletFunction(
                      uid,
                      walletNameController.text,
                      descriptionController.text,
                      int.parse(amountController.text));
                },
                child: const Text("+"))
          ],
        ),
      ),
    );
  }
}
