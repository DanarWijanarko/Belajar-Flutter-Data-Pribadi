import 'package:flutter/material.dart';

class MyFormInput extends StatefulWidget {
  const MyFormInput(
      {super.key, required this.label, required this.inputController});

  final String label;
  // ignore: prefer_typing_uninitialized_variables
  final inputController;

  @override
  State<MyFormInput> createState() => _MyFormInputState();
}

class _MyFormInputState extends State<MyFormInput> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15, right: 15),
      child: TextField(
        controller: widget.inputController,
        obscureText: false,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide:
                BorderSide(color: Color.fromARGB(255, 0, 153, 255), width: 2.0),
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
          ),
          labelText: widget.label,
        ),
      ),
    );
  }
}
