import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCardIconProfile extends StatelessWidget {
  IconData icon;
  String title;

  MyCardIconProfile({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 56,
          width: 56,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey.withOpacity(0.1),
          ),
          child: Icon(
            icon,
            size: 28,
          ),
        ),
        Text(title,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),)
      ],
    );
  }
}