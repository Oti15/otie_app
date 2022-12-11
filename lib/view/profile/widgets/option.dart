import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../services/api_services.dart';
import '../../../utils/constants.dart';
import '../../auth/sign_in.dart';
import '../edit_profile.dart';

class Option extends StatelessWidget {
  const Option({Key? key, required this.x}) : super(key: key);
  final bool x;

  @override
  Widget build(BuildContext context) {
    if ((x == true)) {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.14,
          width: MediaQuery.of(context).size.width - 80,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ProfileInkWell(
                icon: Icons.edit_outlined,
                text: tr('edit_account'),
                iconColor: Colors.grey,
                textColor: Colors.black,
                ontap: () {
                  Get.to(EditProfile());
                },
              ),
              Container(
                height: 1,
                width: MediaQuery.of(context).size.width - 60,
                color: Colors.grey.withOpacity(0.3),
              ),
              ProfileInkWell(
                icon: Icons.delete_outline,
                text: tr('delet_account'),
                iconColor: Colors.grey,
                textColor: Colors.black,
                ontap: () {
                },
              ),
            ],
          ),
        ),
      );
    } else {
      return Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          height: MediaQuery.of(context).size.height * 0.07,
          width: MediaQuery.of(context).size.width - 80,
          decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.15),
              borderRadius: BorderRadius.circular(25)),
          child: ProfileInkWell(
            icon: Icons.logout,
            text: tr('sign_out'),
            iconColor: Colors.red,
            textColor: Colors.red,
            ontap: () {
              Get.offAll(SignIn());
              Token = ("No Token Exist");
            },
          ),
        ),
      );
    }
  }
}

class ProfileInkWell extends StatelessWidget {
  String text;
  IconData icon;
  Color iconColor;
  Color textColor;
  void Function()? ontap;

  ProfileInkWell({
    required this.icon,
    required this.text,
    required this.iconColor,
    required this.textColor,
    required this.ontap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: iconColor,
            size: 35,
          ),
          const SizedBox(
            width: 16,
          ),
          Text(text,
              style: TextStyle(
                  fontSize: primaryFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                  color: textColor)),
        ],
      ),
    );
  }
}


