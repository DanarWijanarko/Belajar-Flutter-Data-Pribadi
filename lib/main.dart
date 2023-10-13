import 'package:flutter/material.dart';
import 'package:tugas2_data_pribadi/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Data Pribadi',
      home: MyHomePage(),
    );
  }
}
