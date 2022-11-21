import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

import '../../data/data_home_cleaning.dart';
import '../widgets/my_simple_app_bar.dart';
import 'widgets/serves_level.dart';

class HomeCleningp1 extends StatefulWidget {
  const HomeCleningp1({Key? key}) : super(key: key);

  @override
  State<HomeCleningp1> createState() => _HomeCleningp1State();
}

class _HomeCleningp1State extends State<HomeCleningp1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: tr('part_time_cleaner_booking')),
      body: ListView(
        shrinkWrap: false,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
               Padding(
                padding: EdgeInsets.only(left: 24,right: 24, top: 0, bottom: 8),
                child: Text(
                  "Level_of_service".tr(),
                  style: const TextStyle(
                      fontSize: xLargeTitleFontSize,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Bold',
                      color: Colors.black),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 160,
                child: ListView.builder(
                    shrinkWrap: false,
                    //physics: NeverScrollableScrollPhysics(),
                    itemCount: levelName.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ServiceLevel(
                        level: levelName[index],
                        time: minTime[index],
                        price: price1[index],
                      );
                    }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
