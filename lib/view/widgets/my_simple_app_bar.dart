import 'package:flutter/material.dart';

import '../../utils/constants.dart';


AppBar MySimpleAppBar({required String title}){
  return AppBar(
    toolbarHeight: 100,
    elevation: 0,
    backgroundColor: primaryBgColor,
    centerTitle: true,
    actions: [
      SizedBox(
        width: 55,
      ),
    ],
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            size: iconSize2,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        );
      },
    ),
    title:  Text(
      title,
      style: const TextStyle(
          fontSize: xLargeTitleFontSize,
          fontWeight: FontWeight.bold,
          fontFamily: 'Bold',
          color: Colors.black),
    ),
  );
}