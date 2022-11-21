import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:otie_app/view/home_clening/view3.dart';

import '../../data/data_home_cleaning.dart';
import '../../utils/constants.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';
import 'widgets/check.dart';

class HomeCleningp2 extends StatefulWidget {
  const HomeCleningp2({Key? key}) : super(key: key);

  @override
  State<HomeCleningp2> createState() => _HomeCleningp2State();
}

class _HomeCleningp2State extends State<HomeCleningp2> {
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
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: Text(
                tr("how_many_cleaning_specialists_do_you_need"),
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
                  itemCount: cleanerNum.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MyRadioListTile(
                      cleanerNum: cleanerNum[index],
                      price: price[index],
                      value: value[index],
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
                      width: 50,
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
                        Get.to(HomeCleningp3());
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
