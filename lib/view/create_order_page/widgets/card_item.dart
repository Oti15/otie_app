import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import 'incr_dec_buttom.dart';

class CardItem extends StatefulWidget {
  const CardItem({
    Key? key,
    required this.icon,
    required this.name,
    required this.price,
  }) : super(key: key);

  final String icon;
  final String name;
  final String price;

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    double heightScreen =MediaQuery.of(context).size.height;
    double widthScreen =MediaQuery.of(context).size.width;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      margin: EdgeInsets.only( top: 16),
      height: heightScreen* 0.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade100),
      child: Row(
        children: [
          Image.asset(widget.icon,height: iconSize1,),
          const SizedBox(
            width: 16,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children:  [
              Text(widget.name,
                style: const TextStyle(
                    fontWeight: FontWeight.w500, fontSize: primaryFontSize),
              ),
              Text(
                "${widget.price} IQD",
                style: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: primaryFontSize),
              ),
            ],
          ),
          Spacer(),
          IncDecButtom(
            text: '-',
            onTap: () {
              if (count != 0) {
                count--;
              }
              setState(() {});
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "$count",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          IncDecButtom(
            text: '+',
            onTap: () {
              count++;
              setState(() {});
            },
          ),
        ],
      ),
    );
  }
}
