import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:otie_app/utils/constants.dart';

class IncDecButtom extends StatelessWidget {
  IncDecButtom({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
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
          child: Center(child: Text(text,style: const TextStyle(color: Colors.white,fontSize: 28),)),

      ),
    );
  }
}
