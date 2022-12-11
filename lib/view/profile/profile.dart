import 'dart:convert';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../utils/constants.dart';
import '../widgets/my_simple_app_bar.dart';
import 'widgets/info_box.dart';
import 'widgets/option.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: tr('account')),
      body:Obx(() =>  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // TextButton(onPressed: (){getUserDetails();}, child: Text("Get details user")),
          InfoBox(
            title1: tr('name'),
            title2: name.value.toString(),
          ),
          const SizedBox(height: 10),
          InfoBox(
            title1: tr('phone_number'),
            title2: phoneNumberl.value.toString(),
          ),
          SizedBox(height: 20),
          Option(x: true),
          SizedBox(height: 20),
          Option(x: false),
        ],
      ),
    ));
  }


}
