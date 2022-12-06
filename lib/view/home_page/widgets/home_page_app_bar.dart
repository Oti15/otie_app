import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../utils/constants.dart';
import '../../profile/edit_profile.dart';
import '../../profile/profile.dart';

AppBar HomePageAppBar() {
  return AppBar(
    elevation: 0,
    toolbarHeight: 80,
    backgroundColor: Colors.white,
    actions: [
      Builder(
        builder: (BuildContext context) {
          return IconButton(
            highlightColor: Colors.white,
            icon: const Icon(
              Icons.notifications_none_outlined,
              size: iconSize1,
              color: Colors.black,
            ),
            onPressed: () {

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
          highlightColor: Colors.white,
          icon: const Icon(
            Icons.account_circle_outlined,
            size: iconSize1,
            color: Colors.black,
          ),
          onPressed: () {
            Get.to(const Profile());},
        );
      },
    ),
    title: const Center(
      child: Text(
        "OTIE  أوتي",
        style: TextStyle(
            fontSize: xLargeTitleFontSize,
            fontWeight: FontWeight.bold,
            fontFamily: 'Bold',
            color: Colors.black),
      ),
    ),
  );
}
