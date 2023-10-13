import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:tugas2_data_pribadi/pages/detail_data.dart';

class MyListData extends StatefulWidget {
  const MyListData({
    super.key,
    required this.dataName,
    required this.dataNIM,
    required this.dataAge,
  });

  // ignore: prefer_typing_uninitialized_variables
  final dataName, dataNIM, dataAge;

  @override
  State<MyListData> createState() => _MyListDataState();
}

class _MyListDataState extends State<MyListData> {
  void deleteData(int index) {
    setState(() {
      widget.dataName.removeAt(index);
      widget.dataNIM.removeAt(index);
      widget.dataAge.removeAt(index);
    });
  }

  void navigateToDetail(int index) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailData(
          name: widget.dataName[index],
          nim: widget.dataNIM[index],
          age: widget.dataAge[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: widget.dataName.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 15,
            ),
            child: SimpleShadow(
              color: const Color.fromARGB(255, 179, 179, 179),
              opacity: 0.4,
              offset: const Offset(3, 3),
              sigma: 6,
              child: Card(
                elevation: 3,
                shadowColor: const Color.fromARGB(255, 179, 179, 179),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                color: Colors.white,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  child: ListTile(
                    onTap: () {
                      navigateToDetail(index);
                    },
                    title: Text(
                      widget.dataName[index],
                      style: const TextStyle(
                        letterSpacing: 1,
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    trailing: SizedBox(
                      width: 35,
                      height: 35,
                      child: ElevatedButton(
                        onPressed: () {
                          deleteData(index);
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: const EdgeInsets.only(left: 0),
                          shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                          ),
                        ),
                        child: const Icon(
                          size: 25,
                          Icons.delete,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
