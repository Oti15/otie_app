import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../utils/constants.dart';

class CardOrderReview extends StatefulWidget {
  const CardOrderReview({
    Key? key,
    required this.icon,
    required this.name,
    required this.price,
    required this.des,
  }) : super(key: key);

  final String icon;
  final String name;
  final String price;
  final String des;

  @override
  State<CardOrderReview> createState() => _CardOrderReviewState();
}

class _CardOrderReviewState extends State<CardOrderReview> {

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      margin: const EdgeInsets.only(top: 16),
      height: heightScreen * 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: primaryBgColor),
      child: Row(
        children: [
          Image.asset(widget.icon,height: iconSize1,),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: primaryFontSize),
              ),
              const SizedBox(
                height: 4,
              ),
              Text(
                "${widget.des} ",
                style: const TextStyle(
                    fontWeight: FontWeight.normal, fontSize: xSmallFontSize,color:Colors.grey),
              ),
            ],
          ),
          Spacer(),
          Text(
            "${widget.price} ",
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: smallFontSize,color: primaryColor),
          ),
        ],
      ),
    );
  }
}
