import 'package:flutter/material.dart';

class DetailData extends StatefulWidget {
  const DetailData({
    super.key,
    required this.name,
    required this.nim,
    required this.age,
  });

  final String name, nim, age;

  @override
  State<DetailData> createState() => _DetailDataState();
}

class _DetailDataState extends State<DetailData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Narrr | Detail Data Pribadi"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          height: 250,
          child: Card(
            color: Colors.blue[400],
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Nama :",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      widget.name,
                      style: const TextStyle(fontSize: 25),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "NIM :",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      widget.nim,
                      style: const TextStyle(fontSize: 25),
                    )
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Umur :",
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      widget.age,
                      style: const TextStyle(fontSize: 25),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
