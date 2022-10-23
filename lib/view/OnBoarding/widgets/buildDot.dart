import 'package:flutter/cupertino.dart';

class BuildDot extends StatelessWidget {
  const BuildDot({
    Key? key,
    required this.currentIndex,
    required this.index,
    required this.context,
  }) : super(key: key);

  final int currentIndex;
  final int index;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 10,
      width:  10,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          //color:  currentIndex == index ? Color(0XFFF05A25): Color(0XFFE2E0DF),
          gradient:  LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              currentIndex == index ? Color(0xffB5428C):Color(0xffE2E0DF),
              currentIndex == index ? Color(0xffFF7500):Color(0xffE2E0DF),
            ],
          )
      ),
    );
  }
}
