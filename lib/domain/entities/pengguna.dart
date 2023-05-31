// import 'package:flutter/material.dart';
import 'package:money_fin/data/services/firestore_user_service.dart';

class Pengguna {
  final String tabungan;

  const Pengguna({required this.tabungan});

  factory Pengguna.fromJson(Map<String, dynamic> json) =>
      Pengguna(tabungan: json['tabungan']);

  static Future<Pengguna?> getPengguna(String email) async {
    Map<String, dynamic> data = await PenggunaService().getUser(email);

    if (data.isNotEmpty) {
      return Pengguna.fromJson(data);
    }

    return null;
  }
}
