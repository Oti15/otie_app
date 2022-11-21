import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/view/home_clening/view4.dart';
import 'package:otie_app/view/home_clening/widgets/check2.dart';

import '../../data/data_home_cleaning.dart';
import '../../utils/constants.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';

class HomeCleningp3 extends StatefulWidget {
  const HomeCleningp3({Key? key}) : super(key: key);

  @override
  State<HomeCleningp3> createState() => _HomeCleningp3State();
}

class _HomeCleningp3State extends State<HomeCleningp3> {
  String choose = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MySimpleAppBar(title: tr('part_time_cleaner_booking')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Padding(
            padding: EdgeInsets.only(left: 20,right: 20, top: 10),
            child: Text(
             tr("how_many_hours_would_you_like_to_book"),
              style: const TextStyle(
                  fontSize: xLargeTitleFontSize,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Bold',
                  color: Colors.black),
            ),
          ),
          Expanded(
            flex: cleanerNum.length+2,
            child: ListView.builder(
                shrinkWrap: false,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: hours.length,
                itemBuilder: (BuildContext context, int index) {
                  return check2(
                    hours: hours[index],
                    value: valueP2[index],
                    onChanged: (value) {
                      setState(() {
                        choose = "$value";
                        print("${value}");
                      });
                    },
                    groupValue: choose,
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Center(
              child: Stack(
                children: [
                  Container(
                    width: 200,
                    height: 7,
                    decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.circular(5)),
                  ),
                  Container(
                    width: 100,
                    height: 7,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(3.5)),
                  )
                ],
              ),
            ),
          ),
          Center(
            child: MyButtom(
              text: tr('next'),
              height: MediaQuery.of(context).size.height * 0.07,
              width: MediaQuery.of(context).size.width * 0.8,
              color: primaryColor,
              onPressed: () {
                Get.to(HomeCleningp4());
              },
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.05,
          ),
        ],
      ),
    );
  }
}
