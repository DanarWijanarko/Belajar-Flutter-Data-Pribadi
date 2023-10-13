import 'package:flutter/material.dart';

class MyTextTitle extends StatefulWidget {
  const MyTextTitle({super.key, required this.title});

  final String title;

  @override
  State<MyTextTitle> createState() => _MyTextTitleState();
}

class _MyTextTitleState extends State<MyTextTitle> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: Text(
        widget.title,
        style: const TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
