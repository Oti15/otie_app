import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../utils/constants.dart';

class DotsOfPageView extends StatelessWidget {
  int count;
  var controller;
  DotsOfPageView({
    Key? key,
    required this.count,
    required this.controller

  }) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 30,
      bottom: 65,
      child: SmoothPageIndicator(
        axisDirection: Axis.vertical,
        controller: controller,
        count: count,
        effect:  WormEffect(
            dotColor: primaryColor,
            activeDotColor: Colors.white),
        onDotClicked: (index) => controller.animateToPage(index,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeIn),
      ),
    );
  }
}
