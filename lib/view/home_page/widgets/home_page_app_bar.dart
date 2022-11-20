import 'package:flutter/material.dart';

import '../../../utils/constants.dart';



AppBar HomePageAppBar(){
  return AppBar(
    elevation: 0,
    toolbarHeight: 80,
    backgroundColor: Colors.white,
    actions: [
      Builder(
        builder: (BuildContext context) {
          return IconButton(
            highlightColor:Colors.white,
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: iconSize1,
              color: Colors.black,

            ),
            onPressed: () {
              //Navegate to notification page
            },
          );
        },
      ),
      const SizedBox(
        width: 5,
      ),
    ],
    leading: Builder(
      builder: (BuildContext context) {
        return IconButton(
          highlightColor:Colors.white,
          icon: const Icon(
            Icons.account_circle_outlined,
            size: iconSize1,
            color: Colors.black,
          ),
          onPressed: () {
            //Navegate to profile page
          },
        );
      },
    ),
    title: const Center(
      child: Text(
        "OTIE  أوتي",
        style: TextStyle(
            height: 3,
            fontSize: xLargeTitleFontSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bold',
            color: Colors.black),
      ),
    ),
  );
}