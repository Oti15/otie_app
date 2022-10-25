import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtom extends StatelessWidget {
  MyButtom({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.color,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String text;
  final Color color;
  final double height;
  final double width;
  var onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: color, shape: StadiumBorder()),
        onPressed: onPressed,
        child: Center(child: Text(text)),
      ),
    );
  }
}
