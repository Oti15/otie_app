import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:otie_app/utils/constants.dart';

class IncDecButtom extends StatelessWidget {
  IncDecButtom({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final String icon;
   var onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
      child: Container(
        width: 32,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
              color: primaryColor
        ),
          child: Center(child: SvgPicture.asset(icon,height: 16,color: Colors.white,)),

      ),
    );
  }
}
