
import 'package:flutter/material.dart';
import 'package:tugas_minggu5/home_page.dart';
import 'package:tugas_minggu5/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/item': (context) => const ItemPage(),
      },
    ),
  );
}
