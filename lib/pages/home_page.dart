import 'package:flutter/material.dart';
import 'package:tugas2_data_pribadi/components/insert_data.dart';
import 'package:tugas2_data_pribadi/components/my_list_data.dart';
import 'package:tugas2_data_pribadi/components/my_text_title.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> dataName = <String>[];
  List<String> dataNIM = <String>[];
  List<String> dataAge = <String>[];

  final dataNameController = TextEditingController();
  final dataNIMController = TextEditingController();
  final dataAgeController = TextEditingController();

  void addData(String dataName, String dataNIM, String dataAge) {
    setState(() {
      // Add Data
      this.dataName.add(dataName);
      this.dataNIM.add(dataNIM);
      this.dataAge.add(dataAge);
      // Clear Form Input
      dataNameController.clear();
      dataNIMController.clear();
      dataAgeController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Narrr | Form Data Pribadi"),
      ),
      body: Column(
        children: [
          // Input Start
          InsertData(
            onPressed: () {
              addData(
                dataNameController.text,
                dataNIMController.text,
                dataAgeController.text,
              );
            },
            dataName: dataName,
            dataNIM: dataNIM,
            dataAge: dataAge,
            dataNameController: dataNameController,
            dataNIMController: dataNIMController,
            dataAgeController: dataAgeController,
          ),
          // Input End
          const MyTextTitle(title: "List Data Pribadi"),
          // List Data Start
          MyListData(
            dataName: dataName,
            dataNIM: dataNIM,
            dataAge: dataAge,
          ),
          // List Data End
        ],
      ),
    );
  }
}
