import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/utils/constants.dart';

class CardWashingCleaning extends StatelessWidget {
  CardWashingCleaning(
      {Key? key,
      required this.title,
      required this.icon,
      required this.detailsPage})
      : super(key: key);

  final String title;
  final String icon;
  var detailsPage;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
        child: Container(
      margin: const EdgeInsets.only(top: 10),
      height: heightScreen * 0.1,
      width: widthScreen - 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: grayColor2),
      ),
      child: InkWell(
        onTap: () {
          Get.to(detailsPage);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: [
              Image.asset(
                icon,
                height: iconSize1,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                title,
                style: titleTextStyle(),
              ),
              const Spacer(),
              const Icon(Icons.arrow_forward_ios_outlined)
            ],
          ),
        ),
      ),
    ));
  }
}
