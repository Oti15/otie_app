import 'package:flutter/material.dart';

const List<String> list = <String>['1', '2', '3', '4', '5'];

class MyDropdownButton extends StatefulWidget {

  MyDropdownButton({super.key, });



  @override
  State<MyDropdownButton> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 24,
      padding: EdgeInsets.symmetric(horizontal: 4),
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
              width: 1.0, style: BorderStyle.solid, color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
        ),
      ),
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_drop_down),
        elevation: 16,
        underline: Container(
          height: 0,
        ),
        style:
            const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        onChanged: (String? value) {
          setState(() {
            dropdownValue = value!;
          });
        },
        items: list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
