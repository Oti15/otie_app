import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/utils/total_price.dart';

import '../../utils/constants.dart';


AppBar MySimpleAppBar({required String title,}){
  return AppBar(
    toolbarHeight: 100,
    elevation: 0,
    backgroundColor: primaryBgColor,
    centerTitle: true,
    actions: const [
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
          onPressed: (){
            Get.back();
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