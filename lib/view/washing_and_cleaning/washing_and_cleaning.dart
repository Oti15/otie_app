import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/view/washing_and_cleaning/widgets/card_of_washing_and_cleaning.dart';

import '../../model/card_home_cleaning_model.dart';
import '../../utils/constants.dart';

import '../widgets/my_simple_app_bar.dart';
import 'details_washin_cleaning.dart';

class WashingCLeaning extends StatefulWidget {
  const WashingCLeaning({Key? key}) : super(key: key);

  @override
  State<WashingCLeaning> createState() => _WashingCLeaningState();
}

class _WashingCLeaningState extends State<WashingCLeaning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: MySimpleAppBar(title: tr('washing_and_cleaning')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 8, top: 16),
              child: Text(
                "home_cleaning".tr(),
                style: titleTextStyle(),
              ),
            ),
            // SizedBox(
            //   height: MediaQuery.of(context).size.height*0.8,
            //   child: ListView.builder(
            //     itemCount: ListCardHomeCleaning.length,
            //     itemBuilder: (context, index) => CardWashingCleaning(
            //       title: ListCardHomeCleaning[index].title,
            //       icon: ListCardHomeCleaning[index].icon,
            //       detailsPage: ListCardHomeCleaning[index].detailsPage,
            //     ),
            //   ),
            // ),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: ListCardHomeCleaning.length,
                itemBuilder: (context, index) => CardWashingCleaning(
                  title: ListCardHomeCleaning[index].title,
                  icon: ListCardHomeCleaning[index].icon,
                  detailsPage: DetailsWashinCleaning(
                    icon: ListCardHomeCleaning[index].icon,
                    title: ListCardHomeCleaning[index].title,
                    price: ListCardHomeCleaning[index].price,
                    showDropDown: ListCardHomeCleaning[index].showDropDown,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
