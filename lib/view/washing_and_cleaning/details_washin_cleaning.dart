import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../utils/constants.dart';
import '../../widgets/card_item.dart';
import '../../widgets/dropdown.dart';
import '../../utils/total_price.dart';
import '../widgets/my_buttom.dart';
import '../widgets/my_simple_app_bar.dart';

class DetailsWashinCleaning extends StatefulWidget {
  const DetailsWashinCleaning(
      {Key? key,
      required this.icon,
      required this.title,
      required this.price,
      required this.showDropDown})
      : super(key: key);
  final String icon;
  final String title;
  final String price;
  final bool showDropDown;

  @override
  State<DetailsWashinCleaning> createState() => _DetailsWashinCleaningState();
}

class _DetailsWashinCleaningState extends State<DetailsWashinCleaning> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryBgColor,
      appBar: MySimpleAppBar(title: tr('washing_and_cleaning')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            Row(
              //I used Row to align the text in the left!!
              children: [
                Text(
                  widget.title,
                  style: titleTextStyle(),
                ),
              ],
            ),
            CardItem(
              icon: widget.icon,
              title: widget.title,
              price: widget.price,
              meter: "/Meter",
            ),
            widget.showDropDown
                ? Padding(
                    padding: const EdgeInsets.only(top: 16.0, left: 8),
                    child: Row(
                      children: [
                         Text(
                          "mensuration".tr(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        MyDropdownButton(),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            "X",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        MyDropdownButton(),
                      ],
                    ),
                  )
                : Container(),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(
                  left: 8.0, right: 8, top: 0, bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                   Text(
                    "total_price".tr(),
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: xLargeTitleFontSize),
                  ),
                  Obx (()=>Text(
                    "${totalPrice.value} ${tr("currency")} ",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: xLargeTitleFontSize),
                  )),
                ],
              ),
            ),
            MyButtom(
                text: "add_to_cart".tr(),
                onPressed: () {},
                color: primaryColor,
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.8),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
