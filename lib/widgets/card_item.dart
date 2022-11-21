import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:otie_app/data/data_home_cleaning.dart';

import '../utils/constants.dart';
import '../utils/total_price.dart';
import 'incr_dec_buttom.dart';

class CardItem extends StatefulWidget {
  const CardItem({
    Key? key,
    required this.icon,
    required this.title,
    required this.price,
    this.meter,
    this.hasMeter=false
  }) : super(key: key, );

  final String icon;
  final String title;
  final String price;
  final String? meter;
  final bool hasMeter ;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  RxInt count = 0.obs;
  int subTotalPrice=0;

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 16),
      height: heightScreen * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: grayColor2
        ),),
      child: Row(
        children: [
          Image.asset(
            widget.icon,
            height: iconSize1,
          ),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: primaryFontSize),
              ),widget.hasMeter?
              Text(
                "${widget.price} ${tr("currency")} ${widget.meter}",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: smallFontSize),
              ): Text("${widget.price} ${tr("currency")}",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: smallFontSize),
              ),
            ],
          ),
          Spacer(),
          IncDecButtom(
            icon: 'assets/icons/minus.svg',
            onTap: () {
              if (count.value != 0) {
                count.value--;
                totalPrice.value =totalPrice.value-(int.parse(widget.price));
                totalItem.value -= 1;
                print(totalPrice.value);
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child:Obx (()=> Text(
              "${count.value}",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            )),
          ),
          IncDecButtom(
            icon: 'assets/icons/plus.svg',
            onTap: () {
              count.value++;
              totalPrice.value =totalPrice.value+(int.parse(widget.price));
              totalItem.value += 1;
              print(totalPrice.value);
            },
          ),

        ],

      ),
    );

  }
}
