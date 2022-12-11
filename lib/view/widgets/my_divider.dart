import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';

class MyDivider extends StatelessWidget {
  Color color;
  double height;
  double width;

  MyDivider({
    Key? key,
    required this.color,
    required this.height,
    required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
    );
  }
  static Container listOfDivider() {
    return Container(
      height: 3,
      width: 240,
      child: ListView.separated(
        reverse: true,
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (BuildContext context, int index) =>
            MyDivider(
              height: 2,
              width: 14,
              color: index == 0 ? primaryColor : Colors.grey,
            ),
        separatorBuilder:
            (BuildContext context, int index) => SizedBox(
          width: 4,
        ),
      ),
    );
  }
}