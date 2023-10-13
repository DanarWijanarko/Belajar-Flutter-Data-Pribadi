import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tugas2_data_pribadi/components/my_button.dart';
import 'package:tugas2_data_pribadi/components/my_form_input.dart';
import 'package:tugas2_data_pribadi/components/my_text_title.dart';

class InsertData extends StatefulWidget {
  const InsertData({
    super.key,
    required this.onPressed,
    required this.dataName,
    required this.dataNIM,
    required this.dataAge,
    required this.dataNameController,
    required this.dataNIMController,
    required this.dataAgeController,
  });

  final List dataName, dataNIM, dataAge;
  // ignore: prefer_typing_uninitialized_variables
  final dataNameController, dataNIMController, dataAgeController, onPressed;

  @override
  State<InsertData> createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  @override
  Widget build(BuildContext context) {
    return SimpleShadow(
      color: Colors.grey,
      offset: const Offset(3, 5),
      opacity: 0.6,
      sigma: 8,
      child: SizedBox(
        height: 330,
        child: Card(
          margin: const EdgeInsets.all(15),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Column(
            children: [
              const MyTextTitle(title: "Form Input"),
              MyFormInput(
                label: "Masukkan Nama",
                inputController: widget.dataNameController,
              ),
              MyFormInput(
                label: "Masukkan NIM",
                inputController: widget.dataNIMController,
              ),
              MyFormInput(
                label: "Masukkan Umur",
                inputController: widget.dataAgeController,
              ),
              MyButton(onPressed: widget.onPressed),
            ],
          ),
        ),
      ),
    );
  }
}
